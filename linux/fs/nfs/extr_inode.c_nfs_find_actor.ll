; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_find_actor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_find_actor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_find_desc = type { %struct.nfs_fattr*, %struct.nfs_fh* }
%struct.nfs_fattr = type { i64, i32 }
%struct.nfs_fh = type { i32 }

@S_IFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*)* @nfs_find_actor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_find_actor(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nfs_find_desc*, align 8
  %7 = alloca %struct.nfs_fh*, align 8
  %8 = alloca %struct.nfs_fattr*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.nfs_find_desc*
  store %struct.nfs_find_desc* %10, %struct.nfs_find_desc** %6, align 8
  %11 = load %struct.nfs_find_desc*, %struct.nfs_find_desc** %6, align 8
  %12 = getelementptr inbounds %struct.nfs_find_desc, %struct.nfs_find_desc* %11, i32 0, i32 1
  %13 = load %struct.nfs_fh*, %struct.nfs_fh** %12, align 8
  store %struct.nfs_fh* %13, %struct.nfs_fh** %7, align 8
  %14 = load %struct.nfs_find_desc*, %struct.nfs_find_desc** %6, align 8
  %15 = getelementptr inbounds %struct.nfs_find_desc, %struct.nfs_find_desc* %14, i32 0, i32 0
  %16 = load %struct.nfs_fattr*, %struct.nfs_fattr** %15, align 8
  store %struct.nfs_fattr* %16, %struct.nfs_fattr** %8, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call i64 @NFS_FILEID(%struct.inode* %17)
  %19 = load %struct.nfs_fattr*, %struct.nfs_fattr** %8, align 8
  %20 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

24:                                               ; preds = %2
  %25 = load i32, i32* @S_IFMT, align 4
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %25, %28
  %30 = load i32, i32* @S_IFMT, align 4
  %31 = load %struct.nfs_fattr*, %struct.nfs_fattr** %8, align 8
  %32 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %29, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %54

37:                                               ; preds = %24
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = call i32 @NFS_FH(%struct.inode* %38)
  %40 = load %struct.nfs_fh*, %struct.nfs_fh** %7, align 8
  %41 = call i64 @nfs_compare_fh(i32 %39, %struct.nfs_fh* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %54

44:                                               ; preds = %37
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = call i64 @is_bad_inode(%struct.inode* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = call i64 @NFS_STALE(%struct.inode* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %44
  store i32 0, i32* %3, align 4
  br label %54

53:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %52, %43, %36, %23
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @NFS_FILEID(%struct.inode*) #1

declare dso_local i64 @nfs_compare_fh(i32, %struct.nfs_fh*) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i64 @NFS_STALE(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
