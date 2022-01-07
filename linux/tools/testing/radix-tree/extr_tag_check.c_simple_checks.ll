; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_tag_check.c_simple_checks.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_tag_check.c_simple_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tree = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"before item_kill_tree: %d allocated\0A\00", align 1
@nr_allocated = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"after item_kill_tree: %d allocated\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @simple_checks() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @tree, align 4
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call i32 @RADIX_TREE(i32 %2, i32 %3)
  store i64 0, i64* %1, align 8
  br label %5

5:                                                ; preds = %13, %0
  %6 = load i64, i64* %1, align 8
  %7 = icmp ult i64 %6, 10000
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @__simple_checks(i32* @tree, i64 %9, i32 0)
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @__simple_checks(i32* @tree, i64 %11, i32 1)
  br label %13

13:                                               ; preds = %8
  %14 = load i64, i64* %1, align 8
  %15 = add i64 %14, 1
  store i64 %15, i64* %1, align 8
  br label %5

16:                                               ; preds = %5
  %17 = call i32 @verify_tag_consistency(i32* @tree, i32 0)
  %18 = call i32 @verify_tag_consistency(i32* @tree, i32 1)
  %19 = load i32, i32* @nr_allocated, align 4
  %20 = call i32 @printv(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 @item_kill_tree(i32* @tree)
  %22 = call i32 (...) @rcu_barrier()
  %23 = load i32, i32* @nr_allocated, align 4
  %24 = call i32 @printv(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  ret void
}

declare dso_local i32 @RADIX_TREE(i32, i32) #1

declare dso_local i32 @__simple_checks(i32*, i64, i32) #1

declare dso_local i32 @verify_tag_consistency(i32*, i32) #1

declare dso_local i32 @printv(i32, i8*, i32) #1

declare dso_local i32 @item_kill_tree(i32*) #1

declare dso_local i32 @rcu_barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
