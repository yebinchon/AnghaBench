; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_nfs4_layout_refresh_old_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_nfs4_layout_refresh_old_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.pnfs_layout_range = type { i32, i32, i32 }
%struct.inode = type { i32 }
%struct.pnfs_layout_hdr = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.pnfs_layout_hdr* }

@NFS4_MAX_UINT64 = common dso_local global i32 0, align 4
@IOMODE_ANY = common dso_local global i32 0, align 4
@head = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_layout_refresh_old_stateid(%struct.TYPE_9__* %0, %struct.pnfs_layout_range* %1, %struct.inode* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.pnfs_layout_range*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.pnfs_layout_hdr*, align 8
  %8 = alloca %struct.pnfs_layout_range, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.pnfs_layout_range* %1, %struct.pnfs_layout_range** %5, align 8
  store %struct.inode* %2, %struct.inode** %6, align 8
  %11 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %8, i32 0, i32 0
  %12 = load i32, i32* @NFS4_MAX_UINT64, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %8, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %8, i32 0, i32 2
  %15 = load i32, i32* @IOMODE_ANY, align 4
  store i32 %15, i32* %14, align 4
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* @head, align 4
  %17 = call i32 @LIST_HEAD(i32 %16)
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call %struct.TYPE_11__* @NFS_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %23, align 8
  store %struct.pnfs_layout_hdr* %24, %struct.pnfs_layout_hdr** %7, align 8
  %25 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %7, align 8
  %26 = icmp ne %struct.pnfs_layout_hdr* %25, null
  br i1 %26, label %27, label %64

27:                                               ; preds = %3
  %28 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %7, align 8
  %29 = call i64 @pnfs_layout_is_valid(%struct.pnfs_layout_hdr* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %27
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %7, align 8
  %34 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %33, i32 0, i32 0
  %35 = call i64 @nfs4_stateid_match_other(%struct.TYPE_9__* %32, %struct.TYPE_10__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %31
  %38 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %7, align 8
  %39 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = call i32 @nfs4_stateid_is_newer(%struct.TYPE_10__* %39, %struct.TYPE_9__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = call i32 @nfs4_stateid_seqid_inc(%struct.TYPE_9__* %44)
  store i32 1, i32* %9, align 4
  br label %65

46:                                               ; preds = %37
  %47 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %7, align 8
  %48 = call i32 @pnfs_mark_matching_lsegs_return(%struct.pnfs_layout_hdr* %47, i32* @head, %struct.pnfs_layout_range* %8, i32 0)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %7, align 8
  %55 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %5, align 8
  %61 = bitcast %struct.pnfs_layout_range* %60 to i8*
  %62 = bitcast %struct.pnfs_layout_range* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 12, i1 false)
  store i32 1, i32* %9, align 4
  br label %63

63:                                               ; preds = %53, %46
  br label %64

64:                                               ; preds = %63, %31, %27, %3
  br label %65

65:                                               ; preds = %64, %43
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = call i32 @pnfs_free_lseg_list(i32* @head)
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_11__* @NFS_I(%struct.inode*) #1

declare dso_local i64 @pnfs_layout_is_valid(%struct.pnfs_layout_hdr*) #1

declare dso_local i64 @nfs4_stateid_match_other(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @nfs4_stateid_is_newer(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i32 @nfs4_stateid_seqid_inc(%struct.TYPE_9__*) #1

declare dso_local i32 @pnfs_mark_matching_lsegs_return(%struct.pnfs_layout_hdr*, i32*, %struct.pnfs_layout_range*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pnfs_free_lseg_list(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
