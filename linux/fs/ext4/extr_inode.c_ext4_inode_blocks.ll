; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_inode_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_inode_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_inode = type { i32, i32 }
%struct.ext4_inode_info = type { %struct.inode }
%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }

@EXT4_INODE_HUGE_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_inode*, %struct.ext4_inode_info*)* @ext4_inode_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_inode_blocks(%struct.ext4_inode* %0, %struct.ext4_inode_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ext4_inode*, align 8
  %5 = alloca %struct.ext4_inode_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.super_block*, align 8
  store %struct.ext4_inode* %0, %struct.ext4_inode** %4, align 8
  store %struct.ext4_inode_info* %1, %struct.ext4_inode_info** %5, align 8
  %9 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %5, align 8
  %10 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %9, i32 0, i32 0
  store %struct.inode* %10, %struct.inode** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %7, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 1
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %8, align 8
  %14 = load %struct.super_block*, %struct.super_block** %8, align 8
  %15 = call i64 @ext4_has_feature_huge_file(%struct.super_block* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %2
  %18 = load %struct.ext4_inode*, %struct.ext4_inode** %4, align 8
  %19 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @le16_to_cpu(i32 %20)
  %22 = trunc i64 %21 to i32
  %23 = shl i32 %22, 32
  %24 = load %struct.ext4_inode*, %struct.ext4_inode** %4, align 8
  %25 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le32_to_cpu(i32 %26)
  %28 = or i32 %23, %27
  store i32 %28, i32* %6, align 4
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = load i32, i32* @EXT4_INODE_HUGE_FILE, align 4
  %31 = call i64 @ext4_test_inode_flag(%struct.inode* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %17
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 9
  %39 = shl i32 %34, %38
  store i32 %39, i32* %3, align 4
  br label %47

40:                                               ; preds = %17
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %47

42:                                               ; preds = %2
  %43 = load %struct.ext4_inode*, %struct.ext4_inode** %4, align 8
  %44 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %40, %33
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @ext4_has_feature_huge_file(%struct.super_block*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @ext4_test_inode_flag(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
