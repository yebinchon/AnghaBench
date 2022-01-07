; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_juli.c_juli_akm_set_rate_val.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_juli.c_juli_akm_set_rate_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_akm4xxx = type { %struct.snd_ice1712** }
%struct.snd_ice1712 = type { %struct.TYPE_2__, %struct.juli_spec* }
%struct.TYPE_2__ = type { i32 (%struct.snd_ice1712.0*)*, i32 (%struct.snd_ice1712.1*, i32)* }
%struct.snd_ice1712.0 = type opaque
%struct.snd_ice1712.1 = type opaque
%struct.juli_spec = type { i32 }

@GPIO_AK5385A_DFS1 = common dso_local global i32 0, align 4
@GPIO_AK5385A_CKS0 = common dso_local global i32 0, align 4
@GPIO_AK5385A_DFS0 = common dso_local global i32 0, align 4
@GPIO_AK5385A_MASK = common dso_local global i32 0, align 4
@AC97_CMD = common dso_local global i32 0, align 4
@VT1724_AC97_COLD = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_akm4xxx*, i32)* @juli_akm_set_rate_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @juli_akm_set_rate_val(%struct.snd_akm4xxx* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_akm4xxx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_ice1712*, align 8
  %12 = alloca %struct.juli_spec*, align 8
  store %struct.snd_akm4xxx* %0, %struct.snd_akm4xxx** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %14 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %13, i32 0, i32 0
  %15 = load %struct.snd_ice1712**, %struct.snd_ice1712*** %14, align 8
  %16 = getelementptr inbounds %struct.snd_ice1712*, %struct.snd_ice1712** %15, i64 0
  %17 = load %struct.snd_ice1712*, %struct.snd_ice1712** %16, align 8
  store %struct.snd_ice1712* %17, %struct.snd_ice1712** %11, align 8
  %18 = load %struct.snd_ice1712*, %struct.snd_ice1712** %11, align 8
  %19 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %18, i32 0, i32 1
  %20 = load %struct.juli_spec*, %struct.juli_spec** %19, align 8
  store %struct.juli_spec* %20, %struct.juli_spec** %12, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %112

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp ugt i32 %25, 96000
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  store i8 2, i8* %7, align 1
  %28 = load i32, i32* @GPIO_AK5385A_DFS1, align 4
  %29 = load i32, i32* @GPIO_AK5385A_CKS0, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %8, align 4
  br label %38

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = icmp ugt i32 %32, 48000
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  store i8 1, i8* %7, align 1
  %35 = load i32, i32* @GPIO_AK5385A_DFS0, align 4
  store i32 %35, i32* %8, align 4
  br label %37

36:                                               ; preds = %31
  store i8 0, i8* %7, align 1
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %34
  br label %38

38:                                               ; preds = %37, %27
  %39 = load %struct.snd_ice1712*, %struct.snd_ice1712** %11, align 8
  %40 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.snd_ice1712.0*)*, i32 (%struct.snd_ice1712.0*)** %41, align 8
  %43 = load %struct.snd_ice1712*, %struct.snd_ice1712** %11, align 8
  %44 = bitcast %struct.snd_ice1712* %43 to %struct.snd_ice1712.0*
  %45 = call i32 %42(%struct.snd_ice1712.0* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @GPIO_AK5385A_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %10, align 4
  %52 = load %struct.snd_ice1712*, %struct.snd_ice1712** %11, align 8
  %53 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32 (%struct.snd_ice1712.1*, i32)*, i32 (%struct.snd_ice1712.1*, i32)** %54, align 8
  %56 = load %struct.snd_ice1712*, %struct.snd_ice1712** %11, align 8
  %57 = bitcast %struct.snd_ice1712* %56 to %struct.snd_ice1712.1*
  %58 = load i32, i32* %10, align 4
  %59 = call i32 %55(%struct.snd_ice1712.1* %57, i32 %58)
  %60 = load %struct.snd_ice1712*, %struct.snd_ice1712** %11, align 8
  %61 = load i32, i32* @AC97_CMD, align 4
  %62 = call i32 @ICEMT1724(%struct.snd_ice1712* %60, i32 %61)
  %63 = call zeroext i8 @inb(i32 %62)
  store i8 %63, i8* %5, align 1
  %64 = load i8, i8* %5, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* @VT1724_AC97_COLD, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %65, %67
  %69 = trunc i32 %68 to i8
  %70 = load %struct.snd_ice1712*, %struct.snd_ice1712** %11, align 8
  %71 = load i32, i32* @AC97_CMD, align 4
  %72 = call i32 @ICEMT1724(%struct.snd_ice1712* %70, i32 %71)
  %73 = call i32 @outb(i8 zeroext %69, i32 %72)
  %74 = call i32 @udelay(i32 1)
  %75 = load i8, i8* %5, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8, i8* @VT1724_AC97_COLD, align 1
  %78 = zext i8 %77 to i32
  %79 = xor i32 %78, -1
  %80 = and i32 %76, %79
  %81 = trunc i32 %80 to i8
  %82 = load %struct.snd_ice1712*, %struct.snd_ice1712** %11, align 8
  %83 = load i32, i32* @AC97_CMD, align 4
  %84 = call i32 @ICEMT1724(%struct.snd_ice1712* %82, i32 %83)
  %85 = call i32 @outb(i8 zeroext %81, i32 %84)
  %86 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %87 = call zeroext i8 @snd_akm4xxx_get(%struct.snd_akm4xxx* %86, i32 0, i32 2)
  store i8 %87, i8* %6, align 1
  %88 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %89 = call i32 @snd_akm4xxx_reset(%struct.snd_akm4xxx* %88, i32 1)
  %90 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %91 = call zeroext i8 @snd_akm4xxx_get(%struct.snd_akm4xxx* %90, i32 0, i32 2)
  store i8 %91, i8* %6, align 1
  %92 = load i8, i8* %6, align 1
  %93 = zext i8 %92 to i32
  %94 = and i32 %93, -49
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %6, align 1
  %96 = load i8, i8* %7, align 1
  %97 = zext i8 %96 to i32
  %98 = shl i32 %97, 4
  %99 = load i8, i8* %6, align 1
  %100 = zext i8 %99 to i32
  %101 = or i32 %100, %98
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %6, align 1
  %103 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %104 = load i8, i8* %6, align 1
  %105 = call i32 @snd_akm4xxx_set(%struct.snd_akm4xxx* %103, i32 0, i32 2, i8 zeroext %104)
  %106 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %107 = call i32 @snd_akm4xxx_reset(%struct.snd_akm4xxx* %106, i32 0)
  %108 = load %struct.juli_spec*, %struct.juli_spec** %12, align 8
  %109 = getelementptr inbounds %struct.juli_spec, %struct.juli_spec* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @snd_ak4114_reinit(i32 %110)
  br label %112

112:                                              ; preds = %38, %23
  ret void
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @ICEMT1724(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local zeroext i8 @snd_akm4xxx_get(%struct.snd_akm4xxx*, i32, i32) #1

declare dso_local i32 @snd_akm4xxx_reset(%struct.snd_akm4xxx*, i32) #1

declare dso_local i32 @snd_akm4xxx_set(%struct.snd_akm4xxx*, i32, i32, i8 zeroext) #1

declare dso_local i32 @snd_ak4114_reinit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
