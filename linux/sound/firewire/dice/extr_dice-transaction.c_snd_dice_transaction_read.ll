; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-transaction.c_snd_dice_transaction_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-transaction.c_snd_dice_transaction_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { i32 }

@TCODE_READ_QUADLET_REQUEST = common dso_local global i32 0, align 4
@TCODE_READ_BLOCK_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_dice_transaction_read(%struct.snd_dice* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.snd_dice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_dice* %0, %struct.snd_dice** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %12 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @TCODE_READ_QUADLET_REQUEST, align 4
  br label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @TCODE_READ_BLOCK_REQUEST, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @get_subaddr(%struct.snd_dice* %22, i32 %23, i32 %24)
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @snd_fw_transaction(i32 %13, i32 %21, i32 %25, i8* %26, i32 %27, i32 0)
  ret i32 %28
}

declare dso_local i32 @snd_fw_transaction(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @get_subaddr(%struct.snd_dice*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
