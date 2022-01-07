; ModuleID = '/home/carl/AnghaBench/linux/sound/atmel/extr_ac97c.c_atmel_ac97c_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/atmel/extr_ac97c.c_atmel_ac97c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }
%struct.atmel_ac97c = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@COSR = common dso_local global i32 0, align 4
@AC97C_CSR_RXRDY = common dso_local global i16 0, align 2
@CORHR = common dso_local global i32 0, align 4
@AC97C_CSR_TXRDY = common dso_local global i16 0, align 2
@COTHR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"codec read timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @atmel_ac97c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @atmel_ac97c_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.atmel_ac97c*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  %11 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %12 = call %struct.atmel_ac97c* @get_chip(%struct.snd_ac97* %11)
  store %struct.atmel_ac97c* %12, %struct.atmel_ac97c** %6, align 8
  store i32 40, i32* %8, align 4
  store i32 10, i32* %9, align 4
  %13 = load i16, i16* %5, align 2
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 127
  %16 = or i32 128, %15
  %17 = shl i32 %16, 16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %7, align 8
  %19 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %6, align 8
  %20 = load i32, i32* @COSR, align 4
  %21 = call zeroext i16 @ac97c_readl(%struct.atmel_ac97c* %19, i32 %20)
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* @AC97C_CSR_RXRDY, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %6, align 8
  %29 = load i32, i32* @CORHR, align 4
  %30 = call zeroext i16 @ac97c_readl(%struct.atmel_ac97c* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %2
  br label %32

32:                                               ; preds = %85, %58, %31
  store i32 40, i32* %8, align 4
  br label %33

33:                                               ; preds = %49, %32
  %34 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %6, align 8
  %35 = load i32, i32* @COSR, align 4
  %36 = call zeroext i16 @ac97c_readl(%struct.atmel_ac97c* %34, i32 %35)
  %37 = zext i16 %36 to i32
  %38 = load i16, i16* @AC97C_CSR_TXRDY, align 2
  %39 = zext i16 %38 to i32
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %6, align 8
  %44 = load i32, i32* @COTHR, align 4
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @ac97c_writel(%struct.atmel_ac97c* %43, i32 %44, i64 %45)
  br label %59

47:                                               ; preds = %33
  %48 = call i32 @udelay(i32 10)
  br label %49

49:                                               ; preds = %47
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %33, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  br label %86

58:                                               ; preds = %53
  br label %32

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %76, %59
  %61 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %6, align 8
  %62 = load i32, i32* @COSR, align 4
  %63 = call zeroext i16 @ac97c_readl(%struct.atmel_ac97c* %61, i32 %62)
  %64 = zext i16 %63 to i32
  %65 = load i16, i16* @AC97C_CSR_RXRDY, align 2
  %66 = zext i16 %65 to i32
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %6, align 8
  %71 = load i32, i32* @CORHR, align 4
  %72 = call zeroext i16 @ac97c_readl(%struct.atmel_ac97c* %70, i32 %71)
  store i16 %72, i16* %10, align 2
  %73 = load i16, i16* %10, align 2
  store i16 %73, i16* %3, align 2
  br label %92

74:                                               ; preds = %60
  %75 = call i32 @udelay(i32 10)
  br label %76

76:                                               ; preds = %74
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %60, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  br label %86

85:                                               ; preds = %80
  br label %32

86:                                               ; preds = %84, %57
  %87 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %6, align 8
  %88 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = call i32 @dev_dbg(i32* %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i16 -1, i16* %3, align 2
  br label %92

92:                                               ; preds = %86, %69
  %93 = load i16, i16* %3, align 2
  ret i16 %93
}

declare dso_local %struct.atmel_ac97c* @get_chip(%struct.snd_ac97*) #1

declare dso_local zeroext i16 @ac97c_readl(%struct.atmel_ac97c*, i32) #1

declare dso_local i32 @ac97c_writel(%struct.atmel_ac97c*, i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
