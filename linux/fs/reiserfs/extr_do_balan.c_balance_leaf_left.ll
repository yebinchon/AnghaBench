; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_left.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i64*, i64, i32 }
%struct.item_head = type { i32 }

@M_INSERT = common dso_local global i32 0, align 4
@M_PASTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_balance*, %struct.item_head*, i8*, i32)* @balance_leaf_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @balance_leaf_left(%struct.tree_balance* %0, %struct.item_head* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tree_balance*, align 8
  %7 = alloca %struct.item_head*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %6, align 8
  store %struct.item_head* %1, %struct.item_head** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.tree_balance*, %struct.tree_balance** %6, align 8
  %11 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %64

17:                                               ; preds = %4
  %18 = load %struct.tree_balance*, %struct.tree_balance** %6, align 8
  %19 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.tree_balance*, %struct.tree_balance** %6, align 8
  %22 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %20, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %17
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @M_INSERT, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @M_PASTE, align 4
  %34 = icmp ne i32 %32, %33
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ false, %27 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @M_INSERT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.tree_balance*, %struct.tree_balance** %6, align 8
  %44 = load %struct.item_head*, %struct.item_head** %7, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @balance_leaf_insert_left(%struct.tree_balance* %43, %struct.item_head* %44, i8* %45)
  store i32 %46, i32* %5, align 4
  br label %64

47:                                               ; preds = %35
  %48 = load %struct.tree_balance*, %struct.tree_balance** %6, align 8
  %49 = load %struct.item_head*, %struct.item_head** %7, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @balance_leaf_paste_left(%struct.tree_balance* %48, %struct.item_head* %49, i8* %50)
  store i32 %51, i32* %5, align 4
  br label %64

52:                                               ; preds = %17
  %53 = load %struct.tree_balance*, %struct.tree_balance** %6, align 8
  %54 = load %struct.tree_balance*, %struct.tree_balance** %6, align 8
  %55 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.tree_balance*, %struct.tree_balance** %6, align 8
  %60 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @leaf_shift_left(%struct.tree_balance* %53, i64 %58, i32 %61)
  br label %63

63:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %47, %42, %16
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @balance_leaf_insert_left(%struct.tree_balance*, %struct.item_head*, i8*) #1

declare dso_local i32 @balance_leaf_paste_left(%struct.tree_balance*, %struct.item_head*, i8*) #1

declare dso_local i32 @leaf_shift_left(%struct.tree_balance*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
