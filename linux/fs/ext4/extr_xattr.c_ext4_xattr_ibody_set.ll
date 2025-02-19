; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_ibody_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_ibody_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_xattr_info = type { i32 }
%struct.ext4_xattr_ibody_find = type { i32, %struct.ext4_xattr_search }
%struct.ext4_xattr_search = type { i32 }
%struct.ext4_xattr_ibody_header = type { i8* }
%struct.TYPE_2__ = type { i64 }

@ENOSPC = common dso_local global i32 0, align 4
@EXT4_XATTR_MAGIC = common dso_local global i32 0, align 4
@EXT4_STATE_XATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_xattr_info*, %struct.ext4_xattr_ibody_find*)* @ext4_xattr_ibody_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_ibody_set(i32* %0, %struct.inode* %1, %struct.ext4_xattr_info* %2, %struct.ext4_xattr_ibody_find* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ext4_xattr_info*, align 8
  %9 = alloca %struct.ext4_xattr_ibody_find*, align 8
  %10 = alloca %struct.ext4_xattr_ibody_header*, align 8
  %11 = alloca %struct.ext4_xattr_search*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.ext4_xattr_info* %2, %struct.ext4_xattr_info** %8, align 8
  store %struct.ext4_xattr_ibody_find* %3, %struct.ext4_xattr_ibody_find** %9, align 8
  %13 = load %struct.ext4_xattr_ibody_find*, %struct.ext4_xattr_ibody_find** %9, align 8
  %14 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %13, i32 0, i32 1
  store %struct.ext4_xattr_search* %14, %struct.ext4_xattr_search** %11, align 8
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOSPC, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %60

23:                                               ; preds = %4
  %24 = load %struct.ext4_xattr_info*, %struct.ext4_xattr_info** %8, align 8
  %25 = load %struct.ext4_xattr_search*, %struct.ext4_xattr_search** %11, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = call i32 @ext4_xattr_set_entry(%struct.ext4_xattr_info* %24, %struct.ext4_xattr_search* %25, i32* %26, %struct.inode* %27, i32 0)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %5, align 4
  br label %60

33:                                               ; preds = %23
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = load %struct.ext4_xattr_ibody_find*, %struct.ext4_xattr_ibody_find** %9, align 8
  %36 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %35, i32 0, i32 0
  %37 = call i32 @ext4_raw_inode(i32* %36)
  %38 = call %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode* %34, i32 %37)
  store %struct.ext4_xattr_ibody_header* %38, %struct.ext4_xattr_ibody_header** %10, align 8
  %39 = load %struct.ext4_xattr_search*, %struct.ext4_xattr_search** %11, align 8
  %40 = getelementptr inbounds %struct.ext4_xattr_search, %struct.ext4_xattr_search* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @IS_LAST_ENTRY(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* @EXT4_XATTR_MAGIC, align 4
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %10, align 8
  %48 = getelementptr inbounds %struct.ext4_xattr_ibody_header, %struct.ext4_xattr_ibody_header* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = load i32, i32* @EXT4_STATE_XATTR, align 4
  %51 = call i32 @ext4_set_inode_state(%struct.inode* %49, i32 %50)
  br label %59

52:                                               ; preds = %33
  %53 = call i8* @cpu_to_le32(i32 0)
  %54 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %10, align 8
  %55 = getelementptr inbounds %struct.ext4_xattr_ibody_header, %struct.ext4_xattr_ibody_header* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = load i32, i32* @EXT4_STATE_XATTR, align 4
  %58 = call i32 @ext4_clear_inode_state(%struct.inode* %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %44
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %31, %20
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_xattr_set_entry(%struct.ext4_xattr_info*, %struct.ext4_xattr_search*, i32*, %struct.inode*, i32) #1

declare dso_local %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode*, i32) #1

declare dso_local i32 @ext4_raw_inode(i32*) #1

declare dso_local i32 @IS_LAST_ENTRY(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ext4_set_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_clear_inode_state(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
