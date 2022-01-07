; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_new_nodes_paste.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_new_nodes_paste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, i32, i32*, i32*, i32 }
%struct.item_head = type { i32 }
%struct.buffer_head = type { i32 }

@LEAF_FROM_S_TO_SNEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*, %struct.item_head*, i8*, %struct.item_head*, %struct.buffer_head**, i32)* @balance_leaf_new_nodes_paste to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balance_leaf_new_nodes_paste(%struct.tree_balance* %0, %struct.item_head* %1, i8* %2, %struct.item_head* %3, %struct.buffer_head** %4, i32 %5) #0 {
  %7 = alloca %struct.tree_balance*, align 8
  %8 = alloca %struct.item_head*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.item_head*, align 8
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %7, align 8
  store %struct.item_head* %1, %struct.item_head** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.item_head* %3, %struct.item_head** %10, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %16 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.buffer_head* @PATH_PLAST_BUFFER(i32 %17)
  store %struct.buffer_head* %18, %struct.buffer_head** %13, align 8
  %19 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %20 = call i32 @B_NR_ITEMS(%struct.buffer_head* %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %23 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %21, %28
  %30 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %31 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %6
  %35 = load i32, i32* @LEAF_FROM_S_TO_SNEW, align 4
  %36 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %37 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %38 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %45 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %52 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @leaf_move_items(i32 %35, %struct.tree_balance* %36, i32 %43, i32 %50, i32 %57)
  br label %98

59:                                               ; preds = %6
  %60 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %61 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %65 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %63, %70
  %72 = icmp eq i32 %62, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %59
  %74 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %75 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, -1
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %84 = load %struct.item_head*, %struct.item_head** %8, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load %struct.item_head*, %struct.item_head** %10, align 8
  %87 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @balance_leaf_new_nodes_paste_shift(%struct.tree_balance* %83, %struct.item_head* %84, i8* %85, %struct.item_head* %86, %struct.buffer_head** %87, i32 %88)
  br label %98

90:                                               ; preds = %73, %59
  %91 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %92 = load %struct.item_head*, %struct.item_head** %8, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = load %struct.item_head*, %struct.item_head** %10, align 8
  %95 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @balance_leaf_new_nodes_paste_whole(%struct.tree_balance* %91, %struct.item_head* %92, i8* %93, %struct.item_head* %94, %struct.buffer_head** %95, i32 %96)
  br label %98

98:                                               ; preds = %34, %90, %82
  ret void
}

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(i32) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i32 @leaf_move_items(i32, %struct.tree_balance*, i32, i32, i32) #1

declare dso_local i32 @balance_leaf_new_nodes_paste_shift(%struct.tree_balance*, %struct.item_head*, i8*, %struct.item_head*, %struct.buffer_head**, i32) #1

declare dso_local i32 @balance_leaf_new_nodes_paste_whole(%struct.tree_balance*, %struct.item_head*, i8*, %struct.item_head*, %struct.buffer_head**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
