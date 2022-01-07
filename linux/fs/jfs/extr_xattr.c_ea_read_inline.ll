; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_xattr.c_ea_read_inline.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_xattr.c_ea_read_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.jfs_ea_list = type { i64 }
%struct.jfs_inode_info = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.jfs_ea_list*)* @ea_read_inline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_read_inline(%struct.inode* %0, %struct.jfs_ea_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.jfs_ea_list*, align 8
  %6 = alloca %struct.jfs_inode_info*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.jfs_ea_list* %1, %struct.jfs_ea_list** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %8)
  store %struct.jfs_inode_info* %9, %struct.jfs_inode_info** %6, align 8
  %10 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %6, align 8
  %11 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %10, i32 0, i32 1
  %12 = call i32 @sizeDXD(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.jfs_ea_list*, %struct.jfs_ea_list** %5, align 8
  %17 = getelementptr inbounds %struct.jfs_ea_list, %struct.jfs_ea_list* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  store i32 0, i32* %3, align 4
  br label %46

18:                                               ; preds = %2
  %19 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %6, align 8
  %20 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %19, i32 0, i32 1
  %21 = call i32 @sizeDXD(i32* %20)
  %22 = sext i32 %21 to i64
  %23 = icmp ugt i64 %22, 4
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %46

27:                                               ; preds = %18
  %28 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %6, align 8
  %29 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %28, i32 0, i32 0
  %30 = bitcast i32* %29 to %struct.jfs_ea_list*
  %31 = getelementptr inbounds %struct.jfs_ea_list, %struct.jfs_ea_list* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 4
  %33 = call i32 @le32_to_cpu(i64 %32)
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %46

39:                                               ; preds = %27
  %40 = load %struct.jfs_ea_list*, %struct.jfs_ea_list** %5, align 8
  %41 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %6, align 8
  %42 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @memcpy(%struct.jfs_ea_list* %40, i32 %43, i32 %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %39, %36, %24, %15
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @sizeDXD(i32*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @memcpy(%struct.jfs_ea_list*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
