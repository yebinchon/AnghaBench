; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_pmu.c_perf_pmu__parse_scale.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_pmu.c_perf_pmu__parse_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_pmu_alias = type { i32 }
%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s/%s.scale\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_pmu_alias*, i8*, i8*)* @perf_pmu__parse_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_pmu__parse_scale(%struct.perf_pmu_alias* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_pmu_alias*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.perf_pmu_alias* %0, %struct.perf_pmu_alias** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 -1, i32* %12, align 4
  %16 = load i32, i32* @PATH_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = load i32, i32* @PATH_MAX, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @scnprintf(i8* %19, i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22)
  %24 = load i32, i32* @O_RDONLY, align 4
  %25 = call i32 @open(i8* %19, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %67

29:                                               ; preds = %3
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @fstat(i32 %30, %struct.stat* %8)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %63

34:                                               ; preds = %29
  %35 = load i32, i32* %11, align 4
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %37 = call i32 @read(i32 %35, i8* %36, i32 127)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %63

41:                                               ; preds = %34
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 10
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load i32, i32* %9, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 %52
  store i8 0, i8* %53, align 1
  br label %58

54:                                               ; preds = %41
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 %56
  store i8 0, i8* %57, align 1
  br label %58

58:                                               ; preds = %54, %49
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %60 = load %struct.perf_pmu_alias*, %struct.perf_pmu_alias** %5, align 8
  %61 = getelementptr inbounds %struct.perf_pmu_alias, %struct.perf_pmu_alias* %60, i32 0, i32 0
  %62 = call i32 @perf_pmu__convert_scale(i8* %59, i32* null, i32* %61)
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %58, %40, %33
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @close(i32 %64)
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %67

67:                                               ; preds = %63, %28
  %68 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @perf_pmu__convert_scale(i8*, i32*, i32*) #2

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
