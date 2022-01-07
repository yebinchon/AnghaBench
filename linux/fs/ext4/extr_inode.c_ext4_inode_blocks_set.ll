; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_inode_blocks_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_inode_blocks_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_inode = type { i8*, i8* }
%struct.ext4_inode_info = type { %struct.inode }
%struct.inode = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }

@EXT4_INODE_HUGE_FILE = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ext4_inode*, %struct.ext4_inode_info*)* @ext4_inode_blocks_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_inode_blocks_set(i32* %0, %struct.ext4_inode* %1, %struct.ext4_inode_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ext4_inode*, align 8
  %7 = alloca %struct.ext4_inode_info*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.super_block*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.ext4_inode* %1, %struct.ext4_inode** %6, align 8
  store %struct.ext4_inode_info* %2, %struct.ext4_inode_info** %7, align 8
  %11 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %7, align 8
  %12 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %11, i32 0, i32 0
  store %struct.inode* %12, %struct.inode** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %8, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 2
  %18 = load %struct.super_block*, %struct.super_block** %17, align 8
  store %struct.super_block* %18, %struct.super_block** %10, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp ule i32 %19, -1
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = call i8* @cpu_to_le32(i32 %22)
  %24 = load %struct.ext4_inode*, %struct.ext4_inode** %6, align 8
  %25 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.ext4_inode*, %struct.ext4_inode** %6, align 8
  %27 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %26, i32 0, i32 0
  store i8* null, i8** %27, align 8
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = load i32, i32* @EXT4_INODE_HUGE_FILE, align 4
  %30 = call i32 @ext4_clear_inode_flag(%struct.inode* %28, i32 %29)
  store i32 0, i32* %4, align 4
  br label %75

31:                                               ; preds = %3
  %32 = load %struct.super_block*, %struct.super_block** %10, align 8
  %33 = call i32 @ext4_has_feature_huge_file(%struct.super_block* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @EFBIG, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %75

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = icmp ule i64 %40, 281474976710655
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = load %struct.ext4_inode*, %struct.ext4_inode** %6, align 8
  %46 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %9, align 4
  %48 = lshr i32 %47, 32
  %49 = call i8* @cpu_to_le16(i32 %48)
  %50 = load %struct.ext4_inode*, %struct.ext4_inode** %6, align 8
  %51 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = load i32, i32* @EXT4_INODE_HUGE_FILE, align 4
  %54 = call i32 @ext4_clear_inode_flag(%struct.inode* %52, i32 %53)
  br label %74

55:                                               ; preds = %38
  %56 = load %struct.inode*, %struct.inode** %8, align 8
  %57 = load i32, i32* @EXT4_INODE_HUGE_FILE, align 4
  %58 = call i32 @ext4_set_inode_flag(%struct.inode* %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.inode*, %struct.inode** %8, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 9
  %64 = lshr i32 %59, %63
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i8* @cpu_to_le32(i32 %65)
  %67 = load %struct.ext4_inode*, %struct.ext4_inode** %6, align 8
  %68 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = lshr i32 %69, 32
  %71 = call i8* @cpu_to_le16(i32 %70)
  %72 = load %struct.ext4_inode*, %struct.ext4_inode** %6, align 8
  %73 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %55, %42
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %35, %21
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ext4_clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4_has_feature_huge_file(%struct.super_block*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ext4_set_inode_flag(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
