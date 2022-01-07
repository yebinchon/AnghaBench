; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_migrate.c_free_ext_idx.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_migrate.c_free_ext_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_extent_idx = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ext4_extent_header = type { i64, i32 }

@EXT4_FREE_BLOCKS_METADATA = common dso_local global i32 0, align 4
@EXT4_FREE_BLOCKS_FORGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_extent_idx*)* @free_ext_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_ext_idx(i32* %0, %struct.inode* %1, %struct.ext4_extent_idx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext4_extent_idx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ext4_extent_header*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.ext4_extent_idx* %2, %struct.ext4_extent_idx** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %7, align 8
  %14 = call i32 @ext4_idx_pblock(%struct.ext4_extent_idx* %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call %struct.buffer_head* @ext4_sb_bread(i32 %17, i32 %18, i32 0)
  store %struct.buffer_head* %19, %struct.buffer_head** %11, align 8
  %20 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %21 = call i64 @IS_ERR(%struct.buffer_head* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %25 = call i32 @PTR_ERR(%struct.buffer_head* %24)
  store i32 %25, i32* %4, align 4
  br label %74

26:                                               ; preds = %3
  %27 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.ext4_extent_header*
  store %struct.ext4_extent_header* %30, %struct.ext4_extent_header** %12, align 8
  %31 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %12, align 8
  %32 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %26
  %36 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %12, align 8
  %37 = call %struct.ext4_extent_idx* @EXT_FIRST_INDEX(%struct.ext4_extent_header* %36)
  store %struct.ext4_extent_idx* %37, %struct.ext4_extent_idx** %7, align 8
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %54, %35
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %12, align 8
  %41 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @le16_to_cpu(i32 %42)
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %38
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %7, align 8
  %49 = call i32 @free_ext_idx(i32* %46, %struct.inode* %47, %struct.ext4_extent_idx* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %59

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  %57 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %7, align 8
  %58 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %57, i32 1
  store %struct.ext4_extent_idx* %58, %struct.ext4_extent_idx** %7, align 8
  br label %38

59:                                               ; preds = %52, %38
  br label %60

60:                                               ; preds = %59, %26
  %61 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %62 = call i32 @put_bh(%struct.buffer_head* %61)
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = call i32 @extend_credit_for_blkdel(i32* %63, %struct.inode* %64)
  %66 = load i32*, i32** %5, align 8
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @EXT4_FREE_BLOCKS_METADATA, align 4
  %70 = load i32, i32* @EXT4_FREE_BLOCKS_FORGET, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @ext4_free_blocks(i32* %66, %struct.inode* %67, i32* null, i32 %68, i32 1, i32 %71)
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %60, %23
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @ext4_idx_pblock(%struct.ext4_extent_idx*) #1

declare dso_local %struct.buffer_head* @ext4_sb_bread(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local %struct.ext4_extent_idx* @EXT_FIRST_INDEX(%struct.ext4_extent_header*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i32 @extend_credit_for_blkdel(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_free_blocks(i32*, %struct.inode*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
