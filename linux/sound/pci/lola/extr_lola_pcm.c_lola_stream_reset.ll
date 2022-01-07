; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_stream_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_stream_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { i32 }
%struct.lola_stream = type { i32, i64, i32, i64 }

@CTL = common dso_local global i32 0, align 4
@LOLA_DSD_CTL_IOCE = common dso_local global i32 0, align 4
@LOLA_DSD_CTL_DEIE = common dso_local global i32 0, align 4
@LOLA_DSD_CTL_SRST = common dso_local global i32 0, align 4
@LVI = common dso_local global i32 0, align 4
@BDPU = common dso_local global i32 0, align 4
@BDPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lola*, %struct.lola_stream*)* @lola_stream_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lola_stream_reset(%struct.lola* %0, %struct.lola_stream* %1) #0 {
  %3 = alloca %struct.lola*, align 8
  %4 = alloca %struct.lola_stream*, align 8
  store %struct.lola* %0, %struct.lola** %3, align 8
  store %struct.lola_stream* %1, %struct.lola_stream** %4, align 8
  %5 = load %struct.lola_stream*, %struct.lola_stream** %4, align 8
  %6 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %66

9:                                                ; preds = %2
  %10 = load %struct.lola_stream*, %struct.lola_stream** %4, align 8
  %11 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.lola*, %struct.lola** %3, align 8
  %16 = load %struct.lola_stream*, %struct.lola_stream** %4, align 8
  %17 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @lola_sync_pause(%struct.lola* %15, i32 %18)
  br label %20

20:                                               ; preds = %14, %9
  %21 = load %struct.lola_stream*, %struct.lola_stream** %4, align 8
  %22 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.lola*, %struct.lola** %3, align 8
  %24 = load %struct.lola_stream*, %struct.lola_stream** %4, align 8
  %25 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CTL, align 4
  %28 = load i32, i32* @LOLA_DSD_CTL_IOCE, align 4
  %29 = load i32, i32* @LOLA_DSD_CTL_DEIE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @lola_dsd_write(%struct.lola* %23, i32 %26, i32 %27, i32 %30)
  %32 = load %struct.lola*, %struct.lola** %3, align 8
  %33 = load %struct.lola_stream*, %struct.lola_stream** %4, align 8
  %34 = call i32 @lola_stream_wait_for_fifo(%struct.lola* %32, %struct.lola_stream* %33, i32 0)
  %35 = load %struct.lola*, %struct.lola** %3, align 8
  %36 = load %struct.lola_stream*, %struct.lola_stream** %4, align 8
  %37 = call i32 @lola_stream_clear_pending_irq(%struct.lola* %35, %struct.lola_stream* %36)
  %38 = load %struct.lola*, %struct.lola** %3, align 8
  %39 = load %struct.lola_stream*, %struct.lola_stream** %4, align 8
  %40 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CTL, align 4
  %43 = load i32, i32* @LOLA_DSD_CTL_SRST, align 4
  %44 = call i32 @lola_dsd_write(%struct.lola* %38, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.lola*, %struct.lola** %3, align 8
  %46 = load %struct.lola_stream*, %struct.lola_stream** %4, align 8
  %47 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @LVI, align 4
  %50 = call i32 @lola_dsd_write(%struct.lola* %45, i32 %48, i32 %49, i32 0)
  %51 = load %struct.lola*, %struct.lola** %3, align 8
  %52 = load %struct.lola_stream*, %struct.lola_stream** %4, align 8
  %53 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @BDPU, align 4
  %56 = call i32 @lola_dsd_write(%struct.lola* %51, i32 %54, i32 %55, i32 0)
  %57 = load %struct.lola*, %struct.lola** %3, align 8
  %58 = load %struct.lola_stream*, %struct.lola_stream** %4, align 8
  %59 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @BDPL, align 4
  %62 = call i32 @lola_dsd_write(%struct.lola* %57, i32 %60, i32 %61, i32 0)
  %63 = load %struct.lola*, %struct.lola** %3, align 8
  %64 = load %struct.lola_stream*, %struct.lola_stream** %4, align 8
  %65 = call i32 @wait_for_srst_clear(%struct.lola* %63, %struct.lola_stream* %64)
  br label %66

66:                                               ; preds = %20, %2
  ret void
}

declare dso_local i32 @lola_sync_pause(%struct.lola*, i32) #1

declare dso_local i32 @lola_dsd_write(%struct.lola*, i32, i32, i32) #1

declare dso_local i32 @lola_stream_wait_for_fifo(%struct.lola*, %struct.lola_stream*, i32) #1

declare dso_local i32 @lola_stream_clear_pending_irq(%struct.lola*, %struct.lola_stream*) #1

declare dso_local i32 @wait_for_srst_clear(%struct.lola*, %struct.lola_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
