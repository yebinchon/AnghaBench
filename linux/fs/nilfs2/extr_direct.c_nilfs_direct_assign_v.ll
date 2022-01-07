; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_direct.c_nilfs_direct_assign_v.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_direct.c_nilfs_direct_assign_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.buffer_head = type { i32 }
%union.nilfs_binfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.inode = type { i32 }
%union.nilfs_bmap_ptr_req = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, i32, i32, %struct.buffer_head**, i32, %union.nilfs_binfo*)* @nilfs_direct_assign_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_direct_assign_v(%struct.nilfs_bmap* %0, i32 %1, i32 %2, %struct.buffer_head** %3, i32 %4, %union.nilfs_binfo* %5) #0 {
  %7 = alloca %struct.nilfs_bmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %union.nilfs_binfo*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %union.nilfs_bmap_ptr_req, align 4
  %15 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.buffer_head** %3, %struct.buffer_head*** %10, align 8
  store i32 %4, i32* %11, align 4
  store %union.nilfs_binfo* %5, %union.nilfs_binfo** %12, align 8
  %16 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %17 = call %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap* %16)
  store %struct.inode* %17, %struct.inode** %13, align 8
  %18 = load i32, i32* %9, align 4
  %19 = bitcast %union.nilfs_bmap_ptr_req* %14 to i32*
  store i32 %18, i32* %19, align 4
  %20 = load %struct.inode*, %struct.inode** %13, align 8
  %21 = bitcast %union.nilfs_bmap_ptr_req* %14 to i32*
  %22 = call i32 @nilfs_dat_prepare_start(%struct.inode* %20, i32* %21)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %6
  %26 = load %struct.inode*, %struct.inode** %13, align 8
  %27 = bitcast %union.nilfs_bmap_ptr_req* %14 to i32*
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @nilfs_dat_commit_start(%struct.inode* %26, i32* %27, i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = call i8* @cpu_to_le64(i32 %30)
  %32 = load %union.nilfs_binfo*, %union.nilfs_binfo** %12, align 8
  %33 = bitcast %union.nilfs_binfo* %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i8* %31, i8** %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i8* @cpu_to_le64(i32 %35)
  %37 = load %union.nilfs_binfo*, %union.nilfs_binfo** %12, align 8
  %38 = bitcast %union.nilfs_binfo* %37 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  br label %40

40:                                               ; preds = %25, %6
  %41 = load i32, i32* %15, align 4
  ret i32 %41
}

declare dso_local %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_dat_prepare_start(%struct.inode*, i32*) #1

declare dso_local i32 @nilfs_dat_commit_start(%struct.inode*, i32*, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
