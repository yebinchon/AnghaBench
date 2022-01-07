; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_set_pro_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_set_pro_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_10__*, %struct.TYPE_6__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.snd_ice1712.0*, i32)* }
%struct.snd_ice1712.0 = type opaque
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_10__*, i32)* }
%struct.TYPE_6__ = type { i32 (%struct.snd_ice1712.1*, i32)* }
%struct.snd_ice1712.1 = type opaque

@PLAYBACK_CONTROL = common dso_local global i32 0, align 4
@ICE1712_CAPTURE_START_SHADOW = common dso_local global i32 0, align 4
@ICE1712_PLAYBACK_PAUSE = common dso_local global i32 0, align 4
@ICE1712_PLAYBACK_START = common dso_local global i32 0, align 4
@RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32, i32)* @snd_ice1712_set_pro_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ice1712_set_pro_rate(%struct.snd_ice1712* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %25 [
    i32 8000, label %12
    i32 9600, label %13
    i32 11025, label %14
    i32 12000, label %15
    i32 16000, label %16
    i32 22050, label %17
    i32 24000, label %18
    i32 32000, label %19
    i32 44100, label %20
    i32 48000, label %21
    i32 64000, label %22
    i32 88200, label %23
    i32 96000, label %24
  ]

12:                                               ; preds = %3
  store i8 6, i8* %8, align 1
  br label %27

13:                                               ; preds = %3
  store i8 3, i8* %8, align 1
  br label %27

14:                                               ; preds = %3
  store i8 10, i8* %8, align 1
  br label %27

15:                                               ; preds = %3
  store i8 2, i8* %8, align 1
  br label %27

16:                                               ; preds = %3
  store i8 5, i8* %8, align 1
  br label %27

17:                                               ; preds = %3
  store i8 9, i8* %8, align 1
  br label %27

18:                                               ; preds = %3
  store i8 1, i8* %8, align 1
  br label %27

19:                                               ; preds = %3
  store i8 4, i8* %8, align 1
  br label %27

20:                                               ; preds = %3
  store i8 8, i8* %8, align 1
  br label %27

21:                                               ; preds = %3
  store i8 0, i8* %8, align 1
  br label %27

22:                                               ; preds = %3
  store i8 15, i8* %8, align 1
  br label %27

23:                                               ; preds = %3
  store i8 11, i8* %8, align 1
  br label %27

24:                                               ; preds = %3
  store i8 7, i8* %8, align 1
  br label %27

25:                                               ; preds = %3
  %26 = call i32 (...) @snd_BUG()
  store i8 0, i8* %8, align 1
  store i32 48000, i32* %5, align 4
  br label %27

27:                                               ; preds = %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12
  %28 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %29 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %28, i32 0, i32 5
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %33 = load i32, i32* @PLAYBACK_CONTROL, align 4
  %34 = call i32 @ICEMT(%struct.snd_ice1712* %32, i32 %33)
  %35 = call i32 @inb(i32 %34)
  %36 = load i32, i32* @ICE1712_CAPTURE_START_SHADOW, align 4
  %37 = load i32, i32* @ICE1712_PLAYBACK_PAUSE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @ICE1712_PLAYBACK_START, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %35, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %27
  br label %44

44:                                               ; preds = %71, %56, %43
  %45 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %46 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %45, i32 0, i32 5
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  br label %156

49:                                               ; preds = %27
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %54 = call i64 @is_pro_rate_locked(%struct.snd_ice1712* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %44

57:                                               ; preds = %52, %49
  %58 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %59 = load i32, i32* @RATE, align 4
  %60 = call i32 @ICEMT(%struct.snd_ice1712* %58, i32 %59)
  %61 = call i32 @inb(i32 %60)
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %9, align 1
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %57
  %66 = load i8, i8* %9, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* %8, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %44

72:                                               ; preds = %65, %57
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %75 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i8, i8* %8, align 1
  %77 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %78 = load i32, i32* @RATE, align 4
  %79 = call i32 @ICEMT(%struct.snd_ice1712* %77, i32 %78)
  %80 = call i32 @outb(i8 zeroext %76, i32 %79)
  %81 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %82 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %81, i32 0, i32 5
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  %85 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %86 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32 (%struct.snd_ice1712.1*, i32)*, i32 (%struct.snd_ice1712.1*, i32)** %87, align 8
  %89 = icmp ne i32 (%struct.snd_ice1712.1*, i32)* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %72
  %91 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %92 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32 (%struct.snd_ice1712.1*, i32)*, i32 (%struct.snd_ice1712.1*, i32)** %93, align 8
  %95 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %96 = bitcast %struct.snd_ice1712* %95 to %struct.snd_ice1712.1*
  %97 = load i32, i32* %5, align 4
  %98 = call i32 %94(%struct.snd_ice1712.1* %96, i32 %97)
  br label %99

99:                                               ; preds = %90, %72
  store i32 0, i32* %10, align 4
  br label %100

100:                                              ; preds = %136, %99
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %103 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ult i32 %101, %104
  br i1 %105, label %106, label %139

106:                                              ; preds = %100
  %107 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %108 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %107, i32 0, i32 3
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %114, align 8
  %116 = icmp ne i32 (%struct.TYPE_10__*, i32)* %115, null
  br i1 %116, label %117, label %135

117:                                              ; preds = %106
  %118 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %119 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %118, i32 0, i32 3
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %125, align 8
  %127 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %128 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %127, i32 0, i32 3
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i64 %131
  %133 = load i32, i32* %5, align 4
  %134 = call i32 %126(%struct.TYPE_10__* %132, i32 %133)
  br label %135

135:                                              ; preds = %117, %106
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %10, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %100

139:                                              ; preds = %100
  %140 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %141 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32 (%struct.snd_ice1712.0*, i32)*, i32 (%struct.snd_ice1712.0*, i32)** %143, align 8
  %145 = icmp ne i32 (%struct.snd_ice1712.0*, i32)* %144, null
  br i1 %145, label %146, label %156

146:                                              ; preds = %139
  %147 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %148 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32 (%struct.snd_ice1712.0*, i32)*, i32 (%struct.snd_ice1712.0*, i32)** %150, align 8
  %152 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %153 = bitcast %struct.snd_ice1712* %152 to %struct.snd_ice1712.0*
  %154 = load i32, i32* %5, align 4
  %155 = call i32 %151(%struct.snd_ice1712.0* %153, i32 %154)
  br label %156

156:                                              ; preds = %44, %146, %139
  ret void
}

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @ICEMT(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @is_pro_rate_locked(%struct.snd_ice1712*) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
