; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_nfs_revalidate_file_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_nfs_revalidate_file_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.nfs_server = type { i32 }

@O_DIRECT = common dso_local global i32 0, align 4
@NFS_INO_REVAL_PAGECACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @nfs_revalidate_file_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_revalidate_file_size(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %7)
  store %struct.nfs_server* %8, %struct.nfs_server** %6, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @O_DIRECT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %23

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = load i32, i32* @NFS_INO_REVAL_PAGECACHE, align 4
  %19 = call i64 @nfs_check_cache_invalid(%struct.inode* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %23

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %27

23:                                               ; preds = %21, %15
  %24 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = call i32 @__nfs_revalidate_inode(%struct.nfs_server* %24, %struct.inode* %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %22
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i64 @nfs_check_cache_invalid(%struct.inode*, i32) #1

declare dso_local i32 @__nfs_revalidate_inode(%struct.nfs_server*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
