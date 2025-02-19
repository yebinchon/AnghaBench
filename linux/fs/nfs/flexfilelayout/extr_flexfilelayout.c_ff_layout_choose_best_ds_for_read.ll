; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_choose_best_ds_for_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_choose_best_ds_for_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_pnfs_ds = type { i32 }
%struct.pnfs_layout_segment = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_pnfs_ds* (%struct.pnfs_layout_segment*, i32, i32*)* @ff_layout_choose_best_ds_for_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_pnfs_ds* @ff_layout_choose_best_ds_for_read(%struct.pnfs_layout_segment* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.nfs4_pnfs_ds*, align 8
  %5 = alloca %struct.pnfs_layout_segment*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nfs4_pnfs_ds*, align 8
  store %struct.pnfs_layout_segment* %0, %struct.pnfs_layout_segment** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32*, i32** %7, align 8
  %12 = call %struct.nfs4_pnfs_ds* @ff_layout_choose_valid_ds_for_read(%struct.pnfs_layout_segment* %9, i32 %10, i32* %11)
  store %struct.nfs4_pnfs_ds* %12, %struct.nfs4_pnfs_ds** %8, align 8
  %13 = load %struct.nfs4_pnfs_ds*, %struct.nfs4_pnfs_ds** %8, align 8
  %14 = icmp ne %struct.nfs4_pnfs_ds* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load %struct.nfs4_pnfs_ds*, %struct.nfs4_pnfs_ds** %8, align 8
  store %struct.nfs4_pnfs_ds* %16, %struct.nfs4_pnfs_ds** %4, align 8
  br label %22

17:                                               ; preds = %3
  %18 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = call %struct.nfs4_pnfs_ds* @ff_layout_choose_any_ds_for_read(%struct.pnfs_layout_segment* %18, i32 %19, i32* %20)
  store %struct.nfs4_pnfs_ds* %21, %struct.nfs4_pnfs_ds** %4, align 8
  br label %22

22:                                               ; preds = %17, %15
  %23 = load %struct.nfs4_pnfs_ds*, %struct.nfs4_pnfs_ds** %4, align 8
  ret %struct.nfs4_pnfs_ds* %23
}

declare dso_local %struct.nfs4_pnfs_ds* @ff_layout_choose_valid_ds_for_read(%struct.pnfs_layout_segment*, i32, i32*) #1

declare dso_local %struct.nfs4_pnfs_ds* @ff_layout_choose_any_ds_for_read(%struct.pnfs_layout_segment*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
