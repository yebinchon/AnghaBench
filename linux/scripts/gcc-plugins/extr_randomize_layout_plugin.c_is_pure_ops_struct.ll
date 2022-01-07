; ModuleID = '/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_randomize_layout_plugin.c_is_pure_ops_struct.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_randomize_layout_plugin.c_is_pure_ops_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RECORD_TYPE = common dso_local global i64 0, align 8
@UNION_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @is_pure_ops_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_pure_ops_struct(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i64 @TREE_CODE(i64 %7)
  %9 = load i64, i64* @RECORD_TYPE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @TREE_CODE(i64 %12)
  %14 = load i64, i64* @UNION_TYPE, align 8
  %15 = icmp eq i64 %13, %14
  br label %16

16:                                               ; preds = %11, %1
  %17 = phi i1 [ true, %1 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @gcc_assert(i32 %18)
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @TYPE_FIELDS(i64 %20)
  store i64 %21, i64* %4, align 8
  br label %22

22:                                               ; preds = %57, %16
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %60

25:                                               ; preds = %22
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @get_field_type(i64 %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @TREE_CODE(i64 %28)
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %6, align 4
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %57

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* @RECORD_TYPE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = load i64, i64* @UNION_TYPE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %40, %35
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @is_pure_ops_struct(i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %61

50:                                               ; preds = %45
  br label %57

51:                                               ; preds = %40
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @is_fptr(i64 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %61

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %50, %34
  %58 = load i64, i64* %4, align 8
  %59 = call i64 @TREE_CHAIN(i64 %58)
  store i64 %59, i64* %4, align 8
  br label %22

60:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %55, %49
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @get_field_type(i64) #1

declare dso_local i32 @is_fptr(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
