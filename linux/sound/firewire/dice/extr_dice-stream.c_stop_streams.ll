; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-stream.c_stop_streams.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-stream.c_stop_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { i32 }
%struct.reg_params = type { i32, i32 }

@AMDTP_IN_STREAM = common dso_local global i32 0, align 4
@TX_ISOCHRONOUS = common dso_local global i64 0, align 8
@RX_ISOCHRONOUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_dice*, i32, %struct.reg_params*)* @stop_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_streams(%struct.snd_dice* %0, i32 %1, %struct.reg_params* %2) #0 {
  %4 = alloca %struct.snd_dice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.reg_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_dice* %0, %struct.snd_dice** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.reg_params* %2, %struct.reg_params** %6, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %43, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.reg_params*, %struct.reg_params** %6, align 8
  %12 = getelementptr inbounds %struct.reg_params, %struct.reg_params* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %9
  %16 = call i32 @cpu_to_be32(i32 -1)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @AMDTP_IN_STREAM, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %22 = load %struct.reg_params*, %struct.reg_params** %6, align 8
  %23 = getelementptr inbounds %struct.reg_params, %struct.reg_params* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = mul i32 %24, %25
  %27 = zext i32 %26 to i64
  %28 = load i64, i64* @TX_ISOCHRONOUS, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @snd_dice_transaction_write_tx(%struct.snd_dice* %21, i64 %29, i32* %7, i32 4)
  br label %42

31:                                               ; preds = %15
  %32 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %33 = load %struct.reg_params*, %struct.reg_params** %6, align 8
  %34 = getelementptr inbounds %struct.reg_params, %struct.reg_params* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = mul i32 %35, %36
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* @RX_ISOCHRONOUS, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @snd_dice_transaction_write_rx(%struct.snd_dice* %32, i64 %40, i32* %7, i32 4)
  br label %42

42:                                               ; preds = %31, %20
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %9

46:                                               ; preds = %9
  ret void
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @snd_dice_transaction_write_tx(%struct.snd_dice*, i64, i32*, i32) #1

declare dso_local i32 @snd_dice_transaction_write_rx(%struct.snd_dice*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
