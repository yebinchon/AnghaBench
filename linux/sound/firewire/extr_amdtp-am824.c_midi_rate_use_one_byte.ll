; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-am824.c_midi_rate_use_one_byte.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-am824.c_midi_rate_use_one_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i64, %struct.amdtp_am824* }
%struct.amdtp_am824 = type { i32* }

@amdtp_rate_table = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdtp_stream*, i32)* @midi_rate_use_one_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @midi_rate_use_one_byte(%struct.amdtp_stream* %0, i32 %1) #0 {
  %3 = alloca %struct.amdtp_stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdtp_am824*, align 8
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.amdtp_stream*, %struct.amdtp_stream** %3, align 8
  %7 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %6, i32 0, i32 1
  %8 = load %struct.amdtp_am824*, %struct.amdtp_am824** %7, align 8
  store %struct.amdtp_am824* %8, %struct.amdtp_am824** %5, align 8
  %9 = load i64*, i64** @amdtp_rate_table, align 8
  %10 = load %struct.amdtp_stream*, %struct.amdtp_stream** %3, align 8
  %11 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i64, i64* %9, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.amdtp_am824*, %struct.amdtp_am824** %5, align 8
  %16 = getelementptr inbounds %struct.amdtp_am824, %struct.amdtp_am824* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %14
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
