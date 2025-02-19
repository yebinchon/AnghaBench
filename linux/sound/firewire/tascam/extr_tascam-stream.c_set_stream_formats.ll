; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-stream.c_set_stream_formats.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-stream.c_set_stream_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_tscm = type { i32 }

@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@TSCM_ADDR_BASE = common dso_local global i64 0, align 8
@TSCM_OFFSET_SET_OPTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_tscm*, i32)* @set_stream_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_stream_formats(%struct.snd_tscm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_tscm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_tscm* %0, %struct.snd_tscm** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 @cpu_to_be32(i32 2097152)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %10 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %13 = load i64, i64* @TSCM_ADDR_BASE, align 8
  %14 = load i64, i64* @TSCM_OFFSET_SET_OPTION, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @snd_fw_transaction(i32 %11, i32 %12, i64 %15, i32* %6, i32 4, i32 0)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %24

21:                                               ; preds = %2
  %22 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %23 = call i32 @enable_data_channels(%struct.snd_tscm* %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %19
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @snd_fw_transaction(i32, i32, i64, i32*, i32, i32) #1

declare dso_local i32 @enable_data_channels(%struct.snd_tscm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
