; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-stream.c_finish_session.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-stream.c_finish_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dg00x = type { i32 }

@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@DG00X_ADDR_BASE = common dso_local global i64 0, align 8
@DG00X_OFFSET_STREAMING_SET = common dso_local global i64 0, align 8
@DG00X_OFFSET_ISOC_CHANNELS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_dg00x*)* @finish_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_session(%struct.snd_dg00x* %0) #0 {
  %2 = alloca %struct.snd_dg00x*, align 8
  %3 = alloca i64, align 8
  store %struct.snd_dg00x* %0, %struct.snd_dg00x** %2, align 8
  %4 = call i64 @cpu_to_be32(i32 3)
  store i64 %4, i64* %3, align 8
  %5 = load %struct.snd_dg00x*, %struct.snd_dg00x** %2, align 8
  %6 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %9 = load i64, i64* @DG00X_ADDR_BASE, align 8
  %10 = load i64, i64* @DG00X_OFFSET_STREAMING_SET, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @snd_fw_transaction(i32 %7, i32 %8, i64 %11, i64* %3, i32 8, i32 0)
  store i64 0, i64* %3, align 8
  %13 = load %struct.snd_dg00x*, %struct.snd_dg00x** %2, align 8
  %14 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %17 = load i64, i64* @DG00X_ADDR_BASE, align 8
  %18 = load i64, i64* @DG00X_OFFSET_ISOC_CHANNELS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @snd_fw_transaction(i32 %15, i32 %16, i64 %19, i64* %3, i32 8, i32 0)
  %21 = call i32 @msleep(i32 50)
  ret void
}

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @snd_fw_transaction(i32, i32, i64, i64*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
