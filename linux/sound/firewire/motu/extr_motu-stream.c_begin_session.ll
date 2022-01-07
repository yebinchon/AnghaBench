; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-stream.c_begin_session.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-stream.c_begin_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_motu = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ISOC_COMM_CONTROL_OFFSET = common dso_local global i32 0, align 4
@ISOC_COMM_CONTROL_MASK = common dso_local global i32 0, align 4
@CHANGE_RX_ISOC_COMM_STATE = common dso_local global i32 0, align 4
@RX_ISOC_COMM_IS_ACTIVATED = common dso_local global i32 0, align 4
@RX_ISOC_COMM_CHANNEL_SHIFT = common dso_local global i32 0, align 4
@CHANGE_TX_ISOC_COMM_STATE = common dso_local global i32 0, align 4
@TX_ISOC_COMM_IS_ACTIVATED = common dso_local global i32 0, align 4
@TX_ISOC_COMM_CHANNEL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_motu*)* @begin_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @begin_session(%struct.snd_motu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_motu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_motu* %0, %struct.snd_motu** %3, align 8
  %7 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %8 = load i32, i32* @ISOC_COMM_CONTROL_OFFSET, align 4
  %9 = call i32 @snd_motu_transaction_read(%struct.snd_motu* %7, i32 %8, i32* %4, i32 4)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %48

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @be32_to_cpu(i32 %15)
  %17 = load i32, i32* @ISOC_COMM_CONTROL_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @CHANGE_RX_ISOC_COMM_STATE, align 4
  %21 = load i32, i32* @RX_ISOC_COMM_IS_ACTIVATED, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %24 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RX_ISOC_COMM_CHANNEL_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = or i32 %22, %28
  %30 = load i32, i32* @CHANGE_TX_ISOC_COMM_STATE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @TX_ISOC_COMM_IS_ACTIVATED, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %35 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TX_ISOC_COMM_CHANNEL_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = or i32 %33, %39
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @cpu_to_be32(i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %46 = load i32, i32* @ISOC_COMM_CONTROL_OFFSET, align 4
  %47 = call i32 @snd_motu_transaction_write(%struct.snd_motu* %45, i32 %46, i32* %4, i32 4)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %14, %12
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @snd_motu_transaction_read(%struct.snd_motu*, i32, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @snd_motu_transaction_write(%struct.snd_motu*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
