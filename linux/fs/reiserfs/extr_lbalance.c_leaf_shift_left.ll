; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_lbalance.c_leaf_shift_left.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_lbalance.c_leaf_shift_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i64, i32*, i32*, i32, i32 }
%struct.buffer_head = type { i32 }

@LEAF_FROM_S_TO_L = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"vs-10270: S0 is empty now, but shift_bytes != -1 (%d)\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"vs-10280: item must be mergeable\00", align 1
@M_INSERT = common dso_local global i64 0, align 8
@M_PASTE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @leaf_shift_left(%struct.tree_balance* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %10 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.buffer_head* @PATH_PLAST_BUFFER(i32 %11)
  store %struct.buffer_head* %12, %struct.buffer_head** %7, align 8
  %13 = load i32, i32* @LEAF_FROM_S_TO_L, align 4
  %14 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @leaf_move_items(i32 %13, %struct.tree_balance* %14, i32 %15, i32 %16, i32* null)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %93

20:                                               ; preds = %3
  %21 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %22 = call i64 @B_NR_ITEMS(%struct.buffer_head* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, -1
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i32, i8*, ...) @RFALSE(i32 %27, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %31 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @PATH_H_POSITION(i32 %32, i32 1)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %24
  %36 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %37 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %38 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %43 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %48 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.buffer_head* @PATH_H_PPARENT(i32 %49, i32 0)
  %51 = call i32 @replace_key(%struct.tree_balance* %36, i32 %41, i32 %46, %struct.buffer_head* %50, i32 0)
  br label %52

52:                                               ; preds = %35, %24
  br label %92

53:                                               ; preds = %20
  %54 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %55 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %56 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %61 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %66 = call i32 @replace_key(%struct.tree_balance* %54, i32 %59, i32 %64, %struct.buffer_head* %65, i32 0)
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %88

69:                                               ; preds = %53
  %70 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %71 = call i32 @item_head(%struct.buffer_head* %70, i32 0)
  %72 = call i64 @is_direntry_le_ih(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %76 = call i32 @item_head(%struct.buffer_head* %75, i32 0)
  %77 = call i32 @ih_entry_count(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74, %69
  %80 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %81 = call i32 @leaf_key(%struct.buffer_head* %80, i32 0)
  %82 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %83 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @op_is_left_mergeable(i32 %81, i32 %84)
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %79, %74, %53
  %89 = phi i1 [ false, %74 ], [ false, %53 ], [ %87, %79 ]
  %90 = zext i1 %89 to i32
  %91 = call i32 (i32, i8*, ...) @RFALSE(i32 %90, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %92

92:                                               ; preds = %88, %52
  br label %93

93:                                               ; preds = %92, %3
  %94 = load i32, i32* %8, align 4
  ret i32 %94
}

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(i32) #1

declare dso_local i32 @leaf_move_items(i32, %struct.tree_balance*, i32, i32, i32*) #1

declare dso_local i64 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i32 @RFALSE(i32, i8*, ...) #1

declare dso_local i64 @PATH_H_POSITION(i32, i32) #1

declare dso_local i32 @replace_key(%struct.tree_balance*, i32, i32, %struct.buffer_head*, i32) #1

declare dso_local %struct.buffer_head* @PATH_H_PPARENT(i32, i32) #1

declare dso_local i64 @is_direntry_le_ih(i32) #1

declare dso_local i32 @item_head(%struct.buffer_head*, i32) #1

declare dso_local i32 @ih_entry_count(i32) #1

declare dso_local i32 @op_is_left_mergeable(i32, i32) #1

declare dso_local i32 @leaf_key(%struct.buffer_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
