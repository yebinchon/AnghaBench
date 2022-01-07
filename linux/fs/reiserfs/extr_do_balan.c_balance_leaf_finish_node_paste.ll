; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_finish_node_paste.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_finish_node_paste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i64, i32*, i32, i32, i32, i32 }
%struct.item_head = type { i32 }
%struct.buffer_head = type { i32 }
%struct.buffer_info = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"PAP-12275: insert size must not be %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*, %struct.item_head*, i8*)* @balance_leaf_finish_node_paste to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balance_leaf_finish_node_paste(%struct.tree_balance* %0, %struct.item_head* %1, i8* %2) #0 {
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca %struct.item_head*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_info, align 4
  %9 = alloca %struct.item_head*, align 8
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store %struct.item_head* %1, %struct.item_head** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %11 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.buffer_head* @PATH_PLAST_BUFFER(i32 %12)
  store %struct.buffer_head* %13, %struct.buffer_head** %7, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %15 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %16 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.item_head* @item_head(%struct.buffer_head* %14, i32 %17)
  store %struct.item_head* %18, %struct.item_head** %9, align 8
  %19 = load %struct.item_head*, %struct.item_head** %9, align 8
  %20 = call i64 @is_direntry_le_ih(%struct.item_head* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %24 = load %struct.item_head*, %struct.item_head** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @balance_leaf_finish_node_paste_dirent(%struct.tree_balance* %23, %struct.item_head* %24, i8* %25)
  br label %77

27:                                               ; preds = %3
  %28 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %29 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.item_head*, %struct.item_head** %9, align 8
  %32 = call i64 @ih_item_len(%struct.item_head* %31)
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %34, label %77

34:                                               ; preds = %27
  %35 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %36 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %43 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @RFALSE(i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %49 = call i32 @buffer_info_init_tbS0(%struct.tree_balance* %48, %struct.buffer_info* %8)
  %50 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %51 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %54 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %57 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %63 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @leaf_paste_in_buffer(%struct.buffer_info* %8, i32 %52, i64 %55, i32 %60, i8* %61, i32 %64)
  %66 = load %struct.item_head*, %struct.item_head** %9, align 8
  %67 = call i64 @is_indirect_le_ih(%struct.item_head* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %34
  %70 = load %struct.item_head*, %struct.item_head** %9, align 8
  %71 = call i32 @set_ih_free_space(%struct.item_head* %70, i32 0)
  br label %72

72:                                               ; preds = %69, %34
  %73 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %74 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 0, i32* %76, align 4
  br label %77

77:                                               ; preds = %22, %72, %27
  ret void
}

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(i32) #1

declare dso_local %struct.item_head* @item_head(%struct.buffer_head*, i32) #1

declare dso_local i64 @is_direntry_le_ih(%struct.item_head*) #1

declare dso_local i32 @balance_leaf_finish_node_paste_dirent(%struct.tree_balance*, %struct.item_head*, i8*) #1

declare dso_local i64 @ih_item_len(%struct.item_head*) #1

declare dso_local i32 @RFALSE(i32, i8*, i32) #1

declare dso_local i32 @buffer_info_init_tbS0(%struct.tree_balance*, %struct.buffer_info*) #1

declare dso_local i32 @leaf_paste_in_buffer(%struct.buffer_info*, i32, i64, i32, i8*, i32) #1

declare dso_local i64 @is_indirect_le_ih(%struct.item_head*) #1

declare dso_local i32 @set_ih_free_space(%struct.item_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
