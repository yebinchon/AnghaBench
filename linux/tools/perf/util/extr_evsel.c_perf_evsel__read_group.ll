; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__read_group.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__read_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { %struct.TYPE_4__, %struct.perf_stat_evsel* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.perf_stat_evsel = type { i32* }

@PERF_FORMAT_ID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, i32, i32)* @perf_evsel__read_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__read_group(%struct.evsel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_stat_evsel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.evsel* %0, %struct.evsel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.evsel*, %struct.evsel** %5, align 8
  %13 = getelementptr inbounds %struct.evsel, %struct.evsel* %12, i32 0, i32 1
  %14 = load %struct.perf_stat_evsel*, %struct.perf_stat_evsel** %13, align 8
  store %struct.perf_stat_evsel* %14, %struct.perf_stat_evsel** %8, align 8
  %15 = load %struct.evsel*, %struct.evsel** %5, align 8
  %16 = getelementptr inbounds %struct.evsel, %struct.evsel* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.evsel*, %struct.evsel** %5, align 8
  %21 = getelementptr inbounds %struct.evsel, %struct.evsel* %20, i32 0, i32 0
  %22 = call i32 @perf_evsel__read_size(%struct.TYPE_4__* %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.perf_stat_evsel*, %struct.perf_stat_evsel** %8, align 8
  %24 = getelementptr inbounds %struct.perf_stat_evsel, %struct.perf_stat_evsel* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %11, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @PERF_FORMAT_ID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %82

33:                                               ; preds = %3
  %34 = load %struct.evsel*, %struct.evsel** %5, align 8
  %35 = call i32 @perf_evsel__is_group_leader(%struct.evsel* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %82

40:                                               ; preds = %33
  %41 = load i32*, i32** %11, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  %45 = call i32* @zalloc(i32 %44)
  store i32* %45, i32** %11, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %82

51:                                               ; preds = %43
  %52 = load i32*, i32** %11, align 8
  %53 = load %struct.perf_stat_evsel*, %struct.perf_stat_evsel** %8, align 8
  %54 = getelementptr inbounds %struct.perf_stat_evsel, %struct.perf_stat_evsel* %53, i32 0, i32 0
  store i32* %52, i32** %54, align 8
  br label %55

55:                                               ; preds = %51, %40
  %56 = load %struct.evsel*, %struct.evsel** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @FD(%struct.evsel* %56, i32 %57, i32 %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %82

64:                                               ; preds = %55
  %65 = load %struct.evsel*, %struct.evsel** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @FD(%struct.evsel* %65, i32 %66, i32 %67)
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i64 @readn(i64 %68, i32* %69, i32 %70)
  %72 = icmp sle i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* @errno, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %82

76:                                               ; preds = %64
  %77 = load %struct.evsel*, %struct.evsel** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @perf_evsel__process_group_data(%struct.evsel* %77, i32 %78, i32 %79, i32* %80)
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %76, %73, %61, %48, %37, %30
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @perf_evsel__read_size(%struct.TYPE_4__*) #1

declare dso_local i32 @perf_evsel__is_group_leader(%struct.evsel*) #1

declare dso_local i32* @zalloc(i32) #1

declare dso_local i64 @FD(%struct.evsel*, i32, i32) #1

declare dso_local i64 @readn(i64, i32*, i32) #1

declare dso_local i32 @perf_evsel__process_group_data(%struct.evsel*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
