; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_als300.c_snd_als300_ac97_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_als300.c_snd_als300_ac97_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.snd_als300* }
%struct.snd_als300 = type { i64 }

@AC97_STATUS = common dso_local global i64 0, align 8
@AC97_BUSY = common dso_local global i32 0, align 4
@AC97_ACCESS = common dso_local global i64 0, align 8
@AC97_DATA_AVAIL = common dso_local global i32 0, align 4
@AC97_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @snd_als300_ac97_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @snd_als300_ac97_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_als300*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %8 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %7, i32 0, i32 0
  %9 = load %struct.snd_als300*, %struct.snd_als300** %8, align 8
  store %struct.snd_als300* %9, %struct.snd_als300** %6, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %26, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 1000
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = load %struct.snd_als300*, %struct.snd_als300** %6, align 8
  %15 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AC97_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @inb(i64 %18)
  %20 = load i32, i32* @AC97_BUSY, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %29

24:                                               ; preds = %13
  %25 = call i32 @udelay(i32 10)
  br label %26

26:                                               ; preds = %24
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %10

29:                                               ; preds = %23, %10
  %30 = load i16, i16* %4, align 2
  %31 = zext i16 %30 to i32
  %32 = shl i32 %31, 24
  %33 = or i32 %32, -2147483648
  %34 = trunc i32 %33 to i16
  %35 = load %struct.snd_als300*, %struct.snd_als300** %6, align 8
  %36 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AC97_ACCESS, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outl(i16 zeroext %34, i64 %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %57, %29
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 1000
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load %struct.snd_als300*, %struct.snd_als300** %6, align 8
  %46 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AC97_STATUS, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @inb(i64 %49)
  %51 = load i32, i32* @AC97_DATA_AVAIL, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %60

55:                                               ; preds = %44
  %56 = call i32 @udelay(i32 10)
  br label %57

57:                                               ; preds = %55
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %41

60:                                               ; preds = %54, %41
  %61 = load %struct.snd_als300*, %struct.snd_als300** %6, align 8
  %62 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AC97_READ, align 8
  %65 = add nsw i64 %63, %64
  %66 = call zeroext i16 @inw(i64 %65)
  ret i16 %66
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outl(i16 zeroext, i64) #1

declare dso_local zeroext i16 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
