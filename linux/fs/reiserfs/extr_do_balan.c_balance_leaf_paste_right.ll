; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_paste_right.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_paste_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, i32, i32, i32 }
%struct.item_head = type { i32 }
%struct.buffer_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*, %struct.item_head*, i8*)* @balance_leaf_paste_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balance_leaf_paste_right(%struct.tree_balance* %0, %struct.item_head* %1, i8* %2) #0 {
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca %struct.item_head*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store %struct.item_head* %1, %struct.item_head** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %10 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.buffer_head* @PATH_PLAST_BUFFER(i32 %11)
  store %struct.buffer_head* %12, %struct.buffer_head** %7, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %14 = call i32 @B_NR_ITEMS(%struct.buffer_head* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %17 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %15, %20
  %22 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %23 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %3
  %27 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %28 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %29 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %34 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @leaf_shift_right(%struct.tree_balance* %27, i32 %32, i32 %35)
  br label %64

37:                                               ; preds = %3
  %38 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %39 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %43 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %41, %46
  %48 = icmp eq i32 %40, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %37
  %50 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %51 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %56 = load %struct.item_head*, %struct.item_head** %5, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @balance_leaf_paste_right_shift(%struct.tree_balance* %55, %struct.item_head* %56, i8* %57)
  br label %64

59:                                               ; preds = %49, %37
  %60 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %61 = load %struct.item_head*, %struct.item_head** %5, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @balance_leaf_paste_right_whole(%struct.tree_balance* %60, %struct.item_head* %61, i8* %62)
  br label %64

64:                                               ; preds = %26, %59, %54
  ret void
}

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(i32) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i32 @leaf_shift_right(%struct.tree_balance*, i32, i32) #1

declare dso_local i32 @balance_leaf_paste_right_shift(%struct.tree_balance*, %struct.item_head*, i8*) #1

declare dso_local i32 @balance_leaf_paste_right_whole(%struct.tree_balance*, %struct.item_head*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
