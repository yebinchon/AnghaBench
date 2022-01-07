; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_add_lseg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_add_lseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_hdr = type { i32 }
%struct.pnfs_layout_segment = type { i32 }
%struct.list_head = type { i32 }

@ff_lseg_range_is_after = common dso_local global i32 0, align 4
@ff_lseg_merge = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnfs_layout_hdr*, %struct.pnfs_layout_segment*, %struct.list_head*)* @ff_layout_add_lseg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ff_layout_add_lseg(%struct.pnfs_layout_hdr* %0, %struct.pnfs_layout_segment* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.pnfs_layout_hdr*, align 8
  %5 = alloca %struct.pnfs_layout_segment*, align 8
  %6 = alloca %struct.list_head*, align 8
  store %struct.pnfs_layout_hdr* %0, %struct.pnfs_layout_hdr** %4, align 8
  store %struct.pnfs_layout_segment* %1, %struct.pnfs_layout_segment** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %7 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %4, align 8
  %8 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %5, align 8
  %9 = load i32, i32* @ff_lseg_range_is_after, align 4
  %10 = load i32, i32* @ff_lseg_merge, align 4
  %11 = load %struct.list_head*, %struct.list_head** %6, align 8
  %12 = call i32 @pnfs_generic_layout_insert_lseg(%struct.pnfs_layout_hdr* %7, %struct.pnfs_layout_segment* %8, i32 %9, i32 %10, %struct.list_head* %11)
  ret void
}

declare dso_local i32 @pnfs_generic_layout_insert_lseg(%struct.pnfs_layout_hdr*, %struct.pnfs_layout_segment*, i32, i32, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
