; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_nfs42_layouterror_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_nfs42_layouterror_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs42_layouterror_data = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__*, %struct.inode* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.pnfs_layout_hdr* }
%struct.pnfs_layout_hdr = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_server = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, i8*)* @nfs42_layouterror_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs42_layouterror_prepare(%struct.rpc_task* %0, i8* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfs42_layouterror_data*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.nfs_server*, align 8
  %8 = alloca %struct.pnfs_layout_hdr*, align 8
  %9 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.nfs42_layouterror_data*
  store %struct.nfs42_layouterror_data* %11, %struct.nfs42_layouterror_data** %5, align 8
  %12 = load %struct.nfs42_layouterror_data*, %struct.nfs42_layouterror_data** %5, align 8
  %13 = getelementptr inbounds %struct.nfs42_layouterror_data, %struct.nfs42_layouterror_data* %12, i32 0, i32 3
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %6, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %15)
  store %struct.nfs_server* %16, %struct.nfs_server** %7, align 8
  %17 = load %struct.nfs42_layouterror_data*, %struct.nfs42_layouterror_data** %5, align 8
  %18 = getelementptr inbounds %struct.nfs42_layouterror_data, %struct.nfs42_layouterror_data* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %20, align 8
  store %struct.pnfs_layout_hdr* %21, %struct.pnfs_layout_hdr** %8, align 8
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %8, align 8
  %26 = call i32 @pnfs_layout_is_valid(%struct.pnfs_layout_hdr* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %2
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %33 = call i32 @rpc_exit(%struct.rpc_task* %32, i32 0)
  br label %72

34:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %54, %34
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.nfs42_layouterror_data*, %struct.nfs42_layouterror_data** %5, align 8
  %38 = getelementptr inbounds %struct.nfs42_layouterror_data, %struct.nfs42_layouterror_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ult i32 %36, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %35
  %43 = load %struct.nfs42_layouterror_data*, %struct.nfs42_layouterror_data** %5, align 8
  %44 = getelementptr inbounds %struct.nfs42_layouterror_data, %struct.nfs42_layouterror_data* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %8, align 8
  %52 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %51, i32 0, i32 0
  %53 = call i32 @nfs4_stateid_copy(i32* %50, i32* %52)
  br label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %9, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %35

57:                                               ; preds = %35
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %62 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nfs42_layouterror_data*, %struct.nfs42_layouterror_data** %5, align 8
  %65 = getelementptr inbounds %struct.nfs42_layouterror_data, %struct.nfs42_layouterror_data* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load %struct.nfs42_layouterror_data*, %struct.nfs42_layouterror_data** %5, align 8
  %68 = getelementptr inbounds %struct.nfs42_layouterror_data, %struct.nfs42_layouterror_data* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %71 = call i32 @nfs4_setup_sequence(i32 %63, i32* %66, i32* %69, %struct.rpc_task* %70)
  br label %72

72:                                               ; preds = %57, %28
  ret void
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pnfs_layout_is_valid(%struct.pnfs_layout_hdr*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rpc_exit(%struct.rpc_task*, i32) #1

declare dso_local i32 @nfs4_stateid_copy(i32*, i32*) #1

declare dso_local i32 @nfs4_setup_sequence(i32, i32*, i32*, %struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
