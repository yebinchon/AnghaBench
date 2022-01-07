; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_namespace.c_nfs_d_automount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_namespace.c_nfs_d_automount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.path = type { i32 }
%struct.nfs_server = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.vfsmount* (%struct.nfs_server*, i32, %struct.nfs_fh*, %struct.nfs_fattr*)* }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }

@ESTALE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nfs_automount_list = common dso_local global i32 0, align 4
@nfs_automount_task = common dso_local global i32 0, align 4
@nfs_mountpoint_expiry_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vfsmount* @nfs_d_automount(%struct.path* %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  %3 = alloca %struct.path*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca %struct.nfs_fh*, align 8
  %7 = alloca %struct.nfs_fattr*, align 8
  store %struct.path* %0, %struct.path** %3, align 8
  %8 = load %struct.path*, %struct.path** %3, align 8
  %9 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @d_inode(i32 %10)
  %12 = call %struct.nfs_server* @NFS_SERVER(i32 %11)
  store %struct.nfs_server* %12, %struct.nfs_server** %5, align 8
  store %struct.nfs_fh* null, %struct.nfs_fh** %6, align 8
  store %struct.nfs_fattr* null, %struct.nfs_fattr** %7, align 8
  %13 = load %struct.path*, %struct.path** %3, align 8
  %14 = getelementptr inbounds %struct.path, %struct.path* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @IS_ROOT(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @ESTALE, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.vfsmount* @ERR_PTR(i32 %20)
  store %struct.vfsmount* %21, %struct.vfsmount** %2, align 8
  br label %66

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.vfsmount* @ERR_PTR(i32 %24)
  store %struct.vfsmount* %25, %struct.vfsmount** %4, align 8
  %26 = call %struct.nfs_fh* (...) @nfs_alloc_fhandle()
  store %struct.nfs_fh* %26, %struct.nfs_fh** %6, align 8
  %27 = call %struct.nfs_fattr* (...) @nfs_alloc_fattr()
  store %struct.nfs_fattr* %27, %struct.nfs_fattr** %7, align 8
  %28 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %29 = icmp eq %struct.nfs_fh* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %32 = icmp eq %struct.nfs_fattr* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %22
  br label %60

34:                                               ; preds = %30
  %35 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %36 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.vfsmount* (%struct.nfs_server*, i32, %struct.nfs_fh*, %struct.nfs_fattr*)*, %struct.vfsmount* (%struct.nfs_server*, i32, %struct.nfs_fh*, %struct.nfs_fattr*)** %40, align 8
  %42 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %43 = load %struct.path*, %struct.path** %3, align 8
  %44 = getelementptr inbounds %struct.path, %struct.path* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %47 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %48 = call %struct.vfsmount* %41(%struct.nfs_server* %42, i32 %45, %struct.nfs_fh* %46, %struct.nfs_fattr* %47)
  store %struct.vfsmount* %48, %struct.vfsmount** %4, align 8
  %49 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %50 = call i64 @IS_ERR(%struct.vfsmount* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %34
  br label %60

53:                                               ; preds = %34
  %54 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %55 = call i32 @mntget(%struct.vfsmount* %54)
  %56 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %57 = call i32 @mnt_set_expiry(%struct.vfsmount* %56, i32* @nfs_automount_list)
  %58 = load i32, i32* @nfs_mountpoint_expiry_timeout, align 4
  %59 = call i32 @schedule_delayed_work(i32* @nfs_automount_task, i32 %58)
  br label %60

60:                                               ; preds = %53, %52, %33
  %61 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %62 = call i32 @nfs_free_fattr(%struct.nfs_fattr* %61)
  %63 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %64 = call i32 @nfs_free_fhandle(%struct.nfs_fh* %63)
  %65 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  store %struct.vfsmount* %65, %struct.vfsmount** %2, align 8
  br label %66

66:                                               ; preds = %60, %18
  %67 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  ret %struct.vfsmount* %67
}

declare dso_local %struct.nfs_server* @NFS_SERVER(i32) #1

declare dso_local i32 @d_inode(i32) #1

declare dso_local i64 @IS_ROOT(i32) #1

declare dso_local %struct.vfsmount* @ERR_PTR(i32) #1

declare dso_local %struct.nfs_fh* @nfs_alloc_fhandle(...) #1

declare dso_local %struct.nfs_fattr* @nfs_alloc_fattr(...) #1

declare dso_local i64 @IS_ERR(%struct.vfsmount*) #1

declare dso_local i32 @mntget(%struct.vfsmount*) #1

declare dso_local i32 @mnt_set_expiry(%struct.vfsmount*, i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @nfs_free_fattr(%struct.nfs_fattr*) #1

declare dso_local i32 @nfs_free_fhandle(%struct.nfs_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
