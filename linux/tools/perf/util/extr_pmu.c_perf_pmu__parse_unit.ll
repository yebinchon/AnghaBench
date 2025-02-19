; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_pmu.c_perf_pmu__parse_unit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_pmu.c_perf_pmu__parse_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_pmu_alias = type { i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s/%s.unit\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@UNIT_MAX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_pmu_alias*, i8*, i8*)* @perf_pmu__parse_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_pmu__parse_unit(%struct.perf_pmu_alias* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_pmu_alias*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.perf_pmu_alias* %0, %struct.perf_pmu_alias** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32, i32* @PATH_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* @PATH_MAX, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @scnprintf(i8* %16, i32 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %19)
  %21 = load i32, i32* @O_RDONLY, align 4
  %22 = call i32 @open(i8* %16, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %72

26:                                               ; preds = %3
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.perf_pmu_alias*, %struct.perf_pmu_alias** %5, align 8
  %29 = getelementptr inbounds %struct.perf_pmu_alias, %struct.perf_pmu_alias* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* @UNIT_MAX_LEN, align 4
  %32 = call i32 @read(i32 %27, i8* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %65

36:                                               ; preds = %26
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @close(i32 %37)
  %39 = load %struct.perf_pmu_alias*, %struct.perf_pmu_alias** %5, align 8
  %40 = getelementptr inbounds %struct.perf_pmu_alias, %struct.perf_pmu_alias* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 10
  br i1 %48, label %49, label %57

49:                                               ; preds = %36
  %50 = load %struct.perf_pmu_alias*, %struct.perf_pmu_alias** %5, align 8
  %51 = getelementptr inbounds %struct.perf_pmu_alias, %struct.perf_pmu_alias* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  store i8 0, i8* %56, align 1
  br label %64

57:                                               ; preds = %36
  %58 = load %struct.perf_pmu_alias*, %struct.perf_pmu_alias** %5, align 8
  %59 = getelementptr inbounds %struct.perf_pmu_alias, %struct.perf_pmu_alias* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8 0, i8* %63, align 1
  br label %64

64:                                               ; preds = %57, %49
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %72

65:                                               ; preds = %35
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @close(i32 %66)
  %68 = load %struct.perf_pmu_alias*, %struct.perf_pmu_alias** %5, align 8
  %69 = getelementptr inbounds %struct.perf_pmu_alias, %struct.perf_pmu_alias* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  store i8 0, i8* %71, align 1
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %72

72:                                               ; preds = %65, %64, %25
  %73 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
