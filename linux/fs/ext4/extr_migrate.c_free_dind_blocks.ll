; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_migrate.c_free_dind_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_migrate.c_free_dind_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i64 }

@EXT4_FREE_BLOCKS_METADATA = common dso_local global i32 0, align 4
@EXT4_FREE_BLOCKS_FORGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i64)* @free_dind_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_dind_blocks(i32* %0, %struct.inode* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 2
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %11, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @le32_to_cpu(i64 %22)
  %24 = call %struct.buffer_head* @ext4_sb_bread(%struct.TYPE_2__* %21, i32 %23, i32 0)
  store %struct.buffer_head* %24, %struct.buffer_head** %10, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %26 = call i64 @IS_ERR(%struct.buffer_head* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %30 = call i32 @PTR_ERR(%struct.buffer_head* %29)
  store i32 %30, i32* %4, align 4
  br label %82

31:                                               ; preds = %3
  %32 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i64*
  store i64* %35, i64** %9, align 8
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %65, %31
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %11, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %36
  %42 = load i64*, i64** %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %41
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = call i32 @extend_credit_for_blkdel(i32* %49, %struct.inode* %50)
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = load i64*, i64** %9, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @le32_to_cpu(i64 %58)
  %60 = load i32, i32* @EXT4_FREE_BLOCKS_METADATA, align 4
  %61 = load i32, i32* @EXT4_FREE_BLOCKS_FORGET, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @ext4_free_blocks(i32* %52, %struct.inode* %53, i32* null, i32 %59, i32 1, i32 %62)
  br label %64

64:                                               ; preds = %48, %41
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %36

68:                                               ; preds = %36
  %69 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %70 = call i32 @put_bh(%struct.buffer_head* %69)
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = call i32 @extend_credit_for_blkdel(i32* %71, %struct.inode* %72)
  %74 = load i32*, i32** %5, align 8
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @le32_to_cpu(i64 %76)
  %78 = load i32, i32* @EXT4_FREE_BLOCKS_METADATA, align 4
  %79 = load i32, i32* @EXT4_FREE_BLOCKS_FORGET, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @ext4_free_blocks(i32* %74, %struct.inode* %75, i32* null, i32 %77, i32 1, i32 %80)
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %68, %28
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.buffer_head* @ext4_sb_bread(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i32 @extend_credit_for_blkdel(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_free_blocks(i32*, %struct.inode*, i32*, i32, i32, i32) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
