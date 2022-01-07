; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_or_delete_synth_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_or_delete_synth_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synth_event = type { i32, i64 }

@event_mutex = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @create_or_delete_synth_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_or_delete_synth_event(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.synth_event*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  store %struct.synth_event* null, %struct.synth_event** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 33
  br i1 %16, label %17, label %51

17:                                               ; preds = %2
  %18 = call i32 @mutex_lock(i32* @event_mutex)
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = call %struct.synth_event* @find_synth_event(i8* %20)
  store %struct.synth_event* %21, %struct.synth_event** %7, align 8
  %22 = load %struct.synth_event*, %struct.synth_event** %7, align 8
  %23 = icmp ne %struct.synth_event* %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %17
  %25 = load %struct.synth_event*, %struct.synth_event** %7, align 8
  %26 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %44

32:                                               ; preds = %24
  %33 = load %struct.synth_event*, %struct.synth_event** %7, align 8
  %34 = call i32 @unregister_synth_event(%struct.synth_event* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load %struct.synth_event*, %struct.synth_event** %7, align 8
  %39 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %38, i32 0, i32 0
  %40 = call i32 @dyn_event_remove(i32* %39)
  %41 = load %struct.synth_event*, %struct.synth_event** %7, align 8
  %42 = call i32 @free_synth_event(%struct.synth_event* %41)
  br label %43

43:                                               ; preds = %37, %32
  br label %44

44:                                               ; preds = %43, %29
  br label %48

45:                                               ; preds = %17
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %45, %44
  %49 = call i32 @mutex_unlock(i32* @event_mutex)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %69

51:                                               ; preds = %2
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 %52, 1
  %54 = load i8*, i8** %6, align 8
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  %57 = call i32 @__create_synth_event(i32 %53, i8* %54, i8** %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @ECANCELED, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  br label %67

65:                                               ; preds = %51
  %66 = load i32, i32* %8, align 4
  br label %67

67:                                               ; preds = %65, %62
  %68 = phi i32 [ %64, %62 ], [ %66, %65 ]
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %48
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.synth_event* @find_synth_event(i8*) #1

declare dso_local i32 @unregister_synth_event(%struct.synth_event*) #1

declare dso_local i32 @dyn_event_remove(i32*) #1

declare dso_local i32 @free_synth_event(%struct.synth_event*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__create_synth_event(i32, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
