; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayoutdev.c_ff_layout_fetch_ds_ioerr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayoutdev.c_ff_layout_fetch_ds_ioerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.pnfs_layout_hdr = type { i32 }
%struct.pnfs_layout_range = type { i32 }

@discard = common dso_local global %struct.list_head zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_layout_fetch_ds_ioerr(%struct.pnfs_layout_hdr* %0, %struct.pnfs_layout_range* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca %struct.pnfs_layout_hdr*, align 8
  %6 = alloca %struct.pnfs_layout_range*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pnfs_layout_hdr* %0, %struct.pnfs_layout_hdr** %5, align 8
  store %struct.pnfs_layout_range* %1, %struct.pnfs_layout_range** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %5, align 8
  %11 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %6, align 8
  %12 = load %struct.list_head*, %struct.list_head** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @do_layout_fetch_ds_ioerr(%struct.pnfs_layout_hdr* %10, %struct.pnfs_layout_range* %11, %struct.list_head* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i32, i32* getelementptr inbounds (%struct.list_head, %struct.list_head* @discard, i32 0, i32 0), align 4
  %20 = call i32 @LIST_HEAD(i32 %19)
  %21 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %5, align 8
  %22 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %6, align 8
  %23 = call i32 @do_layout_fetch_ds_ioerr(%struct.pnfs_layout_hdr* %21, %struct.pnfs_layout_range* %22, %struct.list_head* @discard, i32 -1)
  %24 = call i32 @ff_layout_free_ds_ioerr(%struct.list_head* @discard)
  br label %25

25:                                               ; preds = %18, %4
  %26 = load i32, i32* %9, align 4
  ret i32 %26
}

declare dso_local i32 @do_layout_fetch_ds_ioerr(%struct.pnfs_layout_hdr*, %struct.pnfs_layout_range*, %struct.list_head*, i32) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @ff_layout_free_ds_ioerr(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
