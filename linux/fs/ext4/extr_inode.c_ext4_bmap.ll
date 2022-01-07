; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_bmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }

@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@DELALLOC = common dso_local global i32 0, align 4
@EXT4_STATE_JDATA = common dso_local global i32 0, align 4
@ext4_get_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, i32)* @ext4_bmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_bmap(%struct.address_space* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.address_space*, %struct.address_space** %4, align 8
  %10 = getelementptr inbounds %struct.address_space, %struct.address_space* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call i64 @ext4_has_inline_data(%struct.inode* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

16:                                               ; preds = %2
  %17 = load %struct.address_space*, %struct.address_space** %4, align 8
  %18 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %19 = call i64 @mapping_tagged(%struct.address_space* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DELALLOC, align 4
  %26 = call i64 @test_opt(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.address_space*, %struct.address_space** %4, align 8
  %30 = call i32 @filemap_write_and_wait(%struct.address_space* %29)
  br label %31

31:                                               ; preds = %28, %21, %16
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = call i32* @EXT4_JOURNAL(%struct.inode* %32)
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %56

35:                                               ; preds = %31
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = load i32, i32* @EXT4_STATE_JDATA, align 4
  %38 = call i64 @ext4_test_inode_state(%struct.inode* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = load i32, i32* @EXT4_STATE_JDATA, align 4
  %43 = call i32 @ext4_clear_inode_state(%struct.inode* %41, i32 %42)
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = call i32* @EXT4_JOURNAL(%struct.inode* %44)
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @jbd2_journal_lock_updates(i32* %46)
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @jbd2_journal_flush(i32* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @jbd2_journal_unlock_updates(i32* %50)
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %61

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %35, %31
  %57 = load %struct.address_space*, %struct.address_space** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @ext4_get_block, align 4
  %60 = call i32 @generic_block_bmap(%struct.address_space* %57, i32 %58, i32 %59)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %56, %54, %15
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i64 @mapping_tagged(%struct.address_space*, i32) #1

declare dso_local i64 @test_opt(i32, i32) #1

declare dso_local i32 @filemap_write_and_wait(%struct.address_space*) #1

declare dso_local i32* @EXT4_JOURNAL(%struct.inode*) #1

declare dso_local i64 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_clear_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @jbd2_journal_lock_updates(i32*) #1

declare dso_local i32 @jbd2_journal_flush(i32*) #1

declare dso_local i32 @jbd2_journal_unlock_updates(i32*) #1

declare dso_local i32 @generic_block_bmap(%struct.address_space*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
