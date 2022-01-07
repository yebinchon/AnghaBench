; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/helpers/extr_amd.c_decode_pstates.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/helpers/extr_amd.c_decode_pstates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.msr_pstate = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MSR_AMD_PSTATE_LIMIT = common dso_local global i64 0, align 8
@MSR_AMD_PSTATE_STATUS = common dso_local global i64 0, align 8
@MAX_HW_PSTATES = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"HW pstates [%d] exceeding max [%d]\0A\00", align 1
@MSR_AMD_PSTATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decode_pstates(i32 %0, i32 %1, i32 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.msr_pstate, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ult i32 %17, 16
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 20
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %5
  store i32 -1, i32* %6, align 4
  br label %103

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = load i64, i64* @MSR_AMD_PSTATE_LIMIT, align 8
  %26 = call i64 @read_msr(i32 %24, i64 %25, i64* %16)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -1, i32* %6, align 4
  br label %103

29:                                               ; preds = %23
  %30 = load i64, i64* %16, align 8
  %31 = lshr i64 %30, 4
  %32 = and i64 %31, 7
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i64, i64* @MSR_AMD_PSTATE_STATUS, align 8
  %36 = call i64 @read_msr(i32 %34, i64 %35, i64* %16)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 -1, i32* %6, align 4
  br label %103

39:                                               ; preds = %29
  %40 = load i64, i64* %16, align 8
  %41 = and i64 %40, 7
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %14, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %97, %39
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %53, label %100

53:                                               ; preds = %49
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @MAX_HW_PSTATES, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32, i32* @stderr, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @MAX_HW_PSTATES, align 4
  %61 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  store i32 -1, i32* %6, align 4
  br label %103

62:                                               ; preds = %53
  %63 = load i32, i32* %7, align 4
  %64 = load i64, i64* @MSR_AMD_PSTATE, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = bitcast %union.msr_pstate* %15 to i64*
  %69 = call i64 @read_msr(i32 %63, i64 %67, i64* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i32 -1, i32* %6, align 4
  br label %103

72:                                               ; preds = %62
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, 23
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = bitcast %union.msr_pstate* %15 to %struct.TYPE_3__*
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  br label %97

81:                                               ; preds = %75, %72
  %82 = bitcast %union.msr_pstate* %15 to %struct.TYPE_4__*
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  br label %97

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = getelementptr inbounds %union.msr_pstate, %union.msr_pstate* %15, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @get_cof(i32 %89, i64 %91)
  %93 = load i64*, i64** %10, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  store i64 %92, i64* %96, align 8
  br label %97

97:                                               ; preds = %88, %86, %80
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %49

100:                                              ; preds = %49
  %101 = load i32, i32* %12, align 4
  %102 = load i32*, i32** %11, align 8
  store i32 %101, i32* %102, align 4
  store i32 0, i32* %6, align 4
  br label %103

103:                                              ; preds = %100, %71, %57, %38, %28, %22
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i64 @read_msr(i32, i64, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i64 @get_cof(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
