; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_get_block_trans.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_get_block_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i32 }

@DIO_MAX_BLOCKS = common dso_local global i32 0, align 4
@EXT4_HT_MAP_BLOCKS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.buffer_head*, i32)* @ext4_get_block_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_get_block_trans(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %15 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %16, %19
  %21 = load i32, i32* @DIO_MAX_BLOCKS, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load i32, i32* @DIO_MAX_BLOCKS, align 4
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %24, %27
  %29 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %23, %4
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %35, %38
  %40 = call i32 @ext4_chunk_trans_blocks(%struct.inode* %32, i32 %39)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %70, %31
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = load i32, i32* @EXT4_HT_MAP_BLOCKS, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32* @ext4_journal_start(%struct.inode* %42, i32 %43, i32 %44)
  store i32* %45, i32** %11, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i64 @IS_ERR(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @PTR_ERR(i32* %50)
  store i32 %51, i32* %5, align 4
  br label %73

52:                                               ; preds = %41
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @_ext4_get_block(%struct.inode* %53, i32 %54, %struct.buffer_head* %55, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @ext4_journal_stop(i32* %58)
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @ENOSPC, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %52
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @ext4_should_retry_alloc(i32 %67, i32* %12)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %41

71:                                               ; preds = %64, %52
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %49
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @ext4_chunk_trans_blocks(%struct.inode*, i32) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @_ext4_get_block(%struct.inode*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i64 @ext4_should_retry_alloc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
