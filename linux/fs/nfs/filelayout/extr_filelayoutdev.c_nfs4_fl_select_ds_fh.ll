; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/filelayout/extr_filelayoutdev.c_nfs4_fl_select_ds_fh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/filelayout/extr_filelayoutdev.c_nfs4_fl_select_ds_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_fh = type { i32 }
%struct.pnfs_layout_segment = type { i32 }
%struct.nfs4_filelayout_segment = type { i64, i32, %struct.nfs_fh** }

@STRIPE_SPARSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs_fh* @nfs4_fl_select_ds_fh(%struct.pnfs_layout_segment* %0, i64 %1) #0 {
  %3 = alloca %struct.nfs_fh*, align 8
  %4 = alloca %struct.pnfs_layout_segment*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nfs4_filelayout_segment*, align 8
  %7 = alloca i64, align 8
  store %struct.pnfs_layout_segment* %0, %struct.pnfs_layout_segment** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %9 = call %struct.nfs4_filelayout_segment* @FILELAYOUT_LSEG(%struct.pnfs_layout_segment* %8)
  store %struct.nfs4_filelayout_segment* %9, %struct.nfs4_filelayout_segment** %6, align 8
  %10 = load %struct.nfs4_filelayout_segment*, %struct.nfs4_filelayout_segment** %6, align 8
  %11 = getelementptr inbounds %struct.nfs4_filelayout_segment, %struct.nfs4_filelayout_segment* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @STRIPE_SPARSE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = load %struct.nfs4_filelayout_segment*, %struct.nfs4_filelayout_segment** %6, align 8
  %17 = getelementptr inbounds %struct.nfs4_filelayout_segment, %struct.nfs4_filelayout_segment* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i64 0, i64* %7, align 8
  br label %32

21:                                               ; preds = %15
  %22 = load %struct.nfs4_filelayout_segment*, %struct.nfs4_filelayout_segment** %6, align 8
  %23 = getelementptr inbounds %struct.nfs4_filelayout_segment, %struct.nfs4_filelayout_segment* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store %struct.nfs_fh* null, %struct.nfs_fh** %3, align 8
  br label %42

27:                                               ; preds = %21
  %28 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @nfs4_fl_calc_ds_index(%struct.pnfs_layout_segment* %28, i64 %29)
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %20
  br label %35

33:                                               ; preds = %2
  %34 = load i64, i64* %5, align 8
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %33, %32
  %36 = load %struct.nfs4_filelayout_segment*, %struct.nfs4_filelayout_segment** %6, align 8
  %37 = getelementptr inbounds %struct.nfs4_filelayout_segment, %struct.nfs4_filelayout_segment* %36, i32 0, i32 2
  %38 = load %struct.nfs_fh**, %struct.nfs_fh*** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.nfs_fh*, %struct.nfs_fh** %38, i64 %39
  %41 = load %struct.nfs_fh*, %struct.nfs_fh** %40, align 8
  store %struct.nfs_fh* %41, %struct.nfs_fh** %3, align 8
  br label %42

42:                                               ; preds = %35, %26
  %43 = load %struct.nfs_fh*, %struct.nfs_fh** %3, align 8
  ret %struct.nfs_fh* %43
}

declare dso_local %struct.nfs4_filelayout_segment* @FILELAYOUT_LSEG(%struct.pnfs_layout_segment*) #1

declare dso_local i64 @nfs4_fl_calc_ds_index(%struct.pnfs_layout_segment*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
