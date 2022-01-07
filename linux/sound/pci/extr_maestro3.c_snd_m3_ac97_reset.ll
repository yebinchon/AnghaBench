; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_ac97_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_ac97_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_m3 = type { i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@GPIO_DIRECTION = common dso_local global i64 0, align 8
@IO_SRAM_ENABLE = common dso_local global i32 0, align 4
@RING_BUS_CTRL_A = common dso_local global i64 0, align 8
@GPO_PRIMARY_AC97 = common dso_local global i32 0, align 4
@GPIO_MASK = common dso_local global i64 0, align 8
@GPIO_DATA = common dso_local global i64 0, align 8
@SERIAL_AC_LINK_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"retrying codec reset with delays of %d and %d ms\0A\00", align 1
@LAC_SDFS_ENABLE = common dso_local global i32 0, align 4
@RAC_SDFS_ENABLE = common dso_local global i32 0, align 4
@tmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_m3*)* @snd_m3_ac97_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_m3_ac97_reset(%struct.snd_m3* %0) #0 {
  %2 = alloca %struct.snd_m3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_m3* %0, %struct.snd_m3** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %9 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %12 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 50, i32* %4, align 4
  store i32 800, i32* %5, align 4
  br label %17

16:                                               ; preds = %1
  store i32 20, i32* %4, align 4
  store i32 500, i32* %5, align 4
  br label %17

17:                                               ; preds = %16, %15
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %116, %17
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 5
  br i1 %20, label %21, label %119

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @GPIO_DIRECTION, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @inw(i64 %25)
  store i32 %26, i32* %3, align 4
  %27 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %28 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, 16
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %21
  %35 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %36 = call i32 @snd_m3_remote_codec_config(%struct.snd_m3* %35, i32 0)
  %37 = load i32, i32* @IO_SRAM_ENABLE, align 4
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* @RING_BUS_CTRL_A, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outw(i32 %37, i64 %41)
  %43 = call i32 @udelay(i32 20)
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @GPO_PRIMARY_AC97, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @GPIO_DIRECTION, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outw(i32 %47, i64 %51)
  %53 = load i32, i32* @GPO_PRIMARY_AC97, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* @GPIO_MASK, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @outw(i32 %54, i64 %58)
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* @GPIO_DATA, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @outw(i32 0, i64 %63)
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @GPO_PRIMARY_AC97, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* @GPIO_DIRECTION, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outw(i32 %67, i64 %71)
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @msecs_to_jiffies(i32 %73)
  %75 = call i32 @schedule_timeout_uninterruptible(i32 %74)
  %76 = load i32, i32* @GPO_PRIMARY_AC97, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* @GPIO_DATA, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @outw(i32 %76, i64 %80)
  %82 = call i32 @udelay(i32 5)
  %83 = load i32, i32* @IO_SRAM_ENABLE, align 4
  %84 = load i32, i32* @SERIAL_AC_LINK_ENABLE, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* @RING_BUS_CTRL_A, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @outw(i32 %85, i64 %89)
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* @GPIO_MASK, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @outw(i32 -1, i64 %94)
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @msecs_to_jiffies(i32 %96)
  %98 = call i32 @schedule_timeout_uninterruptible(i32 %97)
  %99 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %100 = call i32 @snd_m3_try_read_vendor(%struct.snd_m3* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %34
  br label %119

103:                                              ; preds = %34
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 10
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 100
  store i32 %107, i32* %5, align 4
  %108 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %109 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @dev_dbg(i32 %112, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %103
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %18

119:                                              ; preds = %102, %18
  ret void
}

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @snd_m3_remote_codec_config(%struct.snd_m3*, i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @snd_m3_try_read_vendor(%struct.snd_m3*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
