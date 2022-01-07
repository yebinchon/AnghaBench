; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_do_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_do_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.nfs4_createdata = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32 }

@NF4DIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.nfs4_createdata*)* @nfs4_do_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_do_create(%struct.inode* %0, %struct.dentry* %1, %struct.nfs4_createdata* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.nfs4_createdata*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.nfs4_createdata* %2, %struct.nfs4_createdata** %6, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.TYPE_9__* @NFS_SERVER(%struct.inode* %8)
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.TYPE_9__* @NFS_SERVER(%struct.inode* %12)
  %14 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %6, align 8
  %15 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %14, i32 0, i32 2
  %16 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %6, align 8
  %17 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %6, align 8
  %20 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 4
  %22 = call i32 @nfs4_call_sync(i32 %11, %struct.TYPE_9__* %13, i32* %15, i32* %18, i32* %21, i32 1)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %67

25:                                               ; preds = %3
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %6, align 8
  %31 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  %33 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %6, align 8
  %34 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @update_changeattr_locked(%struct.inode* %29, i32* %32, i32 %38, i32 0)
  %40 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %6, align 8
  %41 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NF4DIR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %25
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = call i32 @nfs4_inc_nlink_locked(%struct.inode* %47)
  br label %49

49:                                               ; preds = %46, %25
  %50 = load %struct.inode*, %struct.inode** %4, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load %struct.dentry*, %struct.dentry** %5, align 8
  %54 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %6, align 8
  %55 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %6, align 8
  %59 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %6, align 8
  %63 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @nfs_instantiate(%struct.dentry* %53, i32 %57, %struct.TYPE_8__* %61, i32 %65)
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %49, %3
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @nfs4_call_sync(i32, %struct.TYPE_9__*, i32*, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_9__* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @update_changeattr_locked(%struct.inode*, i32*, i32, i32) #1

declare dso_local i32 @nfs4_inc_nlink_locked(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfs_instantiate(%struct.dentry*, i32, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
