; ModuleID = '/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_structleak_plugin.c_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_structleak_plugin.c_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cfun = common dso_local global i32 0, align 4
@CONSTRUCTOR = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"%s variable will be forcibly initialized\00", align 1
@byref = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"byref\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"userspace\00", align 1
@integer_zero_node = common dso_local global i32 0, align 4
@GSI_NEW_STMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %10 = load i32, i32* @cfun, align 4
  %11 = call i32 @ENTRY_BLOCK_PTR_FOR_FN(i32 %10)
  %12 = call i32 @single_succ(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @gsi_start_bb(i32 %13)
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %42, %1
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @gsi_end_p(i32 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %44

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @gsi_stmt(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @gimple_assign_single_p(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %42

27:                                               ; preds = %20
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @gimple_assign_rhs1(i32 %28)
  store i64 %29, i64* %9, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @gimple_get_lhs(i32 %30)
  %32 = load i64, i64* %2, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %42

35:                                               ; preds = %27
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @TREE_CODE(i64 %36)
  %38 = load i64, i64* @CONSTRUCTOR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %87

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %34, %26
  %43 = call i32 @gsi_next(i32* %4)
  br label %15

44:                                               ; preds = %15
  %45 = load i64, i64* @verbose, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load i64, i64* %2, align 8
  %49 = call i32 @DECL_SOURCE_LOCATION(i64 %48)
  %50 = load i64, i64* @byref, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i64, i64* %2, align 8
  %54 = call i64 @TREE_ADDRESSABLE(i64 %53)
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %52, %47
  %57 = phi i1 [ false, %47 ], [ %55, %52 ]
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %60 = call i32 @inform(i32 %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %56, %44
  %62 = load i64, i64* %2, align 8
  %63 = call i64 @TREE_TYPE(i64 %62)
  store i64 %63, i64* %7, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i64 @AGGREGATE_TYPE_P(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i64, i64* %7, align 8
  %69 = call i64 @build_constructor(i64 %68, i32* null)
  store i64 %69, i64* %5, align 8
  br label %74

70:                                               ; preds = %61
  %71 = load i64, i64* %7, align 8
  %72 = load i32, i32* @integer_zero_node, align 4
  %73 = call i64 @fold_convert(i64 %71, i32 %72)
  store i64 %73, i64* %5, align 8
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i64, i64* %2, align 8
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @gimple_build_assign(i64 %75, i64 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* @cfun, align 4
  %79 = call i32 @ENTRY_BLOCK_PTR_FOR_FN(i32 %78)
  %80 = call i32 @single_succ(i32 %79)
  %81 = call i32 @gsi_after_labels(i32 %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @GSI_NEW_STMT, align 4
  %84 = call i32 @gsi_insert_before(i32* %4, i32 %82, i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @update_stmt(i32 %85)
  br label %87

87:                                               ; preds = %74, %40
  ret void
}

declare dso_local i32 @single_succ(i32) #1

declare dso_local i32 @ENTRY_BLOCK_PTR_FOR_FN(i32) #1

declare dso_local i32 @gsi_start_bb(i32) #1

declare dso_local i32 @gsi_end_p(i32) #1

declare dso_local i32 @gsi_stmt(i32) #1

declare dso_local i32 @gimple_assign_single_p(i32) #1

declare dso_local i64 @gimple_assign_rhs1(i32) #1

declare dso_local i64 @gimple_get_lhs(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @gsi_next(i32*) #1

declare dso_local i32 @inform(i32, i8*, i8*) #1

declare dso_local i32 @DECL_SOURCE_LOCATION(i64) #1

declare dso_local i64 @TREE_ADDRESSABLE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @AGGREGATE_TYPE_P(i64) #1

declare dso_local i64 @build_constructor(i64, i32*) #1

declare dso_local i64 @fold_convert(i64, i32) #1

declare dso_local i32 @gimple_build_assign(i64, i64) #1

declare dso_local i32 @gsi_after_labels(i32) #1

declare dso_local i32 @gsi_insert_before(i32*, i32, i32) #1

declare dso_local i32 @update_stmt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
