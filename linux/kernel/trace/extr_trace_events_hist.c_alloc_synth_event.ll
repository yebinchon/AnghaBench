; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_alloc_synth_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_alloc_synth_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synth_event = type { i32, %struct.synth_field**, i32, i32 }
%struct.synth_field = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@synth_event_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.synth_event* (i8*, i32, %struct.synth_field**)* @alloc_synth_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.synth_event* @alloc_synth_event(i8* %0, i32 %1, %struct.synth_field** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.synth_field**, align 8
  %7 = alloca %struct.synth_event*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.synth_field** %2, %struct.synth_field*** %6, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.synth_event* @kzalloc(i32 24, i32 %9)
  store %struct.synth_event* %10, %struct.synth_event** %7, align 8
  %11 = load %struct.synth_event*, %struct.synth_event** %7, align 8
  %12 = icmp ne %struct.synth_event* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.synth_event* @ERR_PTR(i32 %15)
  store %struct.synth_event* %16, %struct.synth_event** %7, align 8
  br label %76

17:                                               ; preds = %3
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @kstrdup(i8* %18, i32 %19)
  %21 = load %struct.synth_event*, %struct.synth_event** %7, align 8
  %22 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.synth_event*, %struct.synth_event** %7, align 8
  %24 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load %struct.synth_event*, %struct.synth_event** %7, align 8
  %29 = call i32 @kfree(%struct.synth_event* %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.synth_event* @ERR_PTR(i32 %31)
  store %struct.synth_event* %32, %struct.synth_event** %7, align 8
  br label %76

33:                                               ; preds = %17
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.synth_field** @kcalloc(i32 %34, i32 8, i32 %35)
  %37 = load %struct.synth_event*, %struct.synth_event** %7, align 8
  %38 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %37, i32 0, i32 1
  store %struct.synth_field** %36, %struct.synth_field*** %38, align 8
  %39 = load %struct.synth_event*, %struct.synth_event** %7, align 8
  %40 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %39, i32 0, i32 1
  %41 = load %struct.synth_field**, %struct.synth_field*** %40, align 8
  %42 = icmp ne %struct.synth_field** %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %33
  %44 = load %struct.synth_event*, %struct.synth_event** %7, align 8
  %45 = call i32 @free_synth_event(%struct.synth_event* %44)
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.synth_event* @ERR_PTR(i32 %47)
  store %struct.synth_event* %48, %struct.synth_event** %7, align 8
  br label %76

49:                                               ; preds = %33
  %50 = load %struct.synth_event*, %struct.synth_event** %7, align 8
  %51 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %50, i32 0, i32 2
  %52 = call i32 @dyn_event_init(i32* %51, i32* @synth_event_ops)
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %69, %49
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %53
  %58 = load %struct.synth_field**, %struct.synth_field*** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.synth_field*, %struct.synth_field** %58, i64 %60
  %62 = load %struct.synth_field*, %struct.synth_field** %61, align 8
  %63 = load %struct.synth_event*, %struct.synth_event** %7, align 8
  %64 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %63, i32 0, i32 1
  %65 = load %struct.synth_field**, %struct.synth_field*** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.synth_field*, %struct.synth_field** %65, i64 %67
  store %struct.synth_field* %62, %struct.synth_field** %68, align 8
  br label %69

69:                                               ; preds = %57
  %70 = load i32, i32* %8, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %53

72:                                               ; preds = %53
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.synth_event*, %struct.synth_event** %7, align 8
  %75 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %72, %43, %27, %13
  %77 = load %struct.synth_event*, %struct.synth_event** %7, align 8
  ret %struct.synth_event* %77
}

declare dso_local %struct.synth_event* @kzalloc(i32, i32) #1

declare dso_local %struct.synth_event* @ERR_PTR(i32) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(%struct.synth_event*) #1

declare dso_local %struct.synth_field** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @free_synth_event(%struct.synth_event*) #1

declare dso_local i32 @dyn_event_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
