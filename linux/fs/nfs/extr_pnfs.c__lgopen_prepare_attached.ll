; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c__lgopen_prepare_attached.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c__lgopen_prepare_attached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_opendata = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.nfs4_layoutget*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.nfs4_layoutget = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.nfs_open_context = type { i32 }
%struct.pnfs_layout_range = type { i64, i32, i32 }
%struct.pnfs_layout_hdr = type { i32 }

@FMODE_WRITE = common dso_local global i32 0, align 4
@IOMODE_RW = common dso_local global i64 0, align 8
@IOMODE_READ = common dso_local global i64 0, align 8
@NFS4_MAX_UINT64 = common dso_local global i32 0, align 4
@current_stateid = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_opendata*, %struct.nfs_open_context*)* @_lgopen_prepare_attached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_lgopen_prepare_attached(%struct.nfs4_opendata* %0, %struct.nfs_open_context* %1) #0 {
  %3 = alloca %struct.nfs4_opendata*, align 8
  %4 = alloca %struct.nfs_open_context*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.pnfs_layout_range, align 8
  %7 = alloca %struct.nfs4_layoutget*, align 8
  %8 = alloca %struct.pnfs_layout_hdr*, align 8
  store %struct.nfs4_opendata* %0, %struct.nfs4_opendata** %3, align 8
  store %struct.nfs_open_context* %1, %struct.nfs_open_context** %4, align 8
  %9 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %10 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %9, i32 0, i32 3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %6, i32 0, i32 0
  %15 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %16 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FMODE_WRITE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i64, i64* @IOMODE_RW, align 8
  br label %26

24:                                               ; preds = %2
  %25 = load i64, i64* @IOMODE_READ, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i64 [ %23, %22 ], [ %25, %24 ]
  store i64 %27, i64* %14, align 8
  %28 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %6, i32 0, i32 1
  %29 = load i32, i32* @NFS4_MAX_UINT64, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %6, i32 0, i32 2
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %6, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IOMODE_READ, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %26
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = call i64 @i_size_read(%struct.inode* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39, %35
  br label %80

47:                                               ; preds = %39, %26
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = load %struct.nfs_open_context*, %struct.nfs_open_context** %4, align 8
  %50 = call %struct.pnfs_layout_hdr* @_pnfs_grab_empty_layout(%struct.inode* %48, %struct.nfs_open_context* %49)
  store %struct.pnfs_layout_hdr* %50, %struct.pnfs_layout_hdr** %8, align 8
  %51 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %8, align 8
  %52 = icmp ne %struct.pnfs_layout_hdr* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %80

54:                                               ; preds = %47
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = load %struct.nfs_open_context*, %struct.nfs_open_context** %4, align 8
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.nfs4_layoutget* @pnfs_alloc_init_layoutget_args(%struct.inode* %55, %struct.nfs_open_context* %56, i32* @current_stateid, %struct.pnfs_layout_range* %6, i32 %57)
  store %struct.nfs4_layoutget* %58, %struct.nfs4_layoutget** %7, align 8
  %59 = load %struct.nfs4_layoutget*, %struct.nfs4_layoutget** %7, align 8
  %60 = icmp ne %struct.nfs4_layoutget* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %54
  %62 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %8, align 8
  %63 = call i32 @pnfs_clear_first_layoutget(%struct.pnfs_layout_hdr* %62)
  %64 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %8, align 8
  %65 = call i32 @pnfs_put_layout_hdr(%struct.pnfs_layout_hdr* %64)
  br label %80

66:                                               ; preds = %54
  %67 = load %struct.nfs4_layoutget*, %struct.nfs4_layoutget** %7, align 8
  %68 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %69 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %68, i32 0, i32 2
  store %struct.nfs4_layoutget* %67, %struct.nfs4_layoutget** %69, align 8
  %70 = load %struct.nfs4_layoutget*, %struct.nfs4_layoutget** %7, align 8
  %71 = getelementptr inbounds %struct.nfs4_layoutget, %struct.nfs4_layoutget* %70, i32 0, i32 1
  %72 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %73 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i32* %71, i32** %74, align 8
  %75 = load %struct.nfs4_layoutget*, %struct.nfs4_layoutget** %7, align 8
  %76 = getelementptr inbounds %struct.nfs4_layoutget, %struct.nfs4_layoutget* %75, i32 0, i32 0
  %77 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %78 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store i32* %76, i32** %79, align 8
  br label %80

80:                                               ; preds = %66, %61, %53, %46
  ret void
}

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local %struct.pnfs_layout_hdr* @_pnfs_grab_empty_layout(%struct.inode*, %struct.nfs_open_context*) #1

declare dso_local %struct.nfs4_layoutget* @pnfs_alloc_init_layoutget_args(%struct.inode*, %struct.nfs_open_context*, i32*, %struct.pnfs_layout_range*, i32) #1

declare dso_local i32 @pnfs_clear_first_layoutget(%struct.pnfs_layout_hdr*) #1

declare dso_local i32 @pnfs_put_layout_hdr(%struct.pnfs_layout_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
