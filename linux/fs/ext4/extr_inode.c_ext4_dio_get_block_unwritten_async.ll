; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_dio_get_block_unwritten_async.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_dio_get_block_unwritten_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32* }

@EXT4_GET_BLOCKS_IO_CREATE_EXT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.buffer_head*, i32)* @ext4_dio_get_block_unwritten_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_dio_get_block_unwritten_async(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = call i32 (...) @ext4_journal_current_handle()
  %13 = call i32 @WARN_ON_ONCE(i32 %12)
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %17 = load i32, i32* @EXT4_GET_BLOCKS_IO_CREATE_EXT, align 4
  %18 = call i32 @ext4_get_block_trans(%struct.inode* %14, i32 %15, %struct.buffer_head* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %49, label %21

21:                                               ; preds = %4
  %22 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %23 = call i64 @buffer_unwritten(%struct.buffer_head* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %21
  %26 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %27 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %25
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32* @ext4_init_io_end(%struct.inode* %31, i32 %32)
  store i32* %33, i32** %11, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %51

39:                                               ; preds = %30
  %40 = load i32*, i32** %11, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %42 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @ext4_set_io_unwritten_flag(%struct.inode* %43, i32* %44)
  br label %46

46:                                               ; preds = %39, %25
  %47 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %48 = call i32 @set_buffer_defer_completion(%struct.buffer_head* %47)
  br label %49

49:                                               ; preds = %46, %21, %4
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %36
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ext4_journal_current_handle(...) #1

declare dso_local i32 @ext4_get_block_trans(%struct.inode*, i32, %struct.buffer_head*, i32) #1

declare dso_local i64 @buffer_unwritten(%struct.buffer_head*) #1

declare dso_local i32* @ext4_init_io_end(%struct.inode*, i32) #1

declare dso_local i32 @ext4_set_io_unwritten_flag(%struct.inode*, i32*) #1

declare dso_local i32 @set_buffer_defer_completion(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
