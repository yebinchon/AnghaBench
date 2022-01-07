; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_read.c_nfs_readpage_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_read.c_nfs_readpage_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs_pgio_header = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_7__ = type { i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)* }
%struct.TYPE_8__ = type { i32 }

@NFSIOS_SERVERREADBYTES = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@NFS_INO_STALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.nfs_pgio_header*, %struct.inode*)* @nfs_readpage_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_readpage_done(%struct.rpc_task* %0, %struct.nfs_pgio_header* %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca %struct.nfs_pgio_header*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %5, align 8
  store %struct.nfs_pgio_header* %1, %struct.nfs_pgio_header** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  %9 = load %struct.inode*, %struct.inode** %7, align 8
  %10 = call %struct.TYPE_7__* @NFS_PROTO(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)*, i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)** %11, align 8
  %13 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %14 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %6, align 8
  %15 = call i32 %12(%struct.rpc_task* %13, %struct.nfs_pgio_header* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %56

20:                                               ; preds = %3
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = load i32, i32* @NFSIOS_SERVERREADBYTES, align 4
  %23 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %6, align 8
  %24 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @nfs_add_stats(%struct.inode* %21, i32 %22, i32 %26)
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %30 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %6, align 8
  %33 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %6, align 8
  %37 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @trace_nfs_readpage_done(%struct.inode* %28, i32 %31, i32 %35, i32 %39)
  %41 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %42 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ESTALE, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %20
  %48 = load i32, i32* @NFS_INO_STALE, align 4
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = call %struct.TYPE_8__* @NFS_I(%struct.inode* %49)
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = call i32 @set_bit(i32 %48, i32* %51)
  %53 = load %struct.inode*, %struct.inode** %7, align 8
  %54 = call i32 @nfs_mark_for_revalidate(%struct.inode* %53)
  br label %55

55:                                               ; preds = %47, %20
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %18
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_7__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @nfs_add_stats(%struct.inode*, i32, i32) #1

declare dso_local i32 @trace_nfs_readpage_done(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.TYPE_8__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @nfs_mark_for_revalidate(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
