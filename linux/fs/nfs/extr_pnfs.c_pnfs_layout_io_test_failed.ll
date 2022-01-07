; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_layout_io_test_failed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_layout_io_test_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_hdr = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@PNFS_LAYOUTGET_RETRY_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnfs_layout_hdr*, i32)* @pnfs_layout_io_test_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnfs_layout_io_test_failed(%struct.pnfs_layout_hdr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnfs_layout_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pnfs_layout_hdr* %0, %struct.pnfs_layout_hdr** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @pnfs_iomode_to_fail_bit(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %4, align 8
  %13 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %12, i32 0, i32 1
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

17:                                               ; preds = %2
  %18 = load i64, i64* @jiffies, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @PNFS_LAYOUTGET_RETRY_TIMEOUT, align 8
  %21 = sub i64 %19, %20
  store i64 %21, i64* %6, align 8
  %22 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %4, align 8
  %23 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @time_in_range(i32 %24, i64 %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %17
  %30 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @pnfs_layout_clear_fail_bit(%struct.pnfs_layout_hdr* %30, i32 %31)
  store i32 0, i32* %3, align 4
  br label %34

33:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %29, %16
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @pnfs_iomode_to_fail_bit(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @time_in_range(i32, i64, i64) #1

declare dso_local i32 @pnfs_layout_clear_fail_bit(%struct.pnfs_layout_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
