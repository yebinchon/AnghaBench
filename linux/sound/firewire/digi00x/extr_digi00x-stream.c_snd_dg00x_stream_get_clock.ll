; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-stream.c_snd_dg00x_stream_get_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-stream.c_snd_dg00x_stream_get_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dg00x = type { i32 }

@TCODE_READ_QUADLET_REQUEST = common dso_local global i32 0, align 4
@DG00X_ADDR_BASE = common dso_local global i64 0, align 8
@DG00X_OFFSET_CLOCK_SOURCE = common dso_local global i64 0, align 8
@SND_DG00X_CLOCK_COUNT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_dg00x_stream_get_clock(%struct.snd_dg00x* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_dg00x*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_dg00x* %0, %struct.snd_dg00x** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %9 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @TCODE_READ_QUADLET_REQUEST, align 4
  %12 = load i64, i64* @DG00X_ADDR_BASE, align 8
  %13 = load i64, i64* @DG00X_OFFSET_CLOCK_SOURCE, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @snd_fw_transaction(i32 %10, i32 %11, i64 %14, i32* %6, i32 4, i32 0)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %34

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @be32_to_cpu(i32 %21)
  %23 = and i32 %22, 15
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SND_DG00X_CLOCK_COUNT, align 4
  %28 = icmp uge i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %29, %20
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %18
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @snd_fw_transaction(i32, i32, i64, i32*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
