; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_nfs4_ff_layout_stat_io_end_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_nfs4_ff_layout_stat_io_end_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs4_ff_layout_mirror = type { i32, i32, i32 }

@NFS_UNSTABLE = common dso_local global i32 0, align 4
@NFS4_FF_MIRROR_STAT_AVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, %struct.nfs4_ff_layout_mirror*, i64, i64, i32)* @nfs4_ff_layout_stat_io_end_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_ff_layout_stat_io_end_write(%struct.rpc_task* %0, %struct.nfs4_ff_layout_mirror* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.rpc_task*, align 8
  %7 = alloca %struct.nfs4_ff_layout_mirror*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %6, align 8
  store %struct.nfs4_ff_layout_mirror* %1, %struct.nfs4_ff_layout_mirror** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @NFS_UNSTABLE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %15

15:                                               ; preds = %14, %5
  %16 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %7, align 8
  %17 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %7, align 8
  %20 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %19, i32 0, i32 2
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 (...) @ktime_get()
  %24 = load %struct.rpc_task*, %struct.rpc_task** %6, align 8
  %25 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @nfs4_ff_layout_stat_io_update_completed(i32* %20, i64 %21, i64 %22, i32 %23, i32 %26)
  %28 = load i32, i32* @NFS4_FF_MIRROR_STAT_AVAIL, align 4
  %29 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %7, align 8
  %30 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %29, i32 0, i32 1
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  %32 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %7, align 8
  %33 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @nfs4_ff_layout_stat_io_update_completed(i32*, i64, i64, i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
