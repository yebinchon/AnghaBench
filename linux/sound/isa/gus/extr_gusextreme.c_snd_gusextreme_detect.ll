; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gusextreme.c_snd_gusextreme_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gusextreme.c_snd_gusextreme_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.snd_es1688 = type { i32, i32 }

@INIT1 = common dso_local global i32 0, align 4
@SNDRV_GF1_GB_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"[0x%lx] check 1 failed - 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"[0x%lx] check 2 failed - 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_gus_card*, %struct.snd_es1688*)* @snd_gusextreme_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_gusextreme_detect(%struct.snd_gus_card* %0, %struct.snd_es1688* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_gus_card*, align 8
  %5 = alloca %struct.snd_es1688*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %4, align 8
  store %struct.snd_es1688* %1, %struct.snd_es1688** %5, align 8
  %8 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %9 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %8, i32 0, i32 1
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %13 = call i32 @snd_es1688_mixer_write(%struct.snd_es1688* %12, i32 64, i32 11)
  %14 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %15 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %14, i32 0, i32 1
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* %15, i64 %16)
  %18 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %19 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %18, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %23 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 64
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 2, i32 0
  %30 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %31 = load i32, i32* @INIT1, align 4
  %32 = call i32 @ES1688P(%struct.snd_es1688* %30, i32 %31)
  %33 = call i32 @outb(i32 %29, i32 %32)
  %34 = call i32 @outb(i32 0, i32 513)
  %35 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %36 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 32
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 2, i32 0
  %43 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %44 = load i32, i32* @INIT1, align 4
  %45 = call i32 @ES1688P(%struct.snd_es1688* %43, i32 %44)
  %46 = call i32 @outb(i32 %42, i32 %45)
  %47 = call i32 @outb(i32 0, i32 513)
  %48 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %49 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 16
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 3, i32 1
  %56 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %57 = load i32, i32* @INIT1, align 4
  %58 = call i32 @ES1688P(%struct.snd_es1688* %56, i32 %57)
  %59 = call i32 @outb(i32 %55, i32 %58)
  %60 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %61 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %60, i32 0, i32 0
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = call i32 @udelay(i32 100)
  %65 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %66 = load i32, i32* @SNDRV_GF1_GB_RESET, align 4
  %67 = call i32 @snd_gf1_i_write8(%struct.snd_gus_card* %65, i32 %66, i32 0)
  %68 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %69 = load i32, i32* @SNDRV_GF1_GB_RESET, align 4
  %70 = call zeroext i8 @snd_gf1_i_look8(%struct.snd_gus_card* %68, i32 %69)
  store i8 %70, i8* %7, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 7
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %2
  %75 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %76 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i8, i8* %7, align 1
  %80 = call i32 @snd_printdd(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %78, i8 zeroext %79)
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %105

83:                                               ; preds = %2
  %84 = call i32 @udelay(i32 160)
  %85 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %86 = load i32, i32* @SNDRV_GF1_GB_RESET, align 4
  %87 = call i32 @snd_gf1_i_write8(%struct.snd_gus_card* %85, i32 %86, i32 1)
  %88 = call i32 @udelay(i32 160)
  %89 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %90 = load i32, i32* @SNDRV_GF1_GB_RESET, align 4
  %91 = call zeroext i8 @snd_gf1_i_look8(%struct.snd_gus_card* %89, i32 %90)
  store i8 %91, i8* %7, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %92, 7
  %94 = icmp ne i32 %93, 1
  br i1 %94, label %95, label %104

95:                                               ; preds = %83
  %96 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %97 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i8, i8* %7, align 1
  %101 = call i32 @snd_printdd(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %99, i8 zeroext %100)
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %105

104:                                              ; preds = %83
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %95, %74
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_es1688_mixer_write(%struct.snd_es1688*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @ES1688P(%struct.snd_es1688*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_gf1_i_write8(%struct.snd_gus_card*, i32, i32) #1

declare dso_local zeroext i8 @snd_gf1_i_look8(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @snd_printdd(i8*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
