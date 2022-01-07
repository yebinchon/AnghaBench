; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gusclassic.c_snd_gusclassic_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gusclassic.c_snd_gusclassic_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SNDRV_GF1_GB_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"[0x%lx] check 1 failed - 0x%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"[0x%lx] check 2 failed - 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_gus_card*)* @snd_gusclassic_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_gusclassic_detect(%struct.snd_gus_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_gus_card*, align 8
  %4 = alloca i8, align 1
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %3, align 8
  %5 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %6 = load i32, i32* @SNDRV_GF1_GB_RESET, align 4
  %7 = call i32 @snd_gf1_i_write8(%struct.snd_gus_card* %5, i32 %6, i32 0)
  %8 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %9 = load i32, i32* @SNDRV_GF1_GB_RESET, align 4
  %10 = call zeroext i8 @snd_gf1_i_look8(%struct.snd_gus_card* %8, i32 %9)
  store i8 %10, i8* %4, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 7
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %16 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8, i8* %4, align 1
  %20 = call i32 @snd_printdd(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %18, i8 zeroext %19)
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %45

23:                                               ; preds = %1
  %24 = call i32 @udelay(i32 160)
  %25 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %26 = load i32, i32* @SNDRV_GF1_GB_RESET, align 4
  %27 = call i32 @snd_gf1_i_write8(%struct.snd_gus_card* %25, i32 %26, i32 1)
  %28 = call i32 @udelay(i32 160)
  %29 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %30 = load i32, i32* @SNDRV_GF1_GB_RESET, align 4
  %31 = call zeroext i8 @snd_gf1_i_look8(%struct.snd_gus_card* %29, i32 %30)
  store i8 %31, i8* %4, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 7
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %44

35:                                               ; preds = %23
  %36 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %37 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8, i8* %4, align 1
  %41 = call i32 @snd_printdd(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %39, i8 zeroext %40)
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %45

44:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %35, %14
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @snd_gf1_i_write8(%struct.snd_gus_card*, i32, i32) #1

declare dso_local zeroext i8 @snd_gf1_i_look8(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @snd_printdd(i8*, i32, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
