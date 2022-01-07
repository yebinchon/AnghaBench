; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_ac97_ready.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_ac97_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AC97_CMD = common dso_local global i32 0, align 4
@VT1724_AC97_WRITE = common dso_local global i8 0, align 1
@VT1724_AC97_READ = common dso_local global i8 0, align 1
@VT1724_AC97_READY = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [32 x i8] c"snd_vt1724_ac97_ready: timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.snd_ice1712*)* @snd_vt1724_ac97_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @snd_vt1724_ac97_ready(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %34, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 65536
  br i1 %8, label %9, label %37

9:                                                ; preds = %6
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %11 = load i32, i32* @AC97_CMD, align 4
  %12 = call i32 @ICEMT1724(%struct.snd_ice1712* %10, i32 %11)
  %13 = call zeroext i8 @inb(i32 %12)
  store i8 %13, i8* %4, align 1
  %14 = load i8, i8* %4, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @VT1724_AC97_WRITE, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @VT1724_AC97_READ, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %17, %19
  %21 = and i32 %15, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %9
  br label %34

24:                                               ; preds = %9
  %25 = load i8, i8* %4, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @VT1724_AC97_READY, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %34

32:                                               ; preds = %24
  %33 = load i8, i8* %4, align 1
  store i8 %33, i8* %2, align 1
  br label %45

34:                                               ; preds = %31, %23
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %6

37:                                               ; preds = %6
  %38 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %39 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %44 = load i8, i8* %4, align 1
  store i8 %44, i8* %2, align 1
  br label %45

45:                                               ; preds = %37, %32
  %46 = load i8, i8* %2, align 1
  ret i8 %46
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @ICEMT1724(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
