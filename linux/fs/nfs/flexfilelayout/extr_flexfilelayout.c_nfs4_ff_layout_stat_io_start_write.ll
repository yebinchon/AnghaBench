; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_nfs4_ff_layout_stat_io_start_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_nfs4_ff_layout_stat_io_start_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs4_ff_layout_mirror = type { i32, i32, i32 }

@NFS4_FF_MIRROR_STAT_AVAIL = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.nfs4_ff_layout_mirror*, i32, i32)* @nfs4_ff_layout_stat_io_start_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_ff_layout_stat_io_start_write(%struct.inode* %0, %struct.nfs4_ff_layout_mirror* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.nfs4_ff_layout_mirror*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.nfs4_ff_layout_mirror* %1, %struct.nfs4_ff_layout_mirror** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %6, align 8
  %11 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %6, align 8
  %14 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %6, align 8
  %15 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %14, i32 0, i32 2
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @nfs4_ff_layoutstat_start_io(%struct.nfs4_ff_layout_mirror* %13, i32* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %6, align 8
  %19 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %18, i32 0, i32 2
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @nfs4_ff_layout_stat_io_update_requested(i32* %19, i32 %20)
  %22 = load i32, i32* @NFS4_FF_MIRROR_STAT_AVAIL, align 4
  %23 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %6, align 8
  %24 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %23, i32 0, i32 1
  %25 = call i32 @set_bit(i32 %22, i32* %24)
  %26 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %6, align 8
  %27 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = load i32, i32* @GFP_NOIO, align 4
  %34 = call i32 @pnfs_report_layoutstat(%struct.inode* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %4
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @nfs4_ff_layoutstat_start_io(%struct.nfs4_ff_layout_mirror*, i32*, i32) #1

declare dso_local i32 @nfs4_ff_layout_stat_io_update_requested(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pnfs_report_layoutstat(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
