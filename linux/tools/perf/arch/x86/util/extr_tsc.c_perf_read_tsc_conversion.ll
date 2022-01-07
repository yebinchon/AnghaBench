; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_tsc.c_perf_read_tsc_conversion.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_tsc.c_perf_read_tsc_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_mmap_page = type { i32, i32, i32, i32, i32 }
%struct.perf_tsc_conversion = type { i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"failed to get perf_event_mmap_page lock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_read_tsc_conversion(%struct.perf_event_mmap_page* %0, %struct.perf_tsc_conversion* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event_mmap_page*, align 8
  %5 = alloca %struct.perf_tsc_conversion*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.perf_event_mmap_page* %0, %struct.perf_event_mmap_page** %4, align 8
  store %struct.perf_tsc_conversion* %1, %struct.perf_tsc_conversion** %5, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %2, %51
  %10 = load %struct.perf_event_mmap_page*, %struct.perf_event_mmap_page** %4, align 8
  %11 = getelementptr inbounds %struct.perf_event_mmap_page, %struct.perf_event_mmap_page* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = call i32 (...) @rmb()
  %14 = load %struct.perf_event_mmap_page*, %struct.perf_event_mmap_page** %4, align 8
  %15 = getelementptr inbounds %struct.perf_event_mmap_page, %struct.perf_event_mmap_page* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.perf_tsc_conversion*, %struct.perf_tsc_conversion** %5, align 8
  %18 = getelementptr inbounds %struct.perf_tsc_conversion, %struct.perf_tsc_conversion* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.perf_event_mmap_page*, %struct.perf_event_mmap_page** %4, align 8
  %20 = getelementptr inbounds %struct.perf_event_mmap_page, %struct.perf_event_mmap_page* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.perf_tsc_conversion*, %struct.perf_tsc_conversion** %5, align 8
  %23 = getelementptr inbounds %struct.perf_tsc_conversion, %struct.perf_tsc_conversion* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.perf_event_mmap_page*, %struct.perf_event_mmap_page** %4, align 8
  %25 = getelementptr inbounds %struct.perf_event_mmap_page, %struct.perf_event_mmap_page* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.perf_tsc_conversion*, %struct.perf_tsc_conversion** %5, align 8
  %28 = getelementptr inbounds %struct.perf_tsc_conversion, %struct.perf_tsc_conversion* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.perf_event_mmap_page*, %struct.perf_event_mmap_page** %4, align 8
  %30 = getelementptr inbounds %struct.perf_event_mmap_page, %struct.perf_event_mmap_page* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  %32 = call i32 (...) @rmb()
  %33 = load %struct.perf_event_mmap_page*, %struct.perf_event_mmap_page** %4, align 8
  %34 = getelementptr inbounds %struct.perf_event_mmap_page, %struct.perf_event_mmap_page* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %9
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  br label %52

43:                                               ; preds = %38, %9
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = icmp sgt i32 %45, 10000
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %59

51:                                               ; preds = %43
  br label %9

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @EOPNOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %55, %47
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
