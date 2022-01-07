; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_inode.c_squashfs_new_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_inode.c_squashfs_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i64, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8* }
%struct.squashfs_base_inode = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.inode*, %struct.squashfs_base_inode*)* @squashfs_new_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @squashfs_new_inode(%struct.super_block* %0, %struct.inode* %1, %struct.squashfs_base_inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.squashfs_base_inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.squashfs_base_inode* %2, %struct.squashfs_base_inode** %7, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = load %struct.squashfs_base_inode*, %struct.squashfs_base_inode** %7, align 8
  %13 = getelementptr inbounds %struct.squashfs_base_inode, %struct.squashfs_base_inode* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le16_to_cpu(i32 %14)
  %16 = call i32 @squashfs_get_id(%struct.super_block* %11, i32 %15, i32* %8)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %75

21:                                               ; preds = %3
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = load %struct.squashfs_base_inode*, %struct.squashfs_base_inode** %7, align 8
  %24 = getelementptr inbounds %struct.squashfs_base_inode, %struct.squashfs_base_inode* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  %27 = call i32 @squashfs_get_id(%struct.super_block* %22, i32 %26, i32* %9)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %75

32:                                               ; preds = %21
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @i_uid_write(%struct.inode* %33, i32 %34)
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @i_gid_write(%struct.inode* %36, i32 %37)
  %39 = load %struct.squashfs_base_inode*, %struct.squashfs_base_inode** %7, align 8
  %40 = getelementptr inbounds %struct.squashfs_base_inode, %struct.squashfs_base_inode* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @le32_to_cpu(i32 %41)
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 5
  store i8* %42, i8** %44, align 8
  %45 = load %struct.squashfs_base_inode*, %struct.squashfs_base_inode** %7, align 8
  %46 = getelementptr inbounds %struct.squashfs_base_inode, %struct.squashfs_base_inode* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @le32_to_cpu(i32 %47)
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i8* %48, i8** %51, align 8
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i8* %62, i8** %65, align 8
  %66 = load %struct.squashfs_base_inode*, %struct.squashfs_base_inode** %7, align 8
  %67 = getelementptr inbounds %struct.squashfs_base_inode, %struct.squashfs_base_inode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le16_to_cpu(i32 %68)
  %70 = load %struct.inode*, %struct.inode** %6, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %32, %30, %19
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @squashfs_get_id(%struct.super_block*, i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @i_uid_write(%struct.inode*, i32) #1

declare dso_local i32 @i_gid_write(%struct.inode*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
