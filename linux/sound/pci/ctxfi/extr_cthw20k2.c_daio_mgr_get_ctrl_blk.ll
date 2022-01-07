; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_daio_mgr_get_ctrl_blk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_daio_mgr_get_ctrl_blk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }
%struct.daio_mgr_ctrl_blk = type { i8**, i8** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AUDIO_IO_TX_CTL = common dso_local global i64 0, align 8
@AUDIO_IO_RX_CTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, i8**)* @daio_mgr_get_ctrl_blk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daio_mgr_get_ctrl_blk(%struct.hw* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.daio_mgr_ctrl_blk*, align 8
  %7 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i8**, i8*** %5, align 8
  store i8* null, i8** %8, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.daio_mgr_ctrl_blk* @kzalloc(i32 16, i32 %9)
  store %struct.daio_mgr_ctrl_blk* %10, %struct.daio_mgr_ctrl_blk** %6, align 8
  %11 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %6, align 8
  %12 = icmp ne %struct.daio_mgr_ctrl_blk* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %54

16:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %47, %16
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 8
  br i1 %19, label %20, label %50

20:                                               ; preds = %17
  %21 = load %struct.hw*, %struct.hw** %4, align 8
  %22 = load i64, i64* @AUDIO_IO_TX_CTL, align 8
  %23 = load i32, i32* %7, align 4
  %24 = mul nsw i32 64, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = call i8* @hw_read_20kx(%struct.hw* %21, i64 %26)
  %28 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %6, align 8
  %29 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  store i8* %27, i8** %33, align 8
  %34 = load %struct.hw*, %struct.hw** %4, align 8
  %35 = load i64, i64* @AUDIO_IO_RX_CTL, align 8
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 64, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = call i8* @hw_read_20kx(%struct.hw* %34, i64 %39)
  %41 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %6, align 8
  %42 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  store i8* %40, i8** %46, align 8
  br label %47

47:                                               ; preds = %20
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %17

50:                                               ; preds = %17
  %51 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %6, align 8
  %52 = bitcast %struct.daio_mgr_ctrl_blk* %51 to i8*
  %53 = load i8**, i8*** %5, align 8
  store i8* %52, i8** %53, align 8
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %13
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.daio_mgr_ctrl_blk* @kzalloc(i32, i32) #1

declare dso_local i8* @hw_read_20kx(%struct.hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
