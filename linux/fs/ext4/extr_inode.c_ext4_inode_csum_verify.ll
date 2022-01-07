; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_inode_csum_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_inode_csum_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_inode = type { i32, i32 }
%struct.ext4_inode_info = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@EXT4_OS_LINUX = common dso_local global i32 0, align 4
@EXT4_GOOD_OLD_INODE_SIZE = common dso_local global i64 0, align 8
@i_checksum_hi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_inode*, %struct.ext4_inode_info*)* @ext4_inode_csum_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_inode_csum_verify(%struct.inode* %0, %struct.ext4_inode* %1, %struct.ext4_inode_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_inode*, align 8
  %7 = alloca %struct.ext4_inode_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ext4_inode* %1, %struct.ext4_inode** %6, align 8
  store %struct.ext4_inode_info* %2, %struct.ext4_inode_info** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_4__* @EXT4_SB(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @EXT4_OS_LINUX, align 4
  %19 = call i64 @cpu_to_le32(i32 %18)
  %20 = icmp ne i64 %17, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ext4_has_metadata_csum(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21, %3
  store i32 1, i32* %4, align 4
  br label %65

28:                                               ; preds = %21
  %29 = load %struct.ext4_inode*, %struct.ext4_inode** %6, align 8
  %30 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = load %struct.ext4_inode*, %struct.ext4_inode** %6, align 8
  %35 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %7, align 8
  %36 = call i32 @ext4_inode_csum(%struct.inode* %33, %struct.ext4_inode* %34, %struct.ext4_inode_info* %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @EXT4_INODE_SIZE(i32 %39)
  %41 = load i64, i64* @EXT4_GOOD_OLD_INODE_SIZE, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %28
  %44 = load %struct.ext4_inode*, %struct.ext4_inode** %6, align 8
  %45 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %7, align 8
  %46 = load i32, i32* @i_checksum_hi, align 4
  %47 = call i64 @EXT4_FITS_IN_INODE(%struct.ext4_inode* %44, %struct.ext4_inode_info* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.ext4_inode*, %struct.ext4_inode** %6, align 8
  %51 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  %54 = shl i32 %53, 16
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %60

57:                                               ; preds = %43, %28
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 65535
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %57, %49
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %60, %27
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_4__* @EXT4_SB(i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @ext4_has_metadata_csum(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ext4_inode_csum(%struct.inode*, %struct.ext4_inode*, %struct.ext4_inode_info*) #1

declare dso_local i64 @EXT4_INODE_SIZE(i32) #1

declare dso_local i64 @EXT4_FITS_IN_INODE(%struct.ext4_inode*, %struct.ext4_inode_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
