; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32*, i32* }
%struct.dentry = type { i32 }

@EXT4_INDEX_EXTRA_TRANS_BLOCKS = common dso_local global i32 0, align 4
@EXT4_HT_DIR = common dso_local global i32 0, align 4
@ext4_file_inode_operations = common dso_local global i32 0, align 4
@ext4_file_operations = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @ext4_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call i32 @dquot_initialize(%struct.inode* %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %84

21:                                               ; preds = %4
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @EXT4_DATA_TRANS_BLOCKS(i32 %24)
  %26 = load i32, i32* @EXT4_INDEX_EXTRA_TRANS_BLOCKS, align 4
  %27 = add nsw i32 %25, %26
  %28 = add nsw i32 %27, 3
  store i32 %28, i32* %13, align 4
  br label %29

29:                                               ; preds = %81, %21
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.dentry*, %struct.dentry** %7, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 0
  %34 = load i32, i32* @EXT4_HT_DIR, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call %struct.inode* @ext4_new_inode_start_handle(%struct.inode* %30, i32 %31, i32* %33, i32 0, i32* null, i32 %34, i32 %35)
  store %struct.inode* %36, %struct.inode** %11, align 8
  %37 = call i32* (...) @ext4_journal_current_handle()
  store i32* %37, i32** %10, align 8
  %38 = load %struct.inode*, %struct.inode** %11, align 8
  %39 = call i32 @PTR_ERR(%struct.inode* %38)
  store i32 %39, i32* %12, align 4
  %40 = load %struct.inode*, %struct.inode** %11, align 8
  %41 = call i32 @IS_ERR(%struct.inode* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %64, label %43

43:                                               ; preds = %29
  %44 = load %struct.inode*, %struct.inode** %11, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 2
  store i32* @ext4_file_inode_operations, i32** %45, align 8
  %46 = load %struct.inode*, %struct.inode** %11, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 1
  store i32* @ext4_file_operations, i32** %47, align 8
  %48 = load %struct.inode*, %struct.inode** %11, align 8
  %49 = call i32 @ext4_set_aops(%struct.inode* %48)
  %50 = load i32*, i32** %10, align 8
  %51 = load %struct.dentry*, %struct.dentry** %7, align 8
  %52 = load %struct.inode*, %struct.inode** %11, align 8
  %53 = call i32 @ext4_add_nondir(i32* %50, %struct.dentry* %51, %struct.inode* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %43
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = call i64 @IS_DIRSYNC(%struct.inode* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @ext4_handle_sync(i32* %61)
  br label %63

63:                                               ; preds = %60, %56, %43
  br label %64

64:                                               ; preds = %63, %29
  %65 = load i32*, i32** %10, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @ext4_journal_stop(i32* %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @ENOSPC, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.inode*, %struct.inode** %6, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @ext4_should_retry_alloc(i32 %78, i32* %14)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %29

82:                                               ; preds = %75, %70
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %82, %19
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @EXT4_DATA_TRANS_BLOCKS(i32) #1

declare dso_local %struct.inode* @ext4_new_inode_start_handle(%struct.inode*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32* @ext4_journal_current_handle(...) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @ext4_set_aops(%struct.inode*) #1

declare dso_local i32 @ext4_add_nondir(i32*, %struct.dentry*, %struct.inode*) #1

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
