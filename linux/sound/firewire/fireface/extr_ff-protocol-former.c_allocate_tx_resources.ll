; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-former.c_allocate_tx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-former.c_allocate_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ff = type { %struct.TYPE_3__, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@FF800_ALLOC_TX_STREAM = common dso_local global i32 0, align 4
@TCODE_READ_QUADLET_REQUEST = common dso_local global i32 0, align 4
@FF800_TX_PACKET_ISOC_CH = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ff*)* @allocate_tx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_tx_resources(%struct.snd_ff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_ff* %0, %struct.snd_ff** %3, align 8
  %9 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %10 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @cpu_to_le32(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %15 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %18 = load i32, i32* @FF800_ALLOC_TX_STREAM, align 4
  %19 = call i32 @snd_fw_transaction(i32 %16, i32 %17, i32 %18, i32* %4, i32 4, i32 0)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %60

24:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %47, %24
  %26 = load i32, i32* %5, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %5, align 4
  %28 = icmp ult i32 %26, 10
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %31 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TCODE_READ_QUADLET_REQUEST, align 4
  %34 = load i32, i32* @FF800_TX_PACKET_ISOC_CH, align 4
  %35 = call i32 @snd_fw_transaction(i32 %32, i32 %33, i32 %34, i32* %4, i32 4, i32 0)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %60

40:                                               ; preds = %29
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %6, align 4
  br label %49

47:                                               ; preds = %40
  %48 = call i32 @msleep(i32 50)
  br label %25

49:                                               ; preds = %45, %25
  %50 = load i32, i32* %5, align 4
  %51 = icmp uge i32 %50, 10
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @ETIMEDOUT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %60

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %58 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %55, %52, %38, %22
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @snd_fw_transaction(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
