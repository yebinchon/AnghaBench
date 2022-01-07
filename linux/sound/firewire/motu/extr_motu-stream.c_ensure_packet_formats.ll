; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-stream.c_ensure_packet_formats.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-stream.c_ensure_packet_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_motu = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64* }
%struct.TYPE_4__ = type { i64* }
%struct.TYPE_6__ = type { i32 }

@PACKET_FORMAT_OFFSET = common dso_local global i32 0, align 4
@TX_PACKET_EXCLUDE_DIFFERED_DATA_CHUNKS = common dso_local global i32 0, align 4
@RX_PACKET_EXCLUDE_DIFFERED_DATA_CHUNKS = common dso_local global i32 0, align 4
@TX_PACKET_TRANSMISSION_SPEED_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_motu*)* @ensure_packet_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ensure_packet_formats(%struct.snd_motu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_motu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_motu* %0, %struct.snd_motu** %3, align 8
  %7 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %8 = load i32, i32* @PACKET_FORMAT_OFFSET, align 4
  %9 = call i32 @snd_motu_transaction_read(%struct.snd_motu* %7, i32 %8, i32* %4, i32 4)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %62

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @be32_to_cpu(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @TX_PACKET_EXCLUDE_DIFFERED_DATA_CHUNKS, align 4
  %18 = load i32, i32* @RX_PACKET_EXCLUDE_DIFFERED_DATA_CHUNKS, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @TX_PACKET_TRANSMISSION_SPEED_MASK, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %26 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %14
  %33 = load i32, i32* @TX_PACKET_EXCLUDE_DIFFERED_DATA_CHUNKS, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %14
  %37 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %38 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i32, i32* @RX_PACKET_EXCLUDE_DIFFERED_DATA_CHUNKS, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %36
  %49 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %50 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.TYPE_6__* @fw_parent_device(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @cpu_to_be32(i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %60 = load i32, i32* @PACKET_FORMAT_OFFSET, align 4
  %61 = call i32 @snd_motu_transaction_write(%struct.snd_motu* %59, i32 %60, i32* %4, i32 4)
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %48, %12
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @snd_motu_transaction_read(%struct.snd_motu*, i32, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.TYPE_6__* @fw_parent_device(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @snd_motu_transaction_write(%struct.snd_motu*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
