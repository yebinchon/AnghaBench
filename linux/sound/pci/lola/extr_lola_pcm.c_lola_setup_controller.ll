; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_setup_controller.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_setup_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { i32 }
%struct.lola_pcm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.lola_stream = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@LOLA_BDL_ENTRY_SIZE = common dso_local global i32 0, align 4
@BDPL = common dso_local global i32 0, align 4
@BDPU = common dso_local global i32 0, align 4
@LVI = common dso_local global i32 0, align 4
@CTL = common dso_local global i32 0, align 4
@LOLA_DSD_CTL_IOCE = common dso_local global i32 0, align 4
@LOLA_DSD_CTL_DEIE = common dso_local global i32 0, align 4
@LOLA_DSD_CTL_SRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lola*, %struct.lola_pcm*, %struct.lola_stream*)* @lola_setup_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lola_setup_controller(%struct.lola* %0, %struct.lola_pcm* %1, %struct.lola_stream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lola*, align 8
  %6 = alloca %struct.lola_pcm*, align 8
  %7 = alloca %struct.lola_stream*, align 8
  %8 = alloca i64, align 8
  store %struct.lola* %0, %struct.lola** %5, align 8
  store %struct.lola_pcm* %1, %struct.lola_pcm** %6, align 8
  store %struct.lola_stream* %2, %struct.lola_stream** %7, align 8
  %9 = load %struct.lola_stream*, %struct.lola_stream** %7, align 8
  %10 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %73

16:                                               ; preds = %3
  %17 = load %struct.lola_pcm*, %struct.lola_pcm** %6, align 8
  %18 = getelementptr inbounds %struct.lola_pcm, %struct.lola_pcm* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @LOLA_BDL_ENTRY_SIZE, align 4
  %22 = load %struct.lola_stream*, %struct.lola_stream** %7, align 8
  %23 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %20, %26
  store i64 %27, i64* %8, align 8
  %28 = load %struct.lola*, %struct.lola** %5, align 8
  %29 = load %struct.lola_stream*, %struct.lola_stream** %7, align 8
  %30 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BDPL, align 4
  %33 = load i64, i64* %8, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @lola_dsd_write(%struct.lola* %28, i32 %31, i32 %32, i32 %34)
  %36 = load %struct.lola*, %struct.lola** %5, align 8
  %37 = load %struct.lola_stream*, %struct.lola_stream** %7, align 8
  %38 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BDPU, align 4
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @upper_32_bits(i64 %41)
  %43 = call i32 @lola_dsd_write(%struct.lola* %36, i32 %39, i32 %40, i32 %42)
  %44 = load %struct.lola*, %struct.lola** %5, align 8
  %45 = load %struct.lola_stream*, %struct.lola_stream** %7, align 8
  %46 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @LVI, align 4
  %49 = load %struct.lola_stream*, %struct.lola_stream** %7, align 8
  %50 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  %53 = call i32 @lola_dsd_write(%struct.lola* %44, i32 %47, i32 %48, i32 %52)
  %54 = load %struct.lola*, %struct.lola** %5, align 8
  %55 = load %struct.lola_stream*, %struct.lola_stream** %7, align 8
  %56 = call i32 @lola_stream_clear_pending_irq(%struct.lola* %54, %struct.lola_stream* %55)
  %57 = load %struct.lola*, %struct.lola** %5, align 8
  %58 = load %struct.lola_stream*, %struct.lola_stream** %7, align 8
  %59 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CTL, align 4
  %62 = load i32, i32* @LOLA_DSD_CTL_IOCE, align 4
  %63 = load i32, i32* @LOLA_DSD_CTL_DEIE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @LOLA_DSD_CTL_SRUN, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @lola_dsd_write(%struct.lola* %57, i32 %60, i32 %61, i32 %66)
  %68 = load %struct.lola_stream*, %struct.lola_stream** %7, align 8
  %69 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  %70 = load %struct.lola*, %struct.lola** %5, align 8
  %71 = load %struct.lola_stream*, %struct.lola_stream** %7, align 8
  %72 = call i32 @lola_stream_wait_for_fifo(%struct.lola* %70, %struct.lola_stream* %71, i32 1)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %16, %13
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @lola_dsd_write(%struct.lola*, i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @lola_stream_clear_pending_irq(%struct.lola*, %struct.lola_stream*) #1

declare dso_local i32 @lola_stream_wait_for_fifo(%struct.lola*, %struct.lola_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
