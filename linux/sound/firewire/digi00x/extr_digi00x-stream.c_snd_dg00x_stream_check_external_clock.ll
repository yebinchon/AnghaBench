; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-stream.c_snd_dg00x_stream_check_external_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-stream.c_snd_dg00x_stream_check_external_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dg00x = type { i32 }

@TCODE_READ_QUADLET_REQUEST = common dso_local global i32 0, align 4
@DG00X_ADDR_BASE = common dso_local global i64 0, align 8
@DG00X_OFFSET_DETECT_EXTERNAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_dg00x_stream_check_external_clock(%struct.snd_dg00x* %0, i32* %1) #0 {
  %3 = alloca %struct.snd_dg00x*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_dg00x* %0, %struct.snd_dg00x** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %8 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TCODE_READ_QUADLET_REQUEST, align 4
  %11 = load i64, i64* @DG00X_ADDR_BASE, align 8
  %12 = load i64, i64* @DG00X_OFFSET_DETECT_EXTERNAL, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @snd_fw_transaction(i32 %9, i32 %10, i64 %13, i32* %5, i32 4, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @be32_to_cpu(i32 %18)
  %20 = icmp sgt i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = load i32*, i32** %4, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %17, %2
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local i32 @snd_fw_transaction(i32, i32, i64, i32*, i32, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
