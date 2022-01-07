; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_fix_node.c_are_leaves_removable.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_fix_node.c_are_leaves_removable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32, i32*, i64*, i32, %struct.virtual_node* }
%struct.virtual_node = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i32 }
%struct.item_head = type { i32 }

@VI_TYPE_LEFT_MERGEABLE = common dso_local global i32 0, align 4
@IH_SIZE = common dso_local global i32 0, align 4
@VI_TYPE_RIGHT_MERGEABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"vs-8125: item number must be 1: it is %d\00", align 1
@DOT_OFFSET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [78 x i8] c"vs-8130: first directory item can not be removed until directory is not empty\00", align 1
@leaves_removable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_balance*, i32, i32)* @are_leaves_removable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @are_leaves_removable(%struct.tree_balance* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tree_balance*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.virtual_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.item_head*, align 8
  store %struct.tree_balance* %0, %struct.tree_balance** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.tree_balance*, %struct.tree_balance** %5, align 8
  %13 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %12, i32 0, i32 4
  %14 = load %struct.virtual_node*, %struct.virtual_node** %13, align 8
  store %struct.virtual_node* %14, %struct.virtual_node** %8, align 8
  %15 = load %struct.tree_balance*, %struct.tree_balance** %5, align 8
  %16 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.buffer_head* @PATH_H_PBUFFER(i32 %17, i32 0)
  store %struct.buffer_head* %18, %struct.buffer_head** %10, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.virtual_node*, %struct.virtual_node** %8, align 8
  %20 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %3
  %24 = load %struct.virtual_node*, %struct.virtual_node** %8, align 8
  %25 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @VI_TYPE_LEFT_MERGEABLE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load i32, i32* @IH_SIZE, align 4
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %33, %23
  %38 = load %struct.virtual_node*, %struct.virtual_node** %8, align 8
  %39 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load %struct.virtual_node*, %struct.virtual_node** %8, align 8
  %42 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @VI_TYPE_RIGHT_MERGEABLE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %37
  %53 = load i32, i32* @IH_SIZE, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %52, %37
  br label %103

57:                                               ; preds = %3
  %58 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %59 = call i32 @B_NR_ITEMS(%struct.buffer_head* %58)
  %60 = icmp ne i32 %59, 1
  %61 = zext i1 %60 to i32
  %62 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %63 = call i32 @B_NR_ITEMS(%struct.buffer_head* %62)
  %64 = call i32 (i32, i8*, ...) @RFALSE(i32 %61, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %66 = call %struct.item_head* @item_head(%struct.buffer_head* %65, i32 0)
  store %struct.item_head* %66, %struct.item_head** %11, align 8
  %67 = load %struct.tree_balance*, %struct.tree_balance** %5, align 8
  %68 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %102

73:                                               ; preds = %57
  %74 = load %struct.item_head*, %struct.item_head** %11, align 8
  %75 = getelementptr inbounds %struct.item_head, %struct.item_head* %74, i32 0, i32 0
  %76 = load %struct.tree_balance*, %struct.tree_balance** %5, align 8
  %77 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %76, i32 0, i32 2
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.tree_balance*, %struct.tree_balance** %5, align 8
  %82 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @internal_key(i64 %80, i32 %85)
  %87 = call i32 @comp_short_le_keys(i32* %75, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %102, label %89

89:                                               ; preds = %73
  %90 = load %struct.item_head*, %struct.item_head** %11, align 8
  %91 = call i64 @is_direntry_le_ih(%struct.item_head* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load i32, i32* @IH_SIZE, align 4
  store i32 %94, i32* %9, align 4
  %95 = load %struct.item_head*, %struct.item_head** %11, align 8
  %96 = call i64 @le_ih_k_offset(%struct.item_head* %95)
  %97 = load i64, i64* @DOT_OFFSET, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 (i32, i8*, ...) @RFALSE(i32 %99, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0))
  br label %101

101:                                              ; preds = %93, %89
  br label %102

102:                                              ; preds = %101, %73, %57
  br label %103

103:                                              ; preds = %102, %56
  %104 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %105 = call i32 @MAX_CHILD_SIZE(%struct.buffer_head* %104)
  %106 = load %struct.virtual_node*, %struct.virtual_node** %8, align 8
  %107 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %105, %108
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %112, %113
  %115 = icmp sle i32 %109, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %103
  %117 = load %struct.tree_balance*, %struct.tree_balance** %5, align 8
  %118 = call i32 @set_parameters(%struct.tree_balance* %117, i32 0, i32 -1, i32 -1, i32 -1, i32* null, i32 -1, i32 -1)
  %119 = load %struct.tree_balance*, %struct.tree_balance** %5, align 8
  %120 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @leaves_removable, align 4
  %123 = call i32 @PROC_INFO_INC(i32 %121, i32 %122)
  store i32 1, i32* %4, align 4
  br label %125

124:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %116
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.buffer_head* @PATH_H_PBUFFER(i32, i32) #1

declare dso_local i32 @RFALSE(i32, i8*, ...) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local %struct.item_head* @item_head(%struct.buffer_head*, i32) #1

declare dso_local i32 @comp_short_le_keys(i32*, i32) #1

declare dso_local i32 @internal_key(i64, i32) #1

declare dso_local i64 @is_direntry_le_ih(%struct.item_head*) #1

declare dso_local i64 @le_ih_k_offset(%struct.item_head*) #1

declare dso_local i32 @MAX_CHILD_SIZE(%struct.buffer_head*) #1

declare dso_local i32 @set_parameters(%struct.tree_balance*, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @PROC_INFO_INC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
