; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_rmdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i64, i32, i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.ext4_dir_entry_2 = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@EXT4_HT_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"empty directory '%.*s' has too many links (%u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @ext4_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.ext4_dir_entry_2*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @EXT4_SB(i32 %13)
  %15 = call i32 @ext4_forced_shutdown(i32 %14)
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %161

21:                                               ; preds = %2
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call i32 @dquot_initialize(%struct.inode* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %161

28:                                               ; preds = %21
  %29 = load %struct.dentry*, %struct.dentry** %5, align 8
  %30 = call %struct.inode* @d_inode(%struct.dentry* %29)
  %31 = call i32 @dquot_initialize(%struct.inode* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %161

36:                                               ; preds = %28
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = load %struct.dentry*, %struct.dentry** %5, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 0
  %42 = call %struct.buffer_head* @ext4_find_entry(%struct.inode* %39, %struct.TYPE_2__* %41, %struct.ext4_dir_entry_2** %9, i32* null)
  store %struct.buffer_head* %42, %struct.buffer_head** %8, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %44 = call i64 @IS_ERR(%struct.buffer_head* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %48 = call i32 @PTR_ERR(%struct.buffer_head* %47)
  store i32 %48, i32* %3, align 4
  br label %161

49:                                               ; preds = %36
  %50 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %51 = icmp ne %struct.buffer_head* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  br label %151

53:                                               ; preds = %49
  %54 = load %struct.dentry*, %struct.dentry** %5, align 8
  %55 = call %struct.inode* @d_inode(%struct.dentry* %54)
  store %struct.inode* %55, %struct.inode** %7, align 8
  %56 = load i32, i32* @EFSCORRUPTED, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  %58 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %9, align 8
  %59 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @le32_to_cpu(i32 %60)
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %151

67:                                               ; preds = %53
  %68 = load i32, i32* @ENOTEMPTY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  %70 = load %struct.inode*, %struct.inode** %7, align 8
  %71 = call i32 @ext4_empty_dir(%struct.inode* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  br label %151

74:                                               ; preds = %67
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = load i32, i32* @EXT4_HT_DIR, align 4
  %77 = load %struct.inode*, %struct.inode** %4, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @EXT4_DATA_TRANS_BLOCKS(i32 %79)
  %81 = call %struct.buffer_head* @ext4_journal_start(%struct.inode* %75, i32 %76, i32 %80)
  store %struct.buffer_head* %81, %struct.buffer_head** %10, align 8
  %82 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %83 = call i64 @IS_ERR(%struct.buffer_head* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %74
  %86 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %87 = call i32 @PTR_ERR(%struct.buffer_head* %86)
  store i32 %87, i32* %6, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  br label %151

88:                                               ; preds = %74
  %89 = load %struct.inode*, %struct.inode** %4, align 8
  %90 = call i64 @IS_DIRSYNC(%struct.inode* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %94 = call i32 @ext4_handle_sync(%struct.buffer_head* %93)
  br label %95

95:                                               ; preds = %92, %88
  %96 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %97 = load %struct.inode*, %struct.inode** %4, align 8
  %98 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %9, align 8
  %99 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %100 = call i32 @ext4_delete_entry(%struct.buffer_head* %96, %struct.inode* %97, %struct.ext4_dir_entry_2* %98, %struct.buffer_head* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %151

104:                                              ; preds = %95
  %105 = load %struct.inode*, %struct.inode** %7, align 8
  %106 = call i32 @EXT4_DIR_LINK_EMPTY(%struct.inode* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %122, label %108

108:                                              ; preds = %104
  %109 = load %struct.inode*, %struct.inode** %7, align 8
  %110 = load %struct.dentry*, %struct.dentry** %5, align 8
  %111 = getelementptr inbounds %struct.dentry, %struct.dentry* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.dentry*, %struct.dentry** %5, align 8
  %115 = getelementptr inbounds %struct.dentry, %struct.dentry* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.inode*, %struct.inode** %7, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @ext4_warning_inode(%struct.inode* %109, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %117, i32 %120)
  br label %122

122:                                              ; preds = %108, %104
  %123 = load %struct.inode*, %struct.inode** %7, align 8
  %124 = call i32 @inode_inc_iversion(%struct.inode* %123)
  %125 = load %struct.inode*, %struct.inode** %7, align 8
  %126 = call i32 @clear_nlink(%struct.inode* %125)
  %127 = load %struct.inode*, %struct.inode** %7, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 3
  store i64 0, i64* %128, align 8
  %129 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %130 = load %struct.inode*, %struct.inode** %7, align 8
  %131 = call i32 @ext4_orphan_add(%struct.buffer_head* %129, %struct.inode* %130)
  %132 = load %struct.inode*, %struct.inode** %7, align 8
  %133 = call i32 @current_time(%struct.inode* %132)
  %134 = load %struct.inode*, %struct.inode** %4, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 8
  %136 = load %struct.inode*, %struct.inode** %4, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 2
  store i32 %133, i32* %137, align 4
  %138 = load %struct.inode*, %struct.inode** %7, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 2
  store i32 %133, i32* %139, align 4
  %140 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %141 = load %struct.inode*, %struct.inode** %7, align 8
  %142 = call i32 @ext4_mark_inode_dirty(%struct.buffer_head* %140, %struct.inode* %141)
  %143 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %144 = load %struct.inode*, %struct.inode** %4, align 8
  %145 = call i32 @ext4_dec_count(%struct.buffer_head* %143, %struct.inode* %144)
  %146 = load %struct.inode*, %struct.inode** %4, align 8
  %147 = call i32 @ext4_update_dx_flag(%struct.inode* %146)
  %148 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %149 = load %struct.inode*, %struct.inode** %4, align 8
  %150 = call i32 @ext4_mark_inode_dirty(%struct.buffer_head* %148, %struct.inode* %149)
  br label %151

151:                                              ; preds = %122, %103, %85, %73, %66, %52
  %152 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %153 = call i32 @brelse(%struct.buffer_head* %152)
  %154 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %155 = icmp ne %struct.buffer_head* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %158 = call i32 @ext4_journal_stop(%struct.buffer_head* %157)
  br label %159

159:                                              ; preds = %156, %151
  %160 = load i32, i32* %6, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %159, %46, %34, %26, %18
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_forced_shutdown(i32) #1

declare dso_local i32 @EXT4_SB(i32) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.buffer_head* @ext4_find_entry(%struct.inode*, %struct.TYPE_2__*, %struct.ext4_dir_entry_2**, i32*) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_empty_dir(%struct.inode*) #1

declare dso_local %struct.buffer_head* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i32 @EXT4_DATA_TRANS_BLOCKS(i32) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @ext4_handle_sync(%struct.buffer_head*) #1

declare dso_local i32 @ext4_delete_entry(%struct.buffer_head*, %struct.inode*, %struct.ext4_dir_entry_2*, %struct.buffer_head*) #1

declare dso_local i32 @EXT4_DIR_LINK_EMPTY(%struct.inode*) #1

declare dso_local i32 @ext4_warning_inode(%struct.inode*, i8*, i32, i32, i32) #1

declare dso_local i32 @inode_inc_iversion(%struct.inode*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @ext4_orphan_add(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @ext4_mark_inode_dirty(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @ext4_dec_count(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @ext4_update_dx_flag(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ext4_journal_stop(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
