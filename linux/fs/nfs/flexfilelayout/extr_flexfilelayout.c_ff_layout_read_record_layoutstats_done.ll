; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_read_record_layoutstats_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_read_record_layoutstats_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs_pgio_header = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NFS_IOHDR_STAT = common dso_local global i32 0, align 4
@NFS_LSEG_LAYOUTRETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, %struct.nfs_pgio_header*)* @ff_layout_read_record_layoutstats_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ff_layout_read_record_layoutstats_done(%struct.rpc_task* %0, %struct.nfs_pgio_header* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca %struct.nfs_pgio_header*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store %struct.nfs_pgio_header* %1, %struct.nfs_pgio_header** %4, align 8
  %5 = load i32, i32* @NFS_IOHDR_STAT, align 4
  %6 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %7 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %6, i32 0, i32 4
  %8 = call i32 @test_and_clear_bit(i32 %5, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %35

11:                                               ; preds = %2
  %12 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %13 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %14 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %17 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @FF_LAYOUT_COMP(%struct.TYPE_6__* %15, i32 %18)
  %20 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %21 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %25 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @nfs4_ff_layout_stat_io_end_read(%struct.rpc_task* %12, i32 %19, i32 %23, i32 %27)
  %29 = load i32, i32* @NFS_LSEG_LAYOUTRETURN, align 4
  %30 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %31 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = call i32 @set_bit(i32 %29, i32* %33)
  br label %35

35:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @nfs4_ff_layout_stat_io_end_read(%struct.rpc_task*, i32, i32, i32) #1

declare dso_local i32 @FF_LAYOUT_COMP(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
