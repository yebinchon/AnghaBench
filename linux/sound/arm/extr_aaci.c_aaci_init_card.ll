; ModuleID = '/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_init_card.c'
source_filename = "/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_init_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aaci = type { i32, %struct.amba_device*, %struct.snd_card*, i32, i32 }
%struct.snd_card = type { i8*, i8*, %struct.aaci*, i32, i32 }
%struct.amba_device = type { i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@SNDRV_DEFAULT_IDX1 = common dso_local global i32 0, align 4
@SNDRV_DEFAULT_STR1 = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@aaci_free_card = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"ARM AC'97 Interface\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%s PL%03x rev%u at 0x%08llx, irq %d\00", align 1
@MAINCR_IE = common dso_local global i32 0, align 4
@MAINCR_SL1RXEN = common dso_local global i32 0, align 4
@MAINCR_SL1TXEN = common dso_local global i32 0, align 4
@MAINCR_SL2RXEN = common dso_local global i32 0, align 4
@MAINCR_SL2TXEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aaci* (%struct.amba_device*)* @aaci_init_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aaci* @aaci_init_card(%struct.amba_device* %0) #0 {
  %2 = alloca %struct.aaci*, align 8
  %3 = alloca %struct.amba_device*, align 8
  %4 = alloca %struct.aaci*, align 8
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca i32, align 4
  store %struct.amba_device* %0, %struct.amba_device** %3, align 8
  %7 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %8 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %7, i32 0, i32 2
  %9 = load i32, i32* @SNDRV_DEFAULT_IDX1, align 4
  %10 = load i32, i32* @SNDRV_DEFAULT_STR1, align 4
  %11 = load i32, i32* @THIS_MODULE, align 4
  %12 = call i32 @snd_card_new(i32* %8, i32 %9, i32 %10, i32 %11, i32 32, %struct.snd_card** %5)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.aaci* null, %struct.aaci** %2, align 8
  br label %76

16:                                               ; preds = %1
  %17 = load i32, i32* @aaci_free_card, align 4
  %18 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %19 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %21 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** @DRIVER_NAME, align 8
  %24 = call i32 @strlcpy(i8* %22, i8* %23, i32 8)
  %25 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %26 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strlcpy(i8* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 8)
  %29 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %30 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %33 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %36 = call i32 @amba_part(%struct.amba_device* %35)
  %37 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %38 = call i32 @amba_rev(%struct.amba_device* %37)
  %39 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %40 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %44 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @snprintf(i32 %31, i32 4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 %36, i32 %38, i64 %42, i32 %47)
  %49 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %50 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %49, i32 0, i32 2
  %51 = load %struct.aaci*, %struct.aaci** %50, align 8
  store %struct.aaci* %51, %struct.aaci** %4, align 8
  %52 = load %struct.aaci*, %struct.aaci** %4, align 8
  %53 = getelementptr inbounds %struct.aaci, %struct.aaci* %52, i32 0, i32 4
  %54 = call i32 @mutex_init(i32* %53)
  %55 = load %struct.aaci*, %struct.aaci** %4, align 8
  %56 = getelementptr inbounds %struct.aaci, %struct.aaci* %55, i32 0, i32 3
  %57 = call i32 @mutex_init(i32* %56)
  %58 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %59 = load %struct.aaci*, %struct.aaci** %4, align 8
  %60 = getelementptr inbounds %struct.aaci, %struct.aaci* %59, i32 0, i32 2
  store %struct.snd_card* %58, %struct.snd_card** %60, align 8
  %61 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %62 = load %struct.aaci*, %struct.aaci** %4, align 8
  %63 = getelementptr inbounds %struct.aaci, %struct.aaci* %62, i32 0, i32 1
  store %struct.amba_device* %61, %struct.amba_device** %63, align 8
  %64 = load i32, i32* @MAINCR_IE, align 4
  %65 = load i32, i32* @MAINCR_SL1RXEN, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @MAINCR_SL1TXEN, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @MAINCR_SL2RXEN, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @MAINCR_SL2TXEN, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.aaci*, %struct.aaci** %4, align 8
  %74 = getelementptr inbounds %struct.aaci, %struct.aaci* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.aaci*, %struct.aaci** %4, align 8
  store %struct.aaci* %75, %struct.aaci** %2, align 8
  br label %76

76:                                               ; preds = %16, %15
  %77 = load %struct.aaci*, %struct.aaci** %2, align 8
  ret %struct.aaci* %77
}

declare dso_local i32 @snd_card_new(i32*, i32, i32, i32, i32, %struct.snd_card**) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32, i32, i64, i32) #1

declare dso_local i32 @amba_part(%struct.amba_device*) #1

declare dso_local i32 @amba_rev(%struct.amba_device*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
