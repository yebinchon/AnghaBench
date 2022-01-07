; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_dio_get_block_unwritten_sync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_dio_get_block_unwritten_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@EXT4_GET_BLOCKS_IO_CREATE_EXT = common dso_local global i32 0, align 4
@EXT4_STATE_DIO_UNWRITTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.buffer_head*, i32)* @ext4_dio_get_block_unwritten_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_dio_get_block_unwritten_sync(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = call i32 (...) @ext4_journal_current_handle()
  %11 = call i32 @WARN_ON_ONCE(i32 %10)
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %15 = load i32, i32* @EXT4_GET_BLOCKS_IO_CREATE_EXT, align 4
  %16 = call i32 @ext4_get_block_trans(%struct.inode* %12, i32 %13, %struct.buffer_head* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %4
  %20 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %21 = call i64 @buffer_unwritten(%struct.buffer_head* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = load i32, i32* @EXT4_STATE_DIO_UNWRITTEN, align 4
  %26 = call i32 @ext4_set_inode_state(%struct.inode* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %19, %4
  %28 = load i32, i32* %9, align 4
  ret i32 %28
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ext4_journal_current_handle(...) #1

declare dso_local i32 @ext4_get_block_trans(%struct.inode*, i32, %struct.buffer_head*, i32) #1

declare dso_local i64 @buffer_unwritten(%struct.buffer_head*) #1

declare dso_local i32 @ext4_set_inode_state(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
