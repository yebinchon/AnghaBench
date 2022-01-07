; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c__lgopen_prepare_floating.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c__lgopen_prepare_floating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_opendata = type { %struct.TYPE_3__, %struct.TYPE_4__, %struct.nfs4_layoutget* }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.nfs4_layoutget = type { i32, i32 }
%struct.nfs_open_context = type { i32 }
%struct.pnfs_layout_range = type { i32, i32, i32 }

@NFS4_MAX_UINT64 = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@IOMODE_RW = common dso_local global i32 0, align 4
@IOMODE_READ = common dso_local global i32 0, align 4
@current_stateid = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_opendata*, %struct.nfs_open_context*)* @_lgopen_prepare_floating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_lgopen_prepare_floating(%struct.nfs4_opendata* %0, %struct.nfs_open_context* %1) #0 {
  %3 = alloca %struct.nfs4_opendata*, align 8
  %4 = alloca %struct.nfs_open_context*, align 8
  %5 = alloca %struct.pnfs_layout_range, align 4
  %6 = alloca %struct.nfs4_layoutget*, align 8
  store %struct.nfs4_opendata* %0, %struct.nfs4_opendata** %3, align 8
  store %struct.nfs_open_context* %1, %struct.nfs_open_context** %4, align 8
  %7 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %5, i32 0, i32 0
  %8 = load i32, i32* @NFS4_MAX_UINT64, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %5, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %5, i32 0, i32 2
  %11 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %12 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @FMODE_WRITE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @IOMODE_RW, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @IOMODE_READ, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %10, align 4
  %24 = load %struct.nfs_open_context*, %struct.nfs_open_context** %4, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.nfs4_layoutget* @pnfs_alloc_init_layoutget_args(i32* null, %struct.nfs_open_context* %24, i32* @current_stateid, %struct.pnfs_layout_range* %5, i32 %25)
  store %struct.nfs4_layoutget* %26, %struct.nfs4_layoutget** %6, align 8
  %27 = load %struct.nfs4_layoutget*, %struct.nfs4_layoutget** %6, align 8
  %28 = icmp ne %struct.nfs4_layoutget* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %44

30:                                               ; preds = %22
  %31 = load %struct.nfs4_layoutget*, %struct.nfs4_layoutget** %6, align 8
  %32 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %33 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %32, i32 0, i32 2
  store %struct.nfs4_layoutget* %31, %struct.nfs4_layoutget** %33, align 8
  %34 = load %struct.nfs4_layoutget*, %struct.nfs4_layoutget** %6, align 8
  %35 = getelementptr inbounds %struct.nfs4_layoutget, %struct.nfs4_layoutget* %34, i32 0, i32 1
  %36 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %37 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32* %35, i32** %38, align 8
  %39 = load %struct.nfs4_layoutget*, %struct.nfs4_layoutget** %6, align 8
  %40 = getelementptr inbounds %struct.nfs4_layoutget, %struct.nfs4_layoutget* %39, i32 0, i32 0
  %41 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %42 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32* %40, i32** %43, align 8
  br label %44

44:                                               ; preds = %30, %29
  ret void
}

declare dso_local %struct.nfs4_layoutget* @pnfs_alloc_init_layoutget_args(i32*, %struct.nfs_open_context*, i32*, %struct.pnfs_layout_range*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
