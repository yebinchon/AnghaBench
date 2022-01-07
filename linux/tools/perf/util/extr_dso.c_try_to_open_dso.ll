; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_try_to_open_dso.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_try_to_open_dso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.machine = type { i32 }

@DSO_BINARY_TYPE__BUILD_ID_CACHE = common dso_local global i32 0, align 4
@DSO_BINARY_TYPE__SYSTEM_PATH_DSO = common dso_local global i32 0, align 4
@DSO_BINARY_TYPE__NOT_FOUND = common dso_local global i32 0, align 4
@DSO_DATA_STATUS_OK = common dso_local global i32 0, align 4
@DSO_DATA_STATUS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dso*, %struct.machine*)* @try_to_open_dso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_to_open_dso(%struct.dso* %0, %struct.machine* %1) #0 {
  %3 = alloca %struct.dso*, align 8
  %4 = alloca %struct.machine*, align 8
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %3, align 8
  store %struct.machine* %1, %struct.machine** %4, align 8
  %7 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %8 = load i32, i32* @DSO_BINARY_TYPE__BUILD_ID_CACHE, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds i32, i32* %7, i64 1
  %10 = load i32, i32* @DSO_BINARY_TYPE__SYSTEM_PATH_DSO, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  %12 = load i32, i32* @DSO_BINARY_TYPE__NOT_FOUND, align 4
  store i32 %12, i32* %11, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.dso*, %struct.dso** %3, align 8
  %14 = getelementptr inbounds %struct.dso, %struct.dso* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %79

19:                                               ; preds = %2
  %20 = load %struct.dso*, %struct.dso** %3, align 8
  %21 = getelementptr inbounds %struct.dso, %struct.dso* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DSO_BINARY_TYPE__NOT_FOUND, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.dso*, %struct.dso** %3, align 8
  %27 = load %struct.machine*, %struct.machine** %4, align 8
  %28 = call i8* @open_dso(%struct.dso* %26, %struct.machine* %27)
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.dso*, %struct.dso** %3, align 8
  %31 = getelementptr inbounds %struct.dso, %struct.dso* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  br label %63

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %56, %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dso*, %struct.dso** %3, align 8
  %41 = getelementptr inbounds %struct.dso, %struct.dso* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.dso*, %struct.dso** %3, align 8
  %43 = load %struct.machine*, %struct.machine** %4, align 8
  %44 = call i8* @open_dso(%struct.dso* %42, %struct.machine* %43)
  %45 = ptrtoint i8* %44 to i64
  %46 = load %struct.dso*, %struct.dso** %3, align 8
  %47 = getelementptr inbounds %struct.dso, %struct.dso* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  %49 = load %struct.dso*, %struct.dso** %3, align 8
  %50 = getelementptr inbounds %struct.dso, %struct.dso* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %34
  br label %63

55:                                               ; preds = %34
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.dso*, %struct.dso** %3, align 8
  %58 = getelementptr inbounds %struct.dso, %struct.dso* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @DSO_BINARY_TYPE__NOT_FOUND, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %34, label %62

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %54, %25
  %64 = load %struct.dso*, %struct.dso** %3, align 8
  %65 = getelementptr inbounds %struct.dso, %struct.dso* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sge i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i32, i32* @DSO_DATA_STATUS_OK, align 4
  %71 = load %struct.dso*, %struct.dso** %3, align 8
  %72 = getelementptr inbounds %struct.dso, %struct.dso* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 8
  br label %79

74:                                               ; preds = %63
  %75 = load i32, i32* @DSO_DATA_STATUS_ERROR, align 4
  %76 = load %struct.dso*, %struct.dso** %3, align 8
  %77 = getelementptr inbounds %struct.dso, %struct.dso* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 8
  br label %79

79:                                               ; preds = %18, %74, %69
  ret void
}

declare dso_local i8* @open_dso(%struct.dso*, %struct.machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
