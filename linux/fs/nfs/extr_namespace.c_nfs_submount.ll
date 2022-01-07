; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_namespace.c_nfs_submount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_namespace.c_nfs_submount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.nfs_server = type { %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32, i32*, %struct.nfs_fh*, %struct.nfs_fattr*, i32*)* }
%struct.dentry = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vfsmount* @nfs_submount(%struct.nfs_server* %0, %struct.dentry* %1, %struct.nfs_fh* %2, %struct.nfs_fattr* %3) #0 {
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.nfs_fh*, align 8
  %9 = alloca %struct.nfs_fattr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dentry*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.nfs_fh* %2, %struct.nfs_fh** %8, align 8
  store %struct.nfs_fattr* %3, %struct.nfs_fattr** %9, align 8
  %12 = load %struct.dentry*, %struct.dentry** %7, align 8
  %13 = call %struct.dentry* @dget_parent(%struct.dentry* %12)
  store %struct.dentry* %13, %struct.dentry** %11, align 8
  %14 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %15 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32 (i32, i32*, %struct.nfs_fh*, %struct.nfs_fattr*, i32*)*, i32 (i32, i32*, %struct.nfs_fh*, %struct.nfs_fattr*, i32*)** %19, align 8
  %21 = load %struct.dentry*, %struct.dentry** %11, align 8
  %22 = call i32 @d_inode(%struct.dentry* %21)
  %23 = load %struct.dentry*, %struct.dentry** %7, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = load %struct.nfs_fh*, %struct.nfs_fh** %8, align 8
  %26 = load %struct.nfs_fattr*, %struct.nfs_fattr** %9, align 8
  %27 = call i32 %20(i32 %22, i32* %24, %struct.nfs_fh* %25, %struct.nfs_fattr* %26, i32* null)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.dentry*, %struct.dentry** %11, align 8
  %29 = call i32 @dput(%struct.dentry* %28)
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* %10, align 4
  %34 = call %struct.vfsmount* @ERR_PTR(i32 %33)
  store %struct.vfsmount* %34, %struct.vfsmount** %5, align 8
  br label %47

35:                                               ; preds = %4
  %36 = load %struct.dentry*, %struct.dentry** %7, align 8
  %37 = load %struct.nfs_fh*, %struct.nfs_fh** %8, align 8
  %38 = load %struct.nfs_fattr*, %struct.nfs_fattr** %9, align 8
  %39 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %40 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.vfsmount* @nfs_do_submount(%struct.dentry* %36, %struct.nfs_fh* %37, %struct.nfs_fattr* %38, i32 %45)
  store %struct.vfsmount* %46, %struct.vfsmount** %5, align 8
  br label %47

47:                                               ; preds = %35, %32
  %48 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  ret %struct.vfsmount* %48
}

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.vfsmount* @ERR_PTR(i32) #1

declare dso_local %struct.vfsmount* @nfs_do_submount(%struct.dentry*, %struct.nfs_fh*, %struct.nfs_fattr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
