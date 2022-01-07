; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_mark_lseg_invalid_or_return.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_mark_lseg_invalid_or_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_segment = type { i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnfs_layout_segment*, %struct.list_head*)* @mark_lseg_invalid_or_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_lseg_invalid_or_return(%struct.pnfs_layout_segment* %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnfs_layout_segment*, align 8
  %5 = alloca %struct.list_head*, align 8
  store %struct.pnfs_layout_segment* %0, %struct.pnfs_layout_segment** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  %6 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %7 = load %struct.list_head*, %struct.list_head** %5, align 8
  %8 = call i32 @mark_lseg_invalid(%struct.pnfs_layout_segment* %6, %struct.list_head* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %17

11:                                               ; preds = %2
  %12 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %13 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %16 = call i32 @pnfs_cache_lseg_for_layoutreturn(i32 %14, %struct.pnfs_layout_segment* %15)
  store i32 1, i32* %3, align 4
  br label %17

17:                                               ; preds = %11, %10
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @mark_lseg_invalid(%struct.pnfs_layout_segment*, %struct.list_head*) #1

declare dso_local i32 @pnfs_cache_lseg_for_layoutreturn(i32, %struct.pnfs_layout_segment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
