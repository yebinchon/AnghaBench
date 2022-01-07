; ModuleID = '/home/carl/AnghaBench/linux/sound/atmel/extr_ac97c.c_atmel_ac97c_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/atmel/extr_ac97c.c_atmel_ac97c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }
%struct.atmel_ac97c = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@COSR = common dso_local global i32 0, align 4
@AC97C_CSR_TXRDY = common dso_local global i32 0, align 4
@COTHR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"codec write timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @atmel_ac97c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_ac97c_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.atmel_ac97c*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %10 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %11 = call %struct.atmel_ac97c* @get_chip(%struct.snd_ac97* %10)
  store %struct.atmel_ac97c* %11, %struct.atmel_ac97c** %7, align 8
  store i32 40, i32* %9, align 4
  %12 = load i16, i16* %5, align 2
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 127
  %15 = shl i32 %14, 16
  %16 = load i16, i16* %6, align 2
  %17 = zext i16 %16 to i32
  %18 = or i32 %15, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %8, align 8
  br label %20

20:                                               ; preds = %34, %3
  %21 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %7, align 8
  %22 = load i32, i32* @COSR, align 4
  %23 = call i32 @ac97c_readl(%struct.atmel_ac97c* %21, i32 %22)
  %24 = load i32, i32* @AC97C_CSR_TXRDY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %7, align 8
  %29 = load i32, i32* @COTHR, align 4
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @ac97c_writel(%struct.atmel_ac97c* %28, i32 %29, i64 %30)
  br label %44

32:                                               ; preds = %20
  %33 = call i32 @udelay(i32 1)
  br label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %20, label %38

38:                                               ; preds = %34
  %39 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %7, align 8
  %40 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @dev_dbg(i32* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %38, %27
  ret void
}

declare dso_local %struct.atmel_ac97c* @get_chip(%struct.snd_ac97*) #1

declare dso_local i32 @ac97c_readl(%struct.atmel_ac97c*, i32) #1

declare dso_local i32 @ac97c_writel(%struct.atmel_ac97c*, i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
