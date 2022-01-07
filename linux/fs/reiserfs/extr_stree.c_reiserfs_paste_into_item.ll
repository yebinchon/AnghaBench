; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_reiserfs_paste_into_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_reiserfs_paste_into_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32, i32 }
%struct.treepath = type { i32 }
%struct.cpu_key = type { i32 }
%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.tree_balance = type { i32 }

@M_PASTE = common dso_local global i32 0, align 4
@REPEAT_SEARCH = common dso_local global i32 0, align 4
@paste_into_item_restarted = common dso_local global i32 0, align 4
@IO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@POSITION_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"PAP-5710\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"entry or pasted byte (%K) exists\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@CARRY_ON = common dso_local global i32 0, align 4
@NO_DISK_SPACE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@REISERFS_DEBUG_CODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_paste_into_item(%struct.reiserfs_transaction_handle* %0, %struct.treepath* %1, %struct.cpu_key* %2, %struct.inode* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.reiserfs_transaction_handle*, align 8
  %9 = alloca %struct.treepath*, align 8
  %10 = alloca %struct.cpu_key*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.super_block*, align 8
  %15 = alloca %struct.tree_balance, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %8, align 8
  store %struct.treepath* %1, %struct.treepath** %9, align 8
  store %struct.cpu_key* %2, %struct.cpu_key** %10, align 8
  store %struct.inode* %3, %struct.inode** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.inode*, %struct.inode** %11, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = load %struct.super_block*, %struct.super_block** %20, align 8
  store %struct.super_block* %21, %struct.super_block** %14, align 8
  %22 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %23 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.inode*, %struct.inode** %11, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 1
  %31 = load %struct.super_block*, %struct.super_block** %30, align 8
  %32 = call i32 @get_generation(%struct.super_block* %31)
  store i32 %32, i32* %17, align 4
  %33 = load %struct.super_block*, %struct.super_block** %14, align 8
  %34 = call i32 @reiserfs_write_unlock_nested(%struct.super_block* %33)
  store i32 %34, i32* %18, align 4
  %35 = load %struct.inode*, %struct.inode** %11, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @dquot_alloc_space_nodirty(%struct.inode* %35, i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load %struct.super_block*, %struct.super_block** %14, align 8
  %39 = load i32, i32* %18, align 4
  %40 = call i32 @reiserfs_write_lock_nested(%struct.super_block* %38, i32 %39)
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %6
  %44 = load %struct.treepath*, %struct.treepath** %9, align 8
  %45 = call i32 @pathrelse(%struct.treepath* %44)
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %7, align 4
  br label %132

47:                                               ; preds = %6
  %48 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %49 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %50 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.treepath*, %struct.treepath** %9, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @init_tb_struct(%struct.reiserfs_transaction_handle* %48, %struct.tree_balance* %15, i32 %51, %struct.treepath* %52, i32 %53)
  %55 = load i32, i32* %17, align 4
  %56 = load %struct.inode*, %struct.inode** %11, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  %58 = load %struct.super_block*, %struct.super_block** %57, align 8
  %59 = call i64 @fs_changed(i32 %55, %struct.super_block* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  br label %70

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %100, %62
  %64 = load i32, i32* @M_PASTE, align 4
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 @fix_nodes(i32 %64, %struct.tree_balance* %15, i32* null, i8* %65)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* @REPEAT_SEARCH, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %101

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %61
  %71 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %72 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @paste_into_item_restarted, align 4
  %75 = call i32 @PROC_INFO_INC(i32 %73, i32 %74)
  %76 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %77 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %80 = load %struct.treepath*, %struct.treepath** %9, align 8
  %81 = call i32 @search_for_position_by_key(i32 %78, %struct.cpu_key* %79, %struct.treepath* %80)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* @IO_ERROR, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %70
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %16, align 4
  br label %121

88:                                               ; preds = %70
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* @POSITION_FOUND, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load %struct.inode*, %struct.inode** %11, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 1
  %95 = load %struct.super_block*, %struct.super_block** %94, align 8
  %96 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %97 = call i32 @reiserfs_warning(%struct.super_block* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.cpu_key* %96)
  %98 = load i32, i32* @EEXIST, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %16, align 4
  br label %121

100:                                              ; preds = %88
  br label %63

101:                                              ; preds = %63
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* @CARRY_ON, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i8*, i8** %12, align 8
  %107 = load i32, i32* @M_PASTE, align 4
  %108 = call i32 @do_balance(%struct.tree_balance* %15, i32* null, i8* %106, i32 %107)
  store i32 0, i32* %7, align 4
  br label %132

109:                                              ; preds = %101
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* @NO_DISK_SPACE, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i32, i32* @ENOSPC, align 4
  %115 = sub nsw i32 0, %114
  br label %119

116:                                              ; preds = %109
  %117 = load i32, i32* @EIO, align 4
  %118 = sub nsw i32 0, %117
  br label %119

119:                                              ; preds = %116, %113
  %120 = phi i32 [ %115, %113 ], [ %118, %116 ]
  store i32 %120, i32* %16, align 4
  br label %121

121:                                              ; preds = %119, %92, %85
  %122 = call i32 @unfix_nodes(%struct.tree_balance* %15)
  %123 = load %struct.super_block*, %struct.super_block** %14, align 8
  %124 = call i32 @reiserfs_write_unlock_nested(%struct.super_block* %123)
  store i32 %124, i32* %18, align 4
  %125 = load %struct.inode*, %struct.inode** %11, align 8
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @dquot_free_space_nodirty(%struct.inode* %125, i32 %126)
  %128 = load %struct.super_block*, %struct.super_block** %14, align 8
  %129 = load i32, i32* %18, align 4
  %130 = call i32 @reiserfs_write_lock_nested(%struct.super_block* %128, i32 %129)
  %131 = load i32, i32* %16, align 4
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %121, %105, %43
  %133 = load i32, i32* %7, align 4
  ret i32 %133
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @get_generation(%struct.super_block*) #1

declare dso_local i32 @reiserfs_write_unlock_nested(%struct.super_block*) #1

declare dso_local i32 @dquot_alloc_space_nodirty(%struct.inode*, i32) #1

declare dso_local i32 @reiserfs_write_lock_nested(%struct.super_block*, i32) #1

declare dso_local i32 @pathrelse(%struct.treepath*) #1

declare dso_local i32 @init_tb_struct(%struct.reiserfs_transaction_handle*, %struct.tree_balance*, i32, %struct.treepath*, i32) #1

declare dso_local i64 @fs_changed(i32, %struct.super_block*) #1

declare dso_local i32 @fix_nodes(i32, %struct.tree_balance*, i32*, i8*) #1

declare dso_local i32 @PROC_INFO_INC(i32, i32) #1

declare dso_local i32 @search_for_position_by_key(i32, %struct.cpu_key*, %struct.treepath*) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*, %struct.cpu_key*) #1

declare dso_local i32 @do_balance(%struct.tree_balance*, i32*, i8*, i32) #1

declare dso_local i32 @unfix_nodes(%struct.tree_balance*) #1

declare dso_local i32 @dquot_free_space_nodirty(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
