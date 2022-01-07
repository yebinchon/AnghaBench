; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_nfs4_ff_layout_stat_io_end_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_nfs4_ff_layout_stat_io_end_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs4_ff_layout_mirror = type { i32, i32, i32 }

@NFS4_FF_MIRROR_STAT_AVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, %struct.nfs4_ff_layout_mirror*, i32, i32)* @nfs4_ff_layout_stat_io_end_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_ff_layout_stat_io_end_read(%struct.rpc_task* %0, %struct.nfs4_ff_layout_mirror* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca %struct.nfs4_ff_layout_mirror*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %5, align 8
  store %struct.nfs4_ff_layout_mirror* %1, %struct.nfs4_ff_layout_mirror** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %6, align 8
  %10 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %6, align 8
  %13 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %12, i32 0, i32 2
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 (...) @ktime_get()
  %17 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %18 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @nfs4_ff_layout_stat_io_update_completed(i32* %13, i32 %14, i32 %15, i32 %16, i32 %19)
  %21 = load i32, i32* @NFS4_FF_MIRROR_STAT_AVAIL, align 4
  %22 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %6, align 8
  %23 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %22, i32 0, i32 1
  %24 = call i32 @set_bit(i32 %21, i32* %23)
  %25 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %6, align 8
  %26 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @nfs4_ff_layout_stat_io_update_completed(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
