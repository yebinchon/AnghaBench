; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-transaction.c_dice_notification.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-transaction.c_dice_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.fw_request = type { i32 }
%struct.snd_dice = type { i32, i32, i32, i32 }

@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@RCODE_TYPE_ERROR = common dso_local global i32 0, align 4
@RCODE_ADDRESS_ERROR = common dso_local global i32 0, align 4
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@NOTIFY_LOCK_CHG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, %struct.fw_request*, i32, i32, i32, i32, i64, i8*, i64, i8*)* @dice_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dice_notification(%struct.fw_card* %0, %struct.fw_request* %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, i8* %7, i64 %8, i8* %9) #0 {
  %11 = alloca %struct.fw_card*, align 8
  %12 = alloca %struct.fw_request*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.snd_dice*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.fw_card* %0, %struct.fw_card** %11, align 8
  store %struct.fw_request* %1, %struct.fw_request** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i64 %8, i64* %19, align 8
  store i8* %9, i8** %20, align 8
  %24 = load i8*, i8** %20, align 8
  %25 = bitcast i8* %24 to %struct.snd_dice*
  store %struct.snd_dice* %25, %struct.snd_dice** %21, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %10
  %30 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %31 = load %struct.fw_request*, %struct.fw_request** %12, align 8
  %32 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  %33 = call i32 @fw_send_response(%struct.fw_card* %30, %struct.fw_request* %31, i32 %32)
  br label %75

34:                                               ; preds = %10
  %35 = load i64, i64* %17, align 8
  %36 = and i64 %35, 3
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %40 = load %struct.fw_request*, %struct.fw_request** %12, align 8
  %41 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  %42 = call i32 @fw_send_response(%struct.fw_card* %39, %struct.fw_request* %40, i32 %41)
  br label %75

43:                                               ; preds = %34
  %44 = load i8*, i8** %18, align 8
  %45 = call i32 @be32_to_cpup(i8* %44)
  store i32 %45, i32* %22, align 4
  %46 = load %struct.snd_dice*, %struct.snd_dice** %21, align 8
  %47 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %46, i32 0, i32 3
  %48 = load i64, i64* %23, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load i32, i32* %22, align 4
  %51 = load %struct.snd_dice*, %struct.snd_dice** %21, align 8
  %52 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.snd_dice*, %struct.snd_dice** %21, align 8
  %56 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %55, i32 0, i32 3
  %57 = load i64, i64* %23, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %60 = load %struct.fw_request*, %struct.fw_request** %12, align 8
  %61 = load i32, i32* @RCODE_COMPLETE, align 4
  %62 = call i32 @fw_send_response(%struct.fw_card* %59, %struct.fw_request* %60, i32 %61)
  %63 = load i32, i32* %22, align 4
  %64 = load i32, i32* @NOTIFY_LOCK_CHG, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %43
  %68 = load %struct.snd_dice*, %struct.snd_dice** %21, align 8
  %69 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %68, i32 0, i32 2
  %70 = call i32 @complete(i32* %69)
  br label %71

71:                                               ; preds = %67, %43
  %72 = load %struct.snd_dice*, %struct.snd_dice** %21, align 8
  %73 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %72, i32 0, i32 1
  %74 = call i32 @wake_up(i32* %73)
  br label %75

75:                                               ; preds = %71, %38, %29
  ret void
}

declare dso_local i32 @fw_send_response(%struct.fw_card*, %struct.fw_request*, i32) #1

declare dso_local i32 @be32_to_cpup(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
