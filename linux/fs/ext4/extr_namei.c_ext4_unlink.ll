; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64, i8*, i8*, i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.ext4_dir_entry_2 = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@EXT4_HT_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Deleting file '%.*s' with no links\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @ext4_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
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
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
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
  %23 = load %struct.dentry*, %struct.dentry** %5, align 8
  %24 = call i32 @trace_ext4_unlink_enter(%struct.inode* %22, %struct.dentry* %23)
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = call i32 @dquot_initialize(%struct.inode* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %161

31:                                               ; preds = %21
  %32 = load %struct.dentry*, %struct.dentry** %5, align 8
  %33 = call %struct.inode* @d_inode(%struct.dentry* %32)
  %34 = call i32 @dquot_initialize(%struct.inode* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %161

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = load %struct.dentry*, %struct.dentry** %5, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 0
  %45 = call %struct.buffer_head* @ext4_find_entry(%struct.inode* %42, %struct.TYPE_2__* %44, %struct.ext4_dir_entry_2** %9, i32* null)
  store %struct.buffer_head* %45, %struct.buffer_head** %8, align 8
  %46 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %47 = call i64 @IS_ERR(%struct.buffer_head* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %51 = call i32 @PTR_ERR(%struct.buffer_head* %50)
  store i32 %51, i32* %3, align 4
  br label %161

52:                                               ; preds = %39
  %53 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %54 = icmp ne %struct.buffer_head* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  br label %148

56:                                               ; preds = %52
  %57 = load %struct.dentry*, %struct.dentry** %5, align 8
  %58 = call %struct.inode* @d_inode(%struct.dentry* %57)
  store %struct.inode* %58, %struct.inode** %7, align 8
  %59 = load i32, i32* @EFSCORRUPTED, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  %61 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %9, align 8
  %62 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @le32_to_cpu(i32 %63)
  %65 = load %struct.inode*, %struct.inode** %7, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  br label %148

70:                                               ; preds = %56
  %71 = load %struct.inode*, %struct.inode** %4, align 8
  %72 = load i32, i32* @EXT4_HT_DIR, align 4
  %73 = load %struct.inode*, %struct.inode** %4, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @EXT4_DATA_TRANS_BLOCKS(i32 %75)
  %77 = call %struct.buffer_head* @ext4_journal_start(%struct.inode* %71, i32 %72, i32 %76)
  store %struct.buffer_head* %77, %struct.buffer_head** %10, align 8
  %78 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %79 = call i64 @IS_ERR(%struct.buffer_head* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %83 = call i32 @PTR_ERR(%struct.buffer_head* %82)
  store i32 %83, i32* %6, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  br label %148

84:                                               ; preds = %70
  %85 = load %struct.inode*, %struct.inode** %4, align 8
  %86 = call i64 @IS_DIRSYNC(%struct.inode* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %90 = call i32 @ext4_handle_sync(%struct.buffer_head* %89)
  br label %91

91:                                               ; preds = %88, %84
  %92 = load %struct.inode*, %struct.inode** %7, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %91
  %97 = load %struct.inode*, %struct.inode** %7, align 8
  %98 = load %struct.dentry*, %struct.dentry** %5, align 8
  %99 = getelementptr inbounds %struct.dentry, %struct.dentry* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.dentry*, %struct.dentry** %5, align 8
  %103 = getelementptr inbounds %struct.dentry, %struct.dentry* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ext4_warning_inode(%struct.inode* %97, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %105)
  %107 = load %struct.inode*, %struct.inode** %7, align 8
  %108 = call i32 @set_nlink(%struct.inode* %107, i32 1)
  br label %109

109:                                              ; preds = %96, %91
  %110 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %111 = load %struct.inode*, %struct.inode** %4, align 8
  %112 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %9, align 8
  %113 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %114 = call i32 @ext4_delete_entry(%struct.buffer_head* %110, %struct.inode* %111, %struct.ext4_dir_entry_2* %112, %struct.buffer_head* %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %148

118:                                              ; preds = %109
  %119 = load %struct.inode*, %struct.inode** %4, align 8
  %120 = call i8* @current_time(%struct.inode* %119)
  %121 = load %struct.inode*, %struct.inode** %4, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 3
  store i8* %120, i8** %122, align 8
  %123 = load %struct.inode*, %struct.inode** %4, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 2
  store i8* %120, i8** %124, align 8
  %125 = load %struct.inode*, %struct.inode** %4, align 8
  %126 = call i32 @ext4_update_dx_flag(%struct.inode* %125)
  %127 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %128 = load %struct.inode*, %struct.inode** %4, align 8
  %129 = call i32 @ext4_mark_inode_dirty(%struct.buffer_head* %127, %struct.inode* %128)
  %130 = load %struct.inode*, %struct.inode** %7, align 8
  %131 = call i32 @drop_nlink(%struct.inode* %130)
  %132 = load %struct.inode*, %struct.inode** %7, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %118
  %137 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %138 = load %struct.inode*, %struct.inode** %7, align 8
  %139 = call i32 @ext4_orphan_add(%struct.buffer_head* %137, %struct.inode* %138)
  br label %140

140:                                              ; preds = %136, %118
  %141 = load %struct.inode*, %struct.inode** %7, align 8
  %142 = call i8* @current_time(%struct.inode* %141)
  %143 = load %struct.inode*, %struct.inode** %7, align 8
  %144 = getelementptr inbounds %struct.inode, %struct.inode* %143, i32 0, i32 2
  store i8* %142, i8** %144, align 8
  %145 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %146 = load %struct.inode*, %struct.inode** %7, align 8
  %147 = call i32 @ext4_mark_inode_dirty(%struct.buffer_head* %145, %struct.inode* %146)
  br label %148

148:                                              ; preds = %140, %117, %81, %69, %55
  %149 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %150 = call i32 @brelse(%struct.buffer_head* %149)
  %151 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %152 = icmp ne %struct.buffer_head* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %155 = call i32 @ext4_journal_stop(%struct.buffer_head* %154)
  br label %156

156:                                              ; preds = %153, %148
  %157 = load %struct.dentry*, %struct.dentry** %5, align 8
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @trace_ext4_unlink_exit(%struct.dentry* %157, i32 %158)
  %160 = load i32, i32* %6, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %156, %49, %37, %29, %18
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_forced_shutdown(i32) #1

declare dso_local i32 @EXT4_SB(i32) #1

declare dso_local i32 @trace_ext4_unlink_enter(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.buffer_head* @ext4_find_entry(%struct.inode*, %struct.TYPE_2__*, %struct.ext4_dir_entry_2**, i32*) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.buffer_head* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i32 @EXT4_DATA_TRANS_BLOCKS(i32) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @ext4_handle_sync(%struct.buffer_head*) #1

declare dso_local i32 @ext4_warning_inode(%struct.inode*, i8*, i32, i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @ext4_delete_entry(%struct.buffer_head*, %struct.inode*, %struct.ext4_dir_entry_2*, %struct.buffer_head*) #1

declare dso_local i8* @current_time(%struct.inode*) #1

declare dso_local i32 @ext4_update_dx_flag(%struct.inode*) #1

declare dso_local i32 @ext4_mark_inode_dirty(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @ext4_orphan_add(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ext4_journal_stop(%struct.buffer_head*) #1

declare dso_local i32 @trace_ext4_unlink_exit(%struct.dentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
