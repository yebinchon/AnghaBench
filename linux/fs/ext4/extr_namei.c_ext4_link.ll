; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.dentry = type { %struct.inode* }
%struct.TYPE_2__ = type { i32 }

@EXT4_LINK_MAX = common dso_local global i32 0, align 4
@EMLINK = common dso_local global i32 0, align 4
@EXT4_INODE_PROJINHERIT = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@EXT4_HT_DIR = common dso_local global i32 0, align 4
@EXT4_INDEX_EXTRA_TRANS_BLOCKS = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @ext4_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = call %struct.inode* @d_inode(%struct.dentry* %12)
  store %struct.inode* %13, %struct.inode** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.inode*, %struct.inode** %9, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @EXT4_LINK_MAX, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EMLINK, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %137

22:                                               ; preds = %3
  %23 = load %struct.dentry*, %struct.dentry** %5, align 8
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = load %struct.dentry*, %struct.dentry** %7, align 8
  %26 = call i32 @fscrypt_prepare_link(%struct.dentry* %23, %struct.inode* %24, %struct.dentry* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  br label %137

31:                                               ; preds = %22
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = load i32, i32* @EXT4_INODE_PROJINHERIT, align 4
  %34 = call i64 @ext4_test_inode_flag(%struct.inode* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dentry*, %struct.dentry** %5, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 0
  %43 = load %struct.inode*, %struct.inode** %42, align 8
  %44 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @projid_eq(i32 %40, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %36
  %50 = load i32, i32* @EXDEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %137

52:                                               ; preds = %36, %31
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = call i32 @dquot_initialize(%struct.inode* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %137

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %134, %59
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = load i32, i32* @EXT4_HT_DIR, align 4
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @EXT4_DATA_TRANS_BLOCKS(i32 %65)
  %67 = load i64, i64* @EXT4_INDEX_EXTRA_TRANS_BLOCKS, align 8
  %68 = add nsw i64 %66, %67
  %69 = add nsw i64 %68, 1
  %70 = call i32* @ext4_journal_start(%struct.inode* %61, i32 %62, i64 %69)
  store i32* %70, i32** %8, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = call i64 @IS_ERR(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %60
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @PTR_ERR(i32* %75)
  store i32 %76, i32* %4, align 4
  br label %137

77:                                               ; preds = %60
  %78 = load %struct.inode*, %struct.inode** %6, align 8
  %79 = call i64 @IS_DIRSYNC(%struct.inode* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @ext4_handle_sync(i32* %82)
  br label %84

84:                                               ; preds = %81, %77
  %85 = load %struct.inode*, %struct.inode** %9, align 8
  %86 = call i32 @current_time(%struct.inode* %85)
  %87 = load %struct.inode*, %struct.inode** %9, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = load %struct.inode*, %struct.inode** %9, align 8
  %91 = call i32 @ext4_inc_count(i32* %89, %struct.inode* %90)
  %92 = load %struct.inode*, %struct.inode** %9, align 8
  %93 = call i32 @ihold(%struct.inode* %92)
  %94 = load i32*, i32** %8, align 8
  %95 = load %struct.dentry*, %struct.dentry** %7, align 8
  %96 = load %struct.inode*, %struct.inode** %9, align 8
  %97 = call i32 @ext4_add_entry(i32* %94, %struct.dentry* %95, %struct.inode* %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %116, label %100

100:                                              ; preds = %84
  %101 = load i32*, i32** %8, align 8
  %102 = load %struct.inode*, %struct.inode** %9, align 8
  %103 = call i32 @ext4_mark_inode_dirty(i32* %101, %struct.inode* %102)
  %104 = load %struct.inode*, %struct.inode** %9, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %112

108:                                              ; preds = %100
  %109 = load i32*, i32** %8, align 8
  %110 = load %struct.inode*, %struct.inode** %9, align 8
  %111 = call i32 @ext4_orphan_del(i32* %109, %struct.inode* %110)
  br label %112

112:                                              ; preds = %108, %100
  %113 = load %struct.dentry*, %struct.dentry** %7, align 8
  %114 = load %struct.inode*, %struct.inode** %9, align 8
  %115 = call i32 @d_instantiate(%struct.dentry* %113, %struct.inode* %114)
  br label %121

116:                                              ; preds = %84
  %117 = load %struct.inode*, %struct.inode** %9, align 8
  %118 = call i32 @drop_nlink(%struct.inode* %117)
  %119 = load %struct.inode*, %struct.inode** %9, align 8
  %120 = call i32 @iput(%struct.inode* %119)
  br label %121

121:                                              ; preds = %116, %112
  %122 = load i32*, i32** %8, align 8
  %123 = call i32 @ext4_journal_stop(i32* %122)
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @ENOSPC, align 4
  %126 = sub nsw i32 0, %125
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %121
  %129 = load %struct.inode*, %struct.inode** %6, align 8
  %130 = getelementptr inbounds %struct.inode, %struct.inode* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @ext4_should_retry_alloc(i32 %131, i32* %11)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %60

135:                                              ; preds = %128, %121
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %135, %74, %57, %49, %29, %19
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @fscrypt_prepare_link(%struct.dentry*, %struct.inode*, %struct.dentry*) #1

declare dso_local i64 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @projid_eq(i32, i32) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i64) #1

declare dso_local i64 @EXT4_DATA_TRANS_BLOCKS(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @ext4_handle_sync(i32*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @ext4_inc_count(i32*, %struct.inode*) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @ext4_add_entry(i32*, %struct.dentry*, %struct.inode*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_orphan_del(i32*, %struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i64 @ext4_should_retry_alloc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
