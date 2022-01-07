; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_match_lseg_recall.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_match_lseg_recall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_segment = type { i32, i32 }
%struct.pnfs_layout_range = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnfs_layout_segment*, %struct.pnfs_layout_range*, i64)* @pnfs_match_lseg_recall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnfs_match_lseg_recall(%struct.pnfs_layout_segment* %0, %struct.pnfs_layout_range* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pnfs_layout_segment*, align 8
  %6 = alloca %struct.pnfs_layout_range*, align 8
  %7 = alloca i64, align 8
  store %struct.pnfs_layout_segment* %0, %struct.pnfs_layout_segment** %5, align 8
  store %struct.pnfs_layout_range* %1, %struct.pnfs_layout_range** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %5, align 8
  %12 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @pnfs_seqid_is_newer(i32 %13, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %27

18:                                               ; preds = %10, %3
  %19 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %6, align 8
  %20 = icmp eq %struct.pnfs_layout_range* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %27

22:                                               ; preds = %18
  %23 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %5, align 8
  %24 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %23, i32 0, i32 0
  %25 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %6, align 8
  %26 = call i32 @pnfs_should_free_range(i32* %24, %struct.pnfs_layout_range* %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %21, %17
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i64 @pnfs_seqid_is_newer(i32, i64) #1

declare dso_local i32 @pnfs_should_free_range(i32*, %struct.pnfs_layout_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
