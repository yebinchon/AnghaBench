; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_namespace.c_nfs_do_submount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_namespace.c_nfs_do_submount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.nfs_clone_mount = type { i32, %struct.nfs_fattr*, %struct.nfs_fh*, %struct.dentry*, i32 }

@GFP_USER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vfsmount* @nfs_do_submount(%struct.dentry* %0, %struct.nfs_fh* %1, %struct.nfs_fattr* %2, i32 %3) #0 {
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nfs_fh*, align 8
  %8 = alloca %struct.nfs_fattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs_clone_mount, align 8
  %11 = alloca %struct.vfsmount*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %7, align 8
  store %struct.nfs_fattr* %2, %struct.nfs_fattr** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %10, i32 0, i32 0
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %10, i32 0, i32 1
  %17 = load %struct.nfs_fattr*, %struct.nfs_fattr** %8, align 8
  store %struct.nfs_fattr* %17, %struct.nfs_fattr** %16, align 8
  %18 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %10, i32 0, i32 2
  %19 = load %struct.nfs_fh*, %struct.nfs_fh** %7, align 8
  store %struct.nfs_fh* %19, %struct.nfs_fh** %18, align 8
  %20 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %10, i32 0, i32 3
  %21 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %21, %struct.dentry** %20, align 8
  %22 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %10, i32 0, i32 4
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %22, align 8
  %26 = load i32, i32* @GFP_USER, align 4
  %27 = call i64 @__get_free_page(i32 %26)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.vfsmount* @ERR_PTR(i32 %33)
  store %struct.vfsmount* %34, %struct.vfsmount** %5, align 8
  br label %58

35:                                               ; preds = %4
  %36 = load %struct.dentry*, %struct.dentry** %6, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = call i8* @nfs_devname(%struct.dentry* %36, i8* %37, i32 %38)
  store i8* %39, i8** %13, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = call i64 @IS_ERR(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i8*, i8** %13, align 8
  %45 = call %struct.vfsmount* @ERR_CAST(i8* %44)
  store %struct.vfsmount* %45, %struct.vfsmount** %11, align 8
  br label %53

46:                                               ; preds = %35
  %47 = load %struct.dentry*, %struct.dentry** %6, align 8
  %48 = getelementptr inbounds %struct.dentry, %struct.dentry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @NFS_SB(i32 %49)
  %51 = load i8*, i8** %13, align 8
  %52 = call %struct.vfsmount* @nfs_do_clone_mount(i32 %50, i8* %51, %struct.nfs_clone_mount* %10)
  store %struct.vfsmount* %52, %struct.vfsmount** %11, align 8
  br label %53

53:                                               ; preds = %46, %43
  %54 = load i8*, i8** %12, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = call i32 @free_page(i64 %55)
  %57 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  store %struct.vfsmount* %57, %struct.vfsmount** %5, align 8
  br label %58

58:                                               ; preds = %53, %31
  %59 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  ret %struct.vfsmount* %59
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local %struct.vfsmount* @ERR_PTR(i32) #1

declare dso_local i8* @nfs_devname(%struct.dentry*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local %struct.vfsmount* @ERR_CAST(i8*) #1

declare dso_local %struct.vfsmount* @nfs_do_clone_mount(i32, i8*, %struct.nfs_clone_mount*) #1

declare dso_local i32 @NFS_SB(i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
