; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_inode_csum_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_inode_csum_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_inode = type { i8*, i8* }
%struct.ext4_inode_info = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@EXT4_OS_LINUX = common dso_local global i32 0, align 4
@EXT4_GOOD_OLD_INODE_SIZE = common dso_local global i64 0, align 8
@i_checksum_hi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.ext4_inode*, %struct.ext4_inode_info*)* @ext4_inode_csum_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_inode_csum_set(%struct.inode* %0, %struct.ext4_inode* %1, %struct.ext4_inode_info* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ext4_inode*, align 8
  %6 = alloca %struct.ext4_inode_info*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ext4_inode* %1, %struct.ext4_inode** %5, align 8
  store %struct.ext4_inode_info* %2, %struct.ext4_inode_info** %6, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_4__* @EXT4_SB(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @EXT4_OS_LINUX, align 4
  %17 = call i64 @cpu_to_le32(i32 %16)
  %18 = icmp ne i64 %15, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ext4_has_metadata_csum(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19, %3
  br label %54

26:                                               ; preds = %19
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = load %struct.ext4_inode*, %struct.ext4_inode** %5, align 8
  %29 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %30 = call i32 @ext4_inode_csum(%struct.inode* %27, %struct.ext4_inode* %28, %struct.ext4_inode_info* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 65535
  %33 = call i8* @cpu_to_le16(i32 %32)
  %34 = load %struct.ext4_inode*, %struct.ext4_inode** %5, align 8
  %35 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @EXT4_INODE_SIZE(i32 %38)
  %40 = load i64, i64* @EXT4_GOOD_OLD_INODE_SIZE, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %26
  %43 = load %struct.ext4_inode*, %struct.ext4_inode** %5, align 8
  %44 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %45 = load i32, i32* @i_checksum_hi, align 4
  %46 = call i64 @EXT4_FITS_IN_INODE(%struct.ext4_inode* %43, %struct.ext4_inode_info* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  %50 = ashr i32 %49, 16
  %51 = call i8* @cpu_to_le16(i32 %50)
  %52 = load %struct.ext4_inode*, %struct.ext4_inode** %5, align 8
  %53 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  br label %54

54:                                               ; preds = %25, %48, %42, %26
  ret void
}

declare dso_local %struct.TYPE_4__* @EXT4_SB(i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @ext4_has_metadata_csum(i32) #1

declare dso_local i32 @ext4_inode_csum(%struct.inode*, %struct.ext4_inode*, %struct.ext4_inode_info*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @EXT4_INODE_SIZE(i32) #1

declare dso_local i64 @EXT4_FITS_IN_INODE(%struct.ext4_inode*, %struct.ext4_inode_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
