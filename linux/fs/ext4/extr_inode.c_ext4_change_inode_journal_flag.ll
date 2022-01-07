; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_change_inode_journal_flag.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_change_inode_journal_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ext4_sb_info = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@EXT4_INODE_JOURNAL_DATA = common dso_local global i32 0, align 4
@EXT4_HT_INODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_change_inode_journal_flag(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ext4_sb_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ext4_sb_info* @EXT4_SB(i32 %12)
  store %struct.ext4_sb_info* %13, %struct.ext4_sb_info** %9, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call i32* @EXT4_JOURNAL(%struct.inode* %14)
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %116

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @is_journal_aborted(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EROFS, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %116

26:                                               ; preds = %19
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = call i32 @inode_dio_wait(%struct.inode* %27)
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %26
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @down_write(i32* %34)
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @filemap_write_and_wait(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %31
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @up_write(i32* %45)
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %116

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48, %26
  %50 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %51 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %50, i32 0, i32 0
  %52 = call i32 @percpu_down_write(i32* %51)
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @jbd2_journal_lock_updates(i32* %53)
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = load i32, i32* @EXT4_INODE_JOURNAL_DATA, align 4
  %60 = call i32 @ext4_set_inode_flag(%struct.inode* %58, i32 %59)
  br label %77

61:                                               ; preds = %49
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @jbd2_journal_flush(i32* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @jbd2_journal_unlock_updates(i32* %67)
  %69 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %70 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %69, i32 0, i32 0
  %71 = call i32 @percpu_up_write(i32* %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %116

73:                                               ; preds = %61
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = load i32, i32* @EXT4_INODE_JOURNAL_DATA, align 4
  %76 = call i32 @ext4_clear_inode_flag(%struct.inode* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %57
  %78 = load %struct.inode*, %struct.inode** %4, align 8
  %79 = call i32 @ext4_set_aops(%struct.inode* %78)
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @jbd2_journal_unlock_updates(i32* %80)
  %82 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %83 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %82, i32 0, i32 0
  %84 = call i32 @percpu_up_write(i32* %83)
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %77
  %88 = load %struct.inode*, %struct.inode** %4, align 8
  %89 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %88)
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = call i32 @up_write(i32* %90)
  br label %92

92:                                               ; preds = %87, %77
  %93 = load %struct.inode*, %struct.inode** %4, align 8
  %94 = load i32, i32* @EXT4_HT_INODE, align 4
  %95 = call i32* @ext4_journal_start(%struct.inode* %93, i32 %94, i32 1)
  store i32* %95, i32** %7, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = call i64 @IS_ERR(i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @PTR_ERR(i32* %100)
  store i32 %101, i32* %3, align 4
  br label %116

102:                                              ; preds = %92
  %103 = load i32*, i32** %7, align 8
  %104 = load %struct.inode*, %struct.inode** %4, align 8
  %105 = call i32 @ext4_mark_inode_dirty(i32* %103, %struct.inode* %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 @ext4_handle_sync(i32* %106)
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 @ext4_journal_stop(i32* %108)
  %110 = load %struct.inode*, %struct.inode** %4, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @ext4_std_error(i32 %112, i32 %113)
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %102, %99, %66, %42, %23, %18
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(i32) #1

declare dso_local i32* @EXT4_JOURNAL(%struct.inode*) #1

declare dso_local i64 @is_journal_aborted(i32*) #1

declare dso_local i32 @inode_dio_wait(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @percpu_down_write(i32*) #1

declare dso_local i32 @jbd2_journal_lock_updates(i32*) #1

declare dso_local i32 @ext4_set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @jbd2_journal_flush(i32*) #1

declare dso_local i32 @jbd2_journal_unlock_updates(i32*) #1

declare dso_local i32 @percpu_up_write(i32*) #1

declare dso_local i32 @ext4_clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4_set_aops(%struct.inode*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_handle_sync(i32*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @ext4_std_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
