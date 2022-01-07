; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_tmpfile.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_tmpfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32*, i32* }
%struct.dentry = type { i32 }

@EXT4_HT_DIR = common dso_local global i32 0, align 4
@EXT4_XATTR_TRANS_BLOCKS = common dso_local global i64 0, align 8
@ext4_file_inode_operations = common dso_local global i32 0, align 4
@ext4_file_operations = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @ext4_tmpfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_tmpfile(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call i32 @dquot_initialize(%struct.inode* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %4, align 4
  br label %84

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %75, %18
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @EXT4_HT_DIR, align 4
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @EXT4_MAXQUOTAS_INIT_BLOCKS(i32 %25)
  %27 = add nsw i64 %26, 4
  %28 = load i64, i64* @EXT4_XATTR_TRANS_BLOCKS, align 8
  %29 = add nsw i64 %27, %28
  %30 = call %struct.inode* @ext4_new_inode_start_handle(%struct.inode* %20, i32 %21, i32* null, i32 0, i32* null, i32 %22, i64 %29)
  store %struct.inode* %30, %struct.inode** %9, align 8
  %31 = call i32* (...) @ext4_journal_current_handle()
  store i32* %31, i32** %8, align 8
  %32 = load %struct.inode*, %struct.inode** %9, align 8
  %33 = call i32 @PTR_ERR(%struct.inode* %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.inode*, %struct.inode** %9, align 8
  %35 = call i32 @IS_ERR(%struct.inode* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %19
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 2
  store i32* @ext4_file_inode_operations, i32** %39, align 8
  %40 = load %struct.inode*, %struct.inode** %9, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 1
  store i32* @ext4_file_operations, i32** %41, align 8
  %42 = load %struct.inode*, %struct.inode** %9, align 8
  %43 = call i32 @ext4_set_aops(%struct.inode* %42)
  %44 = load %struct.dentry*, %struct.dentry** %6, align 8
  %45 = load %struct.inode*, %struct.inode** %9, align 8
  %46 = call i32 @d_tmpfile(%struct.dentry* %44, %struct.inode* %45)
  %47 = load i32*, i32** %8, align 8
  %48 = load %struct.inode*, %struct.inode** %9, align 8
  %49 = call i32 @ext4_orphan_add(i32* %47, %struct.inode* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  br label %78

53:                                               ; preds = %37
  %54 = load %struct.inode*, %struct.inode** %9, align 8
  %55 = call i32 @mark_inode_dirty(%struct.inode* %54)
  %56 = load %struct.inode*, %struct.inode** %9, align 8
  %57 = call i32 @unlock_new_inode(%struct.inode* %56)
  br label %58

58:                                               ; preds = %53, %19
  %59 = load i32*, i32** %8, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @ext4_journal_stop(i32* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @ENOSPC, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @ext4_should_retry_alloc(i32 %72, i32* %11)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %19

76:                                               ; preds = %69, %64
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %4, align 4
  br label %84

78:                                               ; preds = %52
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @ext4_journal_stop(i32* %79)
  %81 = load %struct.inode*, %struct.inode** %9, align 8
  %82 = call i32 @unlock_new_inode(%struct.inode* %81)
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %78, %76, %16
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local %struct.inode* @ext4_new_inode_start_handle(%struct.inode*, i32, i32*, i32, i32*, i32, i64) #1

declare dso_local i64 @EXT4_MAXQUOTAS_INIT_BLOCKS(i32) #1

declare dso_local i32* @ext4_journal_current_handle(...) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @ext4_set_aops(%struct.inode*) #1

declare dso_local i32 @d_tmpfile(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @ext4_orphan_add(i32*, %struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i64 @ext4_should_retry_alloc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
