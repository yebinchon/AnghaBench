; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_stream_clear_pending_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_stream_clear_pending_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { i32 }
%struct.lola_stream = type { i32 }

@STS = common dso_local global i32 0, align 4
@LOLA_DSD_STS_DESE = common dso_local global i32 0, align 4
@LOLA_DSD_STS_BCIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lola*, %struct.lola_stream*)* @lola_stream_clear_pending_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lola_stream_clear_pending_irq(%struct.lola* %0, %struct.lola_stream* %1) #0 {
  %3 = alloca %struct.lola*, align 8
  %4 = alloca %struct.lola_stream*, align 8
  %5 = alloca i32, align 4
  store %struct.lola* %0, %struct.lola** %3, align 8
  store %struct.lola_stream* %1, %struct.lola_stream** %4, align 8
  %6 = load %struct.lola*, %struct.lola** %3, align 8
  %7 = load %struct.lola_stream*, %struct.lola_stream** %4, align 8
  %8 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @STS, align 4
  %11 = call i32 @lola_dsd_read(%struct.lola* %6, i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @LOLA_DSD_STS_DESE, align 4
  %13 = load i32, i32* @LOLA_DSD_STS_BCIS, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.lola*, %struct.lola** %3, align 8
  %21 = load %struct.lola_stream*, %struct.lola_stream** %4, align 8
  %22 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @STS, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @lola_dsd_write(%struct.lola* %20, i32 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %19, %2
  ret void
}

declare dso_local i32 @lola_dsd_read(%struct.lola*, i32, i32) #1

declare dso_local i32 @lola_dsd_write(%struct.lola*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
