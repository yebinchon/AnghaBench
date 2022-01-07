; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_pro_ac97_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_pro_ac97_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.snd_ice1712* }
%struct.snd_ice1712 = type { i32 }

@AC97_CMD = common dso_local global i32 0, align 4
@ICE1712_AC97_WRITE = common dso_local global i8 0, align 1
@ICE1712_AC97_READ = common dso_local global i8 0, align 1
@ICE1712_AC97_READY = common dso_local global i8 0, align 1
@AC97_INDEX = common dso_local global i32 0, align 4
@AC97_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @snd_ice1712_pro_ac97_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @snd_ice1712_pro_ac97_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.snd_ice1712*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  %9 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %10 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %9, i32 0, i32 0
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %10, align 8
  store %struct.snd_ice1712* %11, %struct.snd_ice1712** %6, align 8
  store i8 0, i8* %8, align 1
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %39, %2
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 65536
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  %16 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %17 = load i32, i32* @AC97_CMD, align 4
  %18 = call i32 @ICEMT(%struct.snd_ice1712* %16, i32 %17)
  %19 = call zeroext i8 @inb(i32 %18)
  store i8 %19, i8* %8, align 1
  %20 = load i8, i8* %8, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @ICE1712_AC97_WRITE, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @ICE1712_AC97_READ, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %23, %25
  %27 = and i32 %21, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  br label %39

30:                                               ; preds = %15
  %31 = load i8, i8* %8, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* @ICE1712_AC97_READY, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %39

38:                                               ; preds = %30
  br label %42

39:                                               ; preds = %37, %29
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %12

42:                                               ; preds = %38, %12
  %43 = load i16, i16* %5, align 2
  %44 = trunc i16 %43 to i8
  %45 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %46 = load i32, i32* @AC97_INDEX, align 4
  %47 = call i32 @ICEMT(%struct.snd_ice1712* %45, i32 %46)
  %48 = call i32 @outb(i8 zeroext %44, i32 %47)
  %49 = load i8, i8* %8, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* @ICE1712_AC97_READ, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %50, %52
  %54 = trunc i32 %53 to i8
  %55 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %56 = load i32, i32* @AC97_CMD, align 4
  %57 = call i32 @ICEMT(%struct.snd_ice1712* %55, i32 %56)
  %58 = call i32 @outb(i8 zeroext %54, i32 %57)
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %74, %42
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 65536
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %64 = load i32, i32* @AC97_CMD, align 4
  %65 = call i32 @ICEMT(%struct.snd_ice1712* %63, i32 %64)
  %66 = call zeroext i8 @inb(i32 %65)
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* @ICE1712_AC97_READ, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %67, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %77

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %59

77:                                               ; preds = %72, %59
  %78 = load i32, i32* %7, align 4
  %79 = icmp sge i32 %78, 65536
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i16 -1, i16* %3, align 2
  br label %86

81:                                               ; preds = %77
  %82 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %83 = load i32, i32* @AC97_DATA, align 4
  %84 = call i32 @ICEMT(%struct.snd_ice1712* %82, i32 %83)
  %85 = call zeroext i16 @inw(i32 %84)
  store i16 %85, i16* %3, align 2
  br label %86

86:                                               ; preds = %81, %80
  %87 = load i16, i16* %3, align 2
  ret i16 %87
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @ICEMT(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local zeroext i16 @inw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
