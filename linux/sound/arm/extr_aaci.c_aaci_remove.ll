; ModuleID = '/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { i32 }
%struct.snd_card = type { %struct.aaci* }
%struct.aaci = type { i64 }

@AACI_MAINCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*)* @aaci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aaci_remove(%struct.amba_device* %0) #0 {
  %2 = alloca %struct.amba_device*, align 8
  %3 = alloca %struct.snd_card*, align 8
  %4 = alloca %struct.aaci*, align 8
  store %struct.amba_device* %0, %struct.amba_device** %2, align 8
  %5 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %6 = call %struct.snd_card* @amba_get_drvdata(%struct.amba_device* %5)
  store %struct.snd_card* %6, %struct.snd_card** %3, align 8
  %7 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %8 = icmp ne %struct.snd_card* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %11 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %10, i32 0, i32 0
  %12 = load %struct.aaci*, %struct.aaci** %11, align 8
  store %struct.aaci* %12, %struct.aaci** %4, align 8
  %13 = load %struct.aaci*, %struct.aaci** %4, align 8
  %14 = getelementptr inbounds %struct.aaci, %struct.aaci* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AACI_MAINCR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 0, i64 %17)
  %19 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %20 = call i32 @snd_card_free(%struct.snd_card* %19)
  %21 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %22 = call i32 @amba_release_regions(%struct.amba_device* %21)
  br label %23

23:                                               ; preds = %9, %1
  ret i32 0
}

declare dso_local %struct.snd_card* @amba_get_drvdata(%struct.amba_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @snd_card_free(%struct.snd_card*) #1

declare dso_local i32 @amba_release_regions(%struct.amba_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
