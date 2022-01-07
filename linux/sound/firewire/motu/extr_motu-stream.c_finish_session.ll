; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-stream.c_finish_session.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-stream.c_finish_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_motu = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.snd_motu*, i32)* }

@ISOC_COMM_CONTROL_OFFSET = common dso_local global i32 0, align 4
@RX_ISOC_COMM_IS_ACTIVATED = common dso_local global i32 0, align 4
@TX_ISOC_COMM_IS_ACTIVATED = common dso_local global i32 0, align 4
@CHANGE_RX_ISOC_COMM_STATE = common dso_local global i32 0, align 4
@CHANGE_TX_ISOC_COMM_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_motu*)* @finish_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_session(%struct.snd_motu* %0) #0 {
  %2 = alloca %struct.snd_motu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_motu* %0, %struct.snd_motu** %2, align 8
  %6 = load %struct.snd_motu*, %struct.snd_motu** %2, align 8
  %7 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (%struct.snd_motu*, i32)*, i32 (%struct.snd_motu*, i32)** %11, align 8
  %13 = load %struct.snd_motu*, %struct.snd_motu** %2, align 8
  %14 = call i32 %12(%struct.snd_motu* %13, i32 0)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %44

18:                                               ; preds = %1
  %19 = load %struct.snd_motu*, %struct.snd_motu** %2, align 8
  %20 = load i32, i32* @ISOC_COMM_CONTROL_OFFSET, align 4
  %21 = call i32 @snd_motu_transaction_read(%struct.snd_motu* %19, i32 %20, i32* %3, i32 4)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %44

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @be32_to_cpu(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @RX_ISOC_COMM_IS_ACTIVATED, align 4
  %29 = load i32, i32* @TX_ISOC_COMM_IS_ACTIVATED, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @CHANGE_RX_ISOC_COMM_STATE, align 4
  %35 = load i32, i32* @CHANGE_TX_ISOC_COMM_STATE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @cpu_to_be32(i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load %struct.snd_motu*, %struct.snd_motu** %2, align 8
  %42 = load i32, i32* @ISOC_COMM_CONTROL_OFFSET, align 4
  %43 = call i32 @snd_motu_transaction_write(%struct.snd_motu* %41, i32 %42, i32* %3, i32 4)
  br label %44

44:                                               ; preds = %25, %24, %17
  ret void
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
