; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32*, i32* }
%struct.dentry = type { i32 }

@EMLINK = common dso_local global i32 0, align 4
@EXT4_INDEX_EXTRA_TRANS_BLOCKS = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@EXT4_HT_DIR = common dso_local global i32 0, align 4
@ext4_dir_inode_operations = common dso_local global i32 0, align 4
@ext4_dir_operations = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @ext4_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call i64 @EXT4_DIR_LINK_MAX(%struct.inode* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EMLINK, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %131

19:                                               ; preds = %3
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call i32 @dquot_initialize(%struct.inode* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %131

26:                                               ; preds = %19
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @EXT4_DATA_TRANS_BLOCKS(i32 %29)
  %31 = load i32, i32* @EXT4_INDEX_EXTRA_TRANS_BLOCKS, align 4
  %32 = add nsw i32 %30, %31
  %33 = add nsw i32 %32, 3
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %128, %26
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = load i32, i32* @S_IFDIR, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.dentry*, %struct.dentry** %6, align 8
  %40 = getelementptr inbounds %struct.dentry, %struct.dentry* %39, i32 0, i32 0
  %41 = load i32, i32* @EXT4_HT_DIR, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call %struct.inode* @ext4_new_inode_start_handle(%struct.inode* %35, i32 %38, i32* %40, i32 0, i32* null, i32 %41, i32 %42)
  store %struct.inode* %43, %struct.inode** %9, align 8
  %44 = call i32* (...) @ext4_journal_current_handle()
  store i32* %44, i32** %8, align 8
  %45 = load %struct.inode*, %struct.inode** %9, align 8
  %46 = call i32 @PTR_ERR(%struct.inode* %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.inode*, %struct.inode** %9, align 8
  %48 = call i64 @IS_ERR(%struct.inode* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %34
  br label %111

51:                                               ; preds = %34
  %52 = load %struct.inode*, %struct.inode** %9, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 2
  store i32* @ext4_dir_inode_operations, i32** %53, align 8
  %54 = load %struct.inode*, %struct.inode** %9, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  store i32* @ext4_dir_operations, i32** %55, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = load %struct.inode*, %struct.inode** %9, align 8
  %59 = call i32 @ext4_init_new_dir(i32* %56, %struct.inode* %57, %struct.inode* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %78

63:                                               ; preds = %51
  %64 = load i32*, i32** %8, align 8
  %65 = load %struct.inode*, %struct.inode** %9, align 8
  %66 = call i32 @ext4_mark_inode_dirty(i32* %64, %struct.inode* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %63
  %70 = load i32*, i32** %8, align 8
  %71 = load %struct.dentry*, %struct.dentry** %6, align 8
  %72 = load %struct.inode*, %struct.inode** %9, align 8
  %73 = call i32 @ext4_add_entry(i32* %70, %struct.dentry* %71, %struct.inode* %72)
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %69, %63
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  br label %78

78:                                               ; preds = %99, %77, %62
  %79 = load %struct.inode*, %struct.inode** %9, align 8
  %80 = call i32 @clear_nlink(%struct.inode* %79)
  %81 = load %struct.inode*, %struct.inode** %9, align 8
  %82 = call i32 @unlock_new_inode(%struct.inode* %81)
  %83 = load i32*, i32** %8, align 8
  %84 = load %struct.inode*, %struct.inode** %9, align 8
  %85 = call i32 @ext4_mark_inode_dirty(i32* %83, %struct.inode* %84)
  %86 = load %struct.inode*, %struct.inode** %9, align 8
  %87 = call i32 @iput(%struct.inode* %86)
  br label %111

88:                                               ; preds = %74
  %89 = load i32*, i32** %8, align 8
  %90 = load %struct.inode*, %struct.inode** %5, align 8
  %91 = call i32 @ext4_inc_count(i32* %89, %struct.inode* %90)
  %92 = load %struct.inode*, %struct.inode** %5, align 8
  %93 = call i32 @ext4_update_dx_flag(%struct.inode* %92)
  %94 = load i32*, i32** %8, align 8
  %95 = load %struct.inode*, %struct.inode** %5, align 8
  %96 = call i32 @ext4_mark_inode_dirty(i32* %94, %struct.inode* %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %78

100:                                              ; preds = %88
  %101 = load %struct.dentry*, %struct.dentry** %6, align 8
  %102 = load %struct.inode*, %struct.inode** %9, align 8
  %103 = call i32 @d_instantiate_new(%struct.dentry* %101, %struct.inode* %102)
  %104 = load %struct.inode*, %struct.inode** %5, align 8
  %105 = call i64 @IS_DIRSYNC(%struct.inode* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32*, i32** %8, align 8
  %109 = call i32 @ext4_handle_sync(i32* %108)
  br label %110

110:                                              ; preds = %107, %100
  br label %111

111:                                              ; preds = %110, %78, %50
  %112 = load i32*, i32** %8, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32*, i32** %8, align 8
  %116 = call i32 @ext4_journal_stop(i32* %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @ENOSPC, align 4
  %120 = sub nsw i32 0, %119
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load %struct.inode*, %struct.inode** %5, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @ext4_should_retry_alloc(i32 %125, i32* %12)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %34

129:                                              ; preds = %122, %117
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %129, %24, %16
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i64 @EXT4_DIR_LINK_MAX(%struct.inode*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @EXT4_DATA_TRANS_BLOCKS(i32) #1

declare dso_local %struct.inode* @ext4_new_inode_start_handle(%struct.inode*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32* @ext4_journal_current_handle(...) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @ext4_init_new_dir(i32*, %struct.inode*, %struct.inode*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_add_entry(i32*, %struct.dentry*, %struct.inode*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ext4_inc_count(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_update_dx_flag(%struct.inode*) #1

declare dso_local i32 @d_instantiate_new(%struct.dentry*, %struct.inode*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @ext4_handle_sync(i32*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i64 @ext4_should_retry_alloc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
