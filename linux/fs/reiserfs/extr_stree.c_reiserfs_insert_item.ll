; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_reiserfs_insert_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_reiserfs_insert_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.treepath = type { i32 }
%struct.cpu_key = type { i32 }
%struct.item_head = type { i32 }
%struct.inode = type { %struct.TYPE_10__*, i32, i32 }
%struct.tree_balance = type { i32 }

@UNFM_P_SIZE = common dso_local global i32 0, align 4
@IH_SIZE = common dso_local global i64 0, align 8
@M_INSERT = common dso_local global i32 0, align 4
@REPEAT_SEARCH = common dso_local global i32 0, align 4
@insert_item_restarted = common dso_local global i32 0, align 4
@IO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ITEM_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"PAP-5760\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"key %K already exists in the tree\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@CARRY_ON = common dso_local global i32 0, align 4
@NO_DISK_SPACE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@REISERFS_DEBUG_CODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_insert_item(%struct.reiserfs_transaction_handle* %0, %struct.treepath* %1, %struct.cpu_key* %2, %struct.item_head* %3, %struct.inode* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.reiserfs_transaction_handle*, align 8
  %9 = alloca %struct.treepath*, align 8
  %10 = alloca %struct.cpu_key*, align 8
  %11 = alloca %struct.item_head*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.tree_balance, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %8, align 8
  store %struct.treepath* %1, %struct.treepath** %9, align 8
  store %struct.cpu_key* %2, %struct.cpu_key** %10, align 8
  store %struct.item_head* %3, %struct.item_head** %11, align 8
  store %struct.inode* %4, %struct.inode** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %20 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %21 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.inode*, %struct.inode** %12, align 8
  %28 = icmp ne %struct.inode* %27, null
  br i1 %28, label %29, label %73

29:                                               ; preds = %6
  %30 = load %struct.inode*, %struct.inode** %12, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = call i32 @get_generation(%struct.TYPE_10__* %32)
  store i32 %33, i32* %16, align 4
  %34 = load %struct.item_head*, %struct.item_head** %11, align 8
  %35 = call i32 @ih_item_len(%struct.item_head* %34)
  store i32 %35, i32* %17, align 4
  %36 = load %struct.inode*, %struct.inode** %12, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @S_ISLNK(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %29
  %42 = load %struct.item_head*, %struct.item_head** %11, align 8
  %43 = call i64 @is_direct_le_ih(%struct.item_head* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load %struct.inode*, %struct.inode** %12, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @UNFM_P_SIZE, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %17, align 4
  br label %53

53:                                               ; preds = %45, %41, %29
  %54 = load %struct.inode*, %struct.inode** %12, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = call i32 @reiserfs_write_unlock_nested(%struct.TYPE_10__* %56)
  store i32 %57, i32* %18, align 4
  %58 = load %struct.inode*, %struct.inode** %12, align 8
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @dquot_alloc_space_nodirty(%struct.inode* %58, i32 %59)
  store i32 %60, i32* %15, align 4
  %61 = load %struct.inode*, %struct.inode** %12, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = load i32, i32* %18, align 4
  %65 = call i32 @reiserfs_write_lock_nested(%struct.TYPE_10__* %63, i32 %64)
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %53
  %69 = load %struct.treepath*, %struct.treepath** %9, align 8
  %70 = call i32 @pathrelse(%struct.treepath* %69)
  %71 = load i32, i32* %15, align 4
  store i32 %71, i32* %7, align 4
  br label %175

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72, %6
  %74 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %75 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %76 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %75, i32 0, i32 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = load %struct.treepath*, %struct.treepath** %9, align 8
  %79 = load i64, i64* @IH_SIZE, align 8
  %80 = load %struct.item_head*, %struct.item_head** %11, align 8
  %81 = call i32 @ih_item_len(%struct.item_head* %80)
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %79, %82
  %84 = call i32 @init_tb_struct(%struct.reiserfs_transaction_handle* %74, %struct.tree_balance* %14, %struct.TYPE_10__* %77, %struct.treepath* %78, i64 %83)
  %85 = load %struct.inode*, %struct.inode** %12, align 8
  %86 = icmp ne %struct.inode* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %73
  %88 = load i32, i32* %16, align 4
  %89 = load %struct.inode*, %struct.inode** %12, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = call i64 @fs_changed(i32 %88, %struct.TYPE_10__* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %104

95:                                               ; preds = %87, %73
  br label %96

96:                                               ; preds = %134, %95
  %97 = load i32, i32* @M_INSERT, align 4
  %98 = load %struct.item_head*, %struct.item_head** %11, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = call i32 @fix_nodes(i32 %97, %struct.tree_balance* %14, %struct.item_head* %98, i8* %99)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* @REPEAT_SEARCH, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %135

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %94
  %105 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %106 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %105, i32 0, i32 0
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = load i32, i32* @insert_item_restarted, align 4
  %109 = call i32 @PROC_INFO_INC(%struct.TYPE_10__* %107, i32 %108)
  %110 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %111 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %110, i32 0, i32 0
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %114 = load %struct.treepath*, %struct.treepath** %9, align 8
  %115 = call i32 @search_item(%struct.TYPE_10__* %112, %struct.cpu_key* %113, %struct.treepath* %114)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* @IO_ERROR, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %104
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %15, align 4
  br label %156

122:                                              ; preds = %104
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* @ITEM_FOUND, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %128 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %127, i32 0, i32 0
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %131 = call i32 @reiserfs_warning(%struct.TYPE_10__* %129, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.cpu_key* %130)
  %132 = load i32, i32* @EEXIST, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %15, align 4
  br label %156

134:                                              ; preds = %122
  br label %96

135:                                              ; preds = %96
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* @CARRY_ON, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load %struct.item_head*, %struct.item_head** %11, align 8
  %141 = load i8*, i8** %13, align 8
  %142 = load i32, i32* @M_INSERT, align 4
  %143 = call i32 @do_balance(%struct.tree_balance* %14, %struct.item_head* %140, i8* %141, i32 %142)
  store i32 0, i32* %7, align 4
  br label %175

144:                                              ; preds = %135
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* @NO_DISK_SPACE, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load i32, i32* @ENOSPC, align 4
  %150 = sub nsw i32 0, %149
  br label %154

151:                                              ; preds = %144
  %152 = load i32, i32* @EIO, align 4
  %153 = sub nsw i32 0, %152
  br label %154

154:                                              ; preds = %151, %148
  %155 = phi i32 [ %150, %148 ], [ %153, %151 ]
  store i32 %155, i32* %15, align 4
  br label %156

156:                                              ; preds = %154, %126, %119
  %157 = call i32 @unfix_nodes(%struct.tree_balance* %14)
  %158 = load %struct.inode*, %struct.inode** %12, align 8
  %159 = icmp ne %struct.inode* %158, null
  br i1 %159, label %160, label %173

160:                                              ; preds = %156
  %161 = load %struct.inode*, %struct.inode** %12, align 8
  %162 = getelementptr inbounds %struct.inode, %struct.inode* %161, i32 0, i32 0
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = call i32 @reiserfs_write_unlock_nested(%struct.TYPE_10__* %163)
  store i32 %164, i32* %19, align 4
  %165 = load %struct.inode*, %struct.inode** %12, align 8
  %166 = load i32, i32* %17, align 4
  %167 = call i32 @dquot_free_space_nodirty(%struct.inode* %165, i32 %166)
  %168 = load %struct.inode*, %struct.inode** %12, align 8
  %169 = getelementptr inbounds %struct.inode, %struct.inode* %168, i32 0, i32 0
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = load i32, i32* %19, align 4
  %172 = call i32 @reiserfs_write_lock_nested(%struct.TYPE_10__* %170, i32 %171)
  br label %173

173:                                              ; preds = %160, %156
  %174 = load i32, i32* %15, align 4
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %173, %139, %68
  %176 = load i32, i32* %7, align 4
  ret i32 %176
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @get_generation(%struct.TYPE_10__*) #1

declare dso_local i32 @ih_item_len(%struct.item_head*) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i64 @is_direct_le_ih(%struct.item_head*) #1

declare dso_local i32 @reiserfs_write_unlock_nested(%struct.TYPE_10__*) #1

declare dso_local i32 @dquot_alloc_space_nodirty(%struct.inode*, i32) #1

declare dso_local i32 @reiserfs_write_lock_nested(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @pathrelse(%struct.treepath*) #1

declare dso_local i32 @init_tb_struct(%struct.reiserfs_transaction_handle*, %struct.tree_balance*, %struct.TYPE_10__*, %struct.treepath*, i64) #1

declare dso_local i64 @fs_changed(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @fix_nodes(i32, %struct.tree_balance*, %struct.item_head*, i8*) #1

declare dso_local i32 @PROC_INFO_INC(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @search_item(%struct.TYPE_10__*, %struct.cpu_key*, %struct.treepath*) #1

declare dso_local i32 @reiserfs_warning(%struct.TYPE_10__*, i8*, i8*, %struct.cpu_key*) #1

declare dso_local i32 @do_balance(%struct.tree_balance*, %struct.item_head*, i8*, i32) #1

declare dso_local i32 @unfix_nodes(%struct.tree_balance*) #1

declare dso_local i32 @dquot_free_space_nodirty(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
