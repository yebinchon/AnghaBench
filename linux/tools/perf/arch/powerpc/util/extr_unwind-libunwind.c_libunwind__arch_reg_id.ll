; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/powerpc/util/extr_unwind-libunwind.c_libunwind__arch_reg_id.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/powerpc/util/extr_unwind-libunwind.c_libunwind__arch_reg_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PERF_REG_POWERPC_R0 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R1 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R2 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R3 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R4 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R5 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R6 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R7 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R8 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R9 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R10 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R11 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R12 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R13 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R14 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R15 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R16 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R17 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R18 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R19 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R20 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R21 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R22 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R23 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R24 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R25 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R26 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R27 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R28 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R29 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R30 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_R31 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_LINK = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_CTR = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_XER = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_NIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unwind: invalid reg id %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libunwind__arch_reg_id(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %77 [
    i32 160, label %5
    i32 159, label %7
    i32 148, label %9
    i32 137, label %11
    i32 134, label %13
    i32 133, label %15
    i32 132, label %17
    i32 131, label %19
    i32 130, label %21
    i32 129, label %23
    i32 158, label %25
    i32 157, label %27
    i32 156, label %29
    i32 155, label %31
    i32 154, label %33
    i32 153, label %35
    i32 152, label %37
    i32 151, label %39
    i32 150, label %41
    i32 149, label %43
    i32 147, label %45
    i32 146, label %47
    i32 145, label %49
    i32 144, label %51
    i32 143, label %53
    i32 142, label %55
    i32 141, label %57
    i32 140, label %59
    i32 139, label %61
    i32 138, label %63
    i32 136, label %65
    i32 135, label %67
    i32 162, label %69
    i32 163, label %71
    i32 128, label %73
    i32 161, label %75
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @PERF_REG_POWERPC_R0, align 4
  store i32 %6, i32* %2, align 4
  br label %82

7:                                                ; preds = %1
  %8 = load i32, i32* @PERF_REG_POWERPC_R1, align 4
  store i32 %8, i32* %2, align 4
  br label %82

9:                                                ; preds = %1
  %10 = load i32, i32* @PERF_REG_POWERPC_R2, align 4
  store i32 %10, i32* %2, align 4
  br label %82

11:                                               ; preds = %1
  %12 = load i32, i32* @PERF_REG_POWERPC_R3, align 4
  store i32 %12, i32* %2, align 4
  br label %82

13:                                               ; preds = %1
  %14 = load i32, i32* @PERF_REG_POWERPC_R4, align 4
  store i32 %14, i32* %2, align 4
  br label %82

15:                                               ; preds = %1
  %16 = load i32, i32* @PERF_REG_POWERPC_R5, align 4
  store i32 %16, i32* %2, align 4
  br label %82

17:                                               ; preds = %1
  %18 = load i32, i32* @PERF_REG_POWERPC_R6, align 4
  store i32 %18, i32* %2, align 4
  br label %82

19:                                               ; preds = %1
  %20 = load i32, i32* @PERF_REG_POWERPC_R7, align 4
  store i32 %20, i32* %2, align 4
  br label %82

21:                                               ; preds = %1
  %22 = load i32, i32* @PERF_REG_POWERPC_R8, align 4
  store i32 %22, i32* %2, align 4
  br label %82

23:                                               ; preds = %1
  %24 = load i32, i32* @PERF_REG_POWERPC_R9, align 4
  store i32 %24, i32* %2, align 4
  br label %82

25:                                               ; preds = %1
  %26 = load i32, i32* @PERF_REG_POWERPC_R10, align 4
  store i32 %26, i32* %2, align 4
  br label %82

27:                                               ; preds = %1
  %28 = load i32, i32* @PERF_REG_POWERPC_R11, align 4
  store i32 %28, i32* %2, align 4
  br label %82

29:                                               ; preds = %1
  %30 = load i32, i32* @PERF_REG_POWERPC_R12, align 4
  store i32 %30, i32* %2, align 4
  br label %82

31:                                               ; preds = %1
  %32 = load i32, i32* @PERF_REG_POWERPC_R13, align 4
  store i32 %32, i32* %2, align 4
  br label %82

33:                                               ; preds = %1
  %34 = load i32, i32* @PERF_REG_POWERPC_R14, align 4
  store i32 %34, i32* %2, align 4
  br label %82

35:                                               ; preds = %1
  %36 = load i32, i32* @PERF_REG_POWERPC_R15, align 4
  store i32 %36, i32* %2, align 4
  br label %82

37:                                               ; preds = %1
  %38 = load i32, i32* @PERF_REG_POWERPC_R16, align 4
  store i32 %38, i32* %2, align 4
  br label %82

39:                                               ; preds = %1
  %40 = load i32, i32* @PERF_REG_POWERPC_R17, align 4
  store i32 %40, i32* %2, align 4
  br label %82

41:                                               ; preds = %1
  %42 = load i32, i32* @PERF_REG_POWERPC_R18, align 4
  store i32 %42, i32* %2, align 4
  br label %82

43:                                               ; preds = %1
  %44 = load i32, i32* @PERF_REG_POWERPC_R19, align 4
  store i32 %44, i32* %2, align 4
  br label %82

45:                                               ; preds = %1
  %46 = load i32, i32* @PERF_REG_POWERPC_R20, align 4
  store i32 %46, i32* %2, align 4
  br label %82

47:                                               ; preds = %1
  %48 = load i32, i32* @PERF_REG_POWERPC_R21, align 4
  store i32 %48, i32* %2, align 4
  br label %82

49:                                               ; preds = %1
  %50 = load i32, i32* @PERF_REG_POWERPC_R22, align 4
  store i32 %50, i32* %2, align 4
  br label %82

51:                                               ; preds = %1
  %52 = load i32, i32* @PERF_REG_POWERPC_R23, align 4
  store i32 %52, i32* %2, align 4
  br label %82

53:                                               ; preds = %1
  %54 = load i32, i32* @PERF_REG_POWERPC_R24, align 4
  store i32 %54, i32* %2, align 4
  br label %82

55:                                               ; preds = %1
  %56 = load i32, i32* @PERF_REG_POWERPC_R25, align 4
  store i32 %56, i32* %2, align 4
  br label %82

57:                                               ; preds = %1
  %58 = load i32, i32* @PERF_REG_POWERPC_R26, align 4
  store i32 %58, i32* %2, align 4
  br label %82

59:                                               ; preds = %1
  %60 = load i32, i32* @PERF_REG_POWERPC_R27, align 4
  store i32 %60, i32* %2, align 4
  br label %82

61:                                               ; preds = %1
  %62 = load i32, i32* @PERF_REG_POWERPC_R28, align 4
  store i32 %62, i32* %2, align 4
  br label %82

63:                                               ; preds = %1
  %64 = load i32, i32* @PERF_REG_POWERPC_R29, align 4
  store i32 %64, i32* %2, align 4
  br label %82

65:                                               ; preds = %1
  %66 = load i32, i32* @PERF_REG_POWERPC_R30, align 4
  store i32 %66, i32* %2, align 4
  br label %82

67:                                               ; preds = %1
  %68 = load i32, i32* @PERF_REG_POWERPC_R31, align 4
  store i32 %68, i32* %2, align 4
  br label %82

69:                                               ; preds = %1
  %70 = load i32, i32* @PERF_REG_POWERPC_LINK, align 4
  store i32 %70, i32* %2, align 4
  br label %82

71:                                               ; preds = %1
  %72 = load i32, i32* @PERF_REG_POWERPC_CTR, align 4
  store i32 %72, i32* %2, align 4
  br label %82

73:                                               ; preds = %1
  %74 = load i32, i32* @PERF_REG_POWERPC_XER, align 4
  store i32 %74, i32* %2, align 4
  br label %82

75:                                               ; preds = %1
  %76 = load i32, i32* @PERF_REG_POWERPC_NIP, align 4
  store i32 %76, i32* %2, align 4
  br label %82

77:                                               ; preds = %1
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %77, %75, %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
