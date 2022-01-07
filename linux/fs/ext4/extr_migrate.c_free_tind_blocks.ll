; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_migrate.c_free_tind_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_migrate.c_free_tind_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i64 }

@EXT4_FREE_BLOCKS_METADATA = common dso_local global i32 0, align 4
@EXT4_FREE_BLOCKS_FORGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i64)* @free_tind_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_tind_blocks(i32* %0, %struct.inode* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 2
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @le32_to_cpu(i64 %23)
  %25 = call %struct.buffer_head* @ext4_sb_bread(%struct.TYPE_2__* %22, i32 %24, i32 0)
  store %struct.buffer_head* %25, %struct.buffer_head** %11, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %27 = call i64 @IS_ERR(%struct.buffer_head* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %31 = call i32 @PTR_ERR(%struct.buffer_head* %30)
  store i32 %31, i32* %4, align 4
  br label %83

32:                                               ; preds = %3
  %33 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i64*
  store i64* %36, i64** %10, align 8
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %66, %32
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %12, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %37
  %43 = load i64*, i64** %10, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %42
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = load i64*, i64** %10, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @free_dind_blocks(i32* %50, %struct.inode* %51, i64 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %62 = call i32 @put_bh(%struct.buffer_head* %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %83

64:                                               ; preds = %49
  br label %65

65:                                               ; preds = %64, %42
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %37

69:                                               ; preds = %37
  %70 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %71 = call i32 @put_bh(%struct.buffer_head* %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.inode*, %struct.inode** %6, align 8
  %74 = call i32 @extend_credit_for_blkdel(i32* %72, %struct.inode* %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.inode*, %struct.inode** %6, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @le32_to_cpu(i64 %77)
  %79 = load i32, i32* @EXT4_FREE_BLOCKS_METADATA, align 4
  %80 = load i32, i32* @EXT4_FREE_BLOCKS_FORGET, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @ext4_free_blocks(i32* %75, %struct.inode* %76, i32* null, i32 %78, i32 1, i32 %81)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %69, %60, %29
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.buffer_head* @ext4_sb_bread(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i32 @free_dind_blocks(i32*, %struct.inode*, i64) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i32 @extend_credit_for_blkdel(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_free_blocks(i32*, %struct.inode*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
