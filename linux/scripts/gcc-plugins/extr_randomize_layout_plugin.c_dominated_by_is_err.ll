; ModuleID = '/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_randomize_layout_plugin.c_dominated_by_is_err.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_randomize_layout_plugin.c_dominated_by_is_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CDI_DOMINATORS = common dso_local global i32 0, align 4
@GIMPLE_COND = common dso_local global i64 0, align 8
@NE_EXPR = common dso_local global i64 0, align 8
@SSA_NAME = common dso_local global i64 0, align 8
@GIMPLE_CALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"IS_ERR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @dominated_by_is_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dominated_by_is_err(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @CDI_DOMINATORS, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @get_immediate_dominator(i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %90

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @last_stmt(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %90

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @gimple_code(i32 %26)
  %28 = load i64, i64* @GIMPLE_COND, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %90

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @gimple_cond_code(i32 %32)
  %34 = load i64, i64* @NE_EXPR, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %90

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @gimple_cond_rhs(i32 %38)
  %40 = call i32 @integer_zerop(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %90

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @gimple_cond_lhs(i32 %44)
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i64 @TREE_CODE(i64 %46)
  %48 = load i64, i64* @SSA_NAME, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %90

51:                                               ; preds = %43
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @SSA_NAME_DEF_STMT(i64 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @gimple_code(i32 %54)
  %56 = load i64, i64* @GIMPLE_CALL, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %90

59:                                               ; preds = %51
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @gimple_get_lhs(i32 %60)
  store i64 %61, i64* %9, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @gimple_call_fndecl(i32 %62)
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %90

67:                                               ; preds = %59
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %10, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %90

72:                                               ; preds = %67
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @DECL_NAME_POINTER(i64 %73)
  %75 = call i64 @strcmp(i32 %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %90

78:                                               ; preds = %72
  %79 = load i32, i32* %8, align 4
  %80 = call i64 @gimple_call_arg(i32 %79, i32 0)
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %12, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %90

84:                                               ; preds = %78
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* %4, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %90

89:                                               ; preds = %84
  store i32 1, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %88, %83, %77, %71, %66, %58, %50, %42, %36, %30, %24, %18
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @get_immediate_dominator(i32, i32) #1

declare dso_local i32 @last_stmt(i32) #1

declare dso_local i64 @gimple_code(i32) #1

declare dso_local i64 @gimple_cond_code(i32) #1

declare dso_local i32 @integer_zerop(i32) #1

declare dso_local i32 @gimple_cond_rhs(i32) #1

declare dso_local i64 @gimple_cond_lhs(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @SSA_NAME_DEF_STMT(i64) #1

declare dso_local i64 @gimple_get_lhs(i32) #1

declare dso_local i64 @gimple_call_fndecl(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @DECL_NAME_POINTER(i64) #1

declare dso_local i64 @gimple_call_arg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
