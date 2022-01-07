; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_daio_mgr_commit_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_daio_mgr_commit_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }
%struct.daio_mgr_ctrl_blk = type { i32*, i32*, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@AUDIO_IO_TX_CTL = common dso_local global i64 0, align 8
@AUDIO_IO_RX_CTL = common dso_local global i64 0, align 8
@AUDIO_IO_AIM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, i8*)* @daio_mgr_commit_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daio_mgr_commit_write(%struct.hw* %0, i8* %1) #0 {
  %3 = alloca %struct.hw*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.daio_mgr_ctrl_blk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.daio_mgr_ctrl_blk*
  store %struct.daio_mgr_ctrl_blk* %9, %struct.daio_mgr_ctrl_blk** %5, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %86, %2
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %89

13:                                               ; preds = %10
  %14 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %15 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %13
  %24 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %25 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = load %struct.hw*, %struct.hw** %3, align 8
  %32 = load i64, i64* @AUDIO_IO_TX_CTL, align 8
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 64, %33
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @hw_write_20kx(%struct.hw* %31, i64 %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 1, %39
  %41 = xor i32 %40, -1
  %42 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %43 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %41
  store i32 %47, i32* %45, align 8
  %48 = call i32 @mdelay(i32 1)
  br label %49

49:                                               ; preds = %23, %13
  %50 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %51 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = shl i32 1, %55
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %49
  %60 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %61 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %6, align 4
  %67 = load %struct.hw*, %struct.hw** %3, align 8
  %68 = load i64, i64* @AUDIO_IO_RX_CTL, align 8
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 64, %69
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %68, %71
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @hw_write_20kx(%struct.hw* %67, i64 %72, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = shl i32 1, %75
  %77 = xor i32 %76, -1
  %78 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %79 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %77
  store i32 %83, i32* %81, align 4
  %84 = call i32 @mdelay(i32 1)
  br label %85

85:                                               ; preds = %59, %49
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %10

89:                                               ; preds = %10
  %90 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %91 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %89
  %97 = load %struct.hw*, %struct.hw** %3, align 8
  %98 = load i64, i64* @AUDIO_IO_AIM, align 8
  %99 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %100 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = mul nsw i32 %102, 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %98, %104
  %106 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %107 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @hw_write_20kx(%struct.hw* %97, i64 %105, i32 %109)
  %111 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %112 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  store i64 0, i64* %114, align 8
  br label %115

115:                                              ; preds = %96, %89
  ret i32 0
}

declare dso_local i32 @hw_write_20kx(%struct.hw*, i64, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
