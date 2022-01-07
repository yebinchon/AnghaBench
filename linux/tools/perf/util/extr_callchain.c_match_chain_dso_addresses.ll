; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_match_chain_dso_addresses.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_match_chain_dso_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map = type { %struct.dso* }
%struct.dso = type { i32 }

@MATCH_LT = common dso_local global i32 0, align 4
@MATCH_GT = common dso_local global i32 0, align 4
@MATCH_EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.map*, i64, %struct.map*, i64)* @match_chain_dso_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_chain_dso_addresses(%struct.map* %0, i64 %1, %struct.map* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.map*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.map*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dso*, align 8
  %11 = alloca %struct.dso*, align 8
  store %struct.map* %0, %struct.map** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.map* %2, %struct.map** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.map*, %struct.map** %6, align 8
  %13 = icmp ne %struct.map* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load %struct.map*, %struct.map** %6, align 8
  %16 = getelementptr inbounds %struct.map, %struct.map* %15, i32 0, i32 0
  %17 = load %struct.dso*, %struct.dso** %16, align 8
  br label %19

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi %struct.dso* [ %17, %14 ], [ null, %18 ]
  store %struct.dso* %20, %struct.dso** %10, align 8
  %21 = load %struct.map*, %struct.map** %8, align 8
  %22 = icmp ne %struct.map* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.map*, %struct.map** %8, align 8
  %25 = getelementptr inbounds %struct.map, %struct.map* %24, i32 0, i32 0
  %26 = load %struct.dso*, %struct.dso** %25, align 8
  br label %28

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi %struct.dso* [ %26, %23 ], [ null, %27 ]
  store %struct.dso* %29, %struct.dso** %11, align 8
  %30 = load %struct.dso*, %struct.dso** %10, align 8
  %31 = load %struct.dso*, %struct.dso** %11, align 8
  %32 = icmp ne %struct.dso* %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.dso*, %struct.dso** %10, align 8
  %35 = load %struct.dso*, %struct.dso** %11, align 8
  %36 = icmp ult %struct.dso* %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @MATCH_LT, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @MATCH_GT, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %5, align 4
  br label %59

43:                                               ; preds = %28
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @MATCH_LT, align 4
  br label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @MATCH_GT, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %5, align 4
  br label %59

57:                                               ; preds = %43
  %58 = load i32, i32* @MATCH_EQ, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %57, %55, %41
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
