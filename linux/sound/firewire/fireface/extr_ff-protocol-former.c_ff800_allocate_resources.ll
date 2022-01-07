; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-former.c_ff800_allocate_resources.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-former.c_ff800_allocate_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ff = type { i32, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@FF800_STF = common dso_local global i32 0, align 4
@FF800_RX_PACKET_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ff*, i32)* @ff800_allocate_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff800_allocate_resources(%struct.snd_ff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_ff* %0, %struct.snd_ff** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @cpu_to_le32(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %15 = load i32, i32* @FF800_STF, align 4
  %16 = call i32 @snd_fw_transaction(i32 %13, i32 %14, i32 %15, i32* %7, i32 4, i32 0)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %67

21:                                               ; preds = %2
  %22 = call i32 @msleep(i32 100)
  %23 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %24 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %23, i32 0, i32 1
  %25 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %26 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %25, i32 0, i32 2
  %27 = call i32 @amdtp_stream_get_max_payload(%struct.TYPE_6__* %26)
  %28 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %29 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.TYPE_4__* @fw_parent_device(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @fw_iso_resources_allocate(%struct.TYPE_5__* %24, i32 %27, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %21
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %67

39:                                               ; preds = %21
  %40 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %41 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 3
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = shl i32 %45, 8
  %47 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %48 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %46, %50
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @cpu_to_le32(i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %55 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %58 = load i32, i32* @FF800_RX_PACKET_FORMAT, align 4
  %59 = call i32 @snd_fw_transaction(i32 %56, i32 %57, i32 %58, i32* %7, i32 4, i32 0)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %39
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %67

64:                                               ; preds = %39
  %65 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %66 = call i32 @allocate_tx_resources(%struct.snd_ff* %65)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %62, %37, %19
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @snd_fw_transaction(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @fw_iso_resources_allocate(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @amdtp_stream_get_max_payload(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_4__* @fw_parent_device(i32) #1

declare dso_local i32 @allocate_tx_resources(%struct.snd_ff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
