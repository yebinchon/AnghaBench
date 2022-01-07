; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c___ext4_expand_extra_isize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c___ext4_expand_extra_isize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_iloc = type { i32 }
%struct.ext4_inode = type { i32 }
%struct.ext4_xattr_ibody_header = type { i64 }
%struct.TYPE_2__ = type { i32 }

@EXT4_STATE_XATTR = common dso_local global i32 0, align 4
@EXT4_XATTR_MAGIC = common dso_local global i32 0, align 4
@EXT4_GOOD_OLD_INODE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.ext4_iloc*, i32*, i32*)* @__ext4_expand_extra_isize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ext4_expand_extra_isize(%struct.inode* %0, i32 %1, %struct.ext4_iloc* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ext4_iloc*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ext4_inode*, align 8
  %13 = alloca %struct.ext4_xattr_ibody_header*, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ext4_iloc* %2, %struct.ext4_iloc** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.ext4_iloc*, %struct.ext4_iloc** %9, align 8
  %16 = call %struct.ext4_inode* @ext4_raw_inode(%struct.ext4_iloc* %15)
  store %struct.ext4_inode* %16, %struct.ext4_inode** %12, align 8
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = load %struct.ext4_inode*, %struct.ext4_inode** %12, align 8
  %19 = call %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode* %17, %struct.ext4_inode* %18)
  store %struct.ext4_xattr_ibody_header* %19, %struct.ext4_xattr_ibody_header** %13, align 8
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = load i32, i32* @EXT4_STATE_XATTR, align 4
  %22 = call i32 @ext4_test_inode_state(%struct.inode* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %13, align 8
  %26 = getelementptr inbounds %struct.ext4_xattr_ibody_header, %struct.ext4_xattr_ibody_header* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @EXT4_XATTR_MAGIC, align 4
  %29 = call i64 @cpu_to_le32(i32 %28)
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %24, %5
  %32 = load %struct.ext4_inode*, %struct.ext4_inode** %12, align 8
  %33 = bitcast %struct.ext4_inode* %32 to i8*
  %34 = load i32, i32* @EXT4_GOOD_OLD_INODE_SIZE, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr i8, i8* %33, i64 %35
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr i8, i8* %36, i64 %41
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub i32 %43, %47
  %49 = call i32 @memset(i8* %42, i32 0, i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  store i32 0, i32* %6, align 4
  br label %66

54:                                               ; preds = %24
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.ext4_inode*, %struct.ext4_inode** %12, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @ext4_expand_extra_isize_ea(%struct.inode* %55, i32 %56, %struct.ext4_inode* %57, i32* %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32*, i32** %11, align 8
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %62, %54
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %31
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.ext4_inode* @ext4_raw_inode(%struct.ext4_iloc*) #1

declare dso_local %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode*, %struct.ext4_inode*) #1

declare dso_local i32 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_expand_extra_isize_ea(%struct.inode*, i32, %struct.ext4_inode*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
