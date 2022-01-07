; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_context_equiv.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_context_equiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_context = type { i64, i64, %struct.perf_event_context*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event_context*, %struct.perf_event_context*)* @context_equiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @context_equiv(%struct.perf_event_context* %0, %struct.perf_event_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event_context*, align 8
  %5 = alloca %struct.perf_event_context*, align 8
  store %struct.perf_event_context* %0, %struct.perf_event_context** %4, align 8
  store %struct.perf_event_context* %1, %struct.perf_event_context** %5, align 8
  %6 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %7 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %6, i32 0, i32 4
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %10 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %9, i32 0, i32 4
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %13 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %18 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %75

22:                                               ; preds = %16
  %23 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %24 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %25 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %24, i32 0, i32 2
  %26 = load %struct.perf_event_context*, %struct.perf_event_context** %25, align 8
  %27 = icmp eq %struct.perf_event_context* %23, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %30 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %33 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %75

37:                                               ; preds = %28, %22
  %38 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %39 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %38, i32 0, i32 2
  %40 = load %struct.perf_event_context*, %struct.perf_event_context** %39, align 8
  %41 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %42 = icmp eq %struct.perf_event_context* %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %45 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %48 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %75

52:                                               ; preds = %43, %37
  %53 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %54 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %53, i32 0, i32 2
  %55 = load %struct.perf_event_context*, %struct.perf_event_context** %54, align 8
  %56 = icmp ne %struct.perf_event_context* %55, null
  br i1 %56, label %57, label %74

57:                                               ; preds = %52
  %58 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %59 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %58, i32 0, i32 2
  %60 = load %struct.perf_event_context*, %struct.perf_event_context** %59, align 8
  %61 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %62 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %61, i32 0, i32 2
  %63 = load %struct.perf_event_context*, %struct.perf_event_context** %62, align 8
  %64 = icmp eq %struct.perf_event_context* %60, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %67 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %70 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %75

74:                                               ; preds = %65, %57, %52
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %73, %51, %36, %21
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
