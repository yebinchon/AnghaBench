; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0m.c_snd_intel8x0m_codec_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0m.c_snd_intel8x0m_codec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, %struct.intel8x0m* }
%struct.intel8x0m = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"codec_write %d: semaphore is not ready for register 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @snd_intel8x0m_codec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_intel8x0m_codec_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.intel8x0m*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %8 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %9 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %8, i32 0, i32 1
  %10 = load %struct.intel8x0m*, %struct.intel8x0m** %9, align 8
  store %struct.intel8x0m* %10, %struct.intel8x0m** %7, align 8
  %11 = load %struct.intel8x0m*, %struct.intel8x0m** %7, align 8
  %12 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %13 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @snd_intel8x0m_codec_semaphore(%struct.intel8x0m* %11, i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %3
  %18 = load %struct.intel8x0m*, %struct.intel8x0m** %7, align 8
  %19 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %17
  %23 = load %struct.intel8x0m*, %struct.intel8x0m** %7, align 8
  %24 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %29 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i16, i16* %5, align 2
  %32 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %30, i16 zeroext %31)
  br label %33

33:                                               ; preds = %22, %17
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.intel8x0m*, %struct.intel8x0m** %7, align 8
  %36 = load i16, i16* %5, align 2
  %37 = zext i16 %36 to i32
  %38 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %39 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %40, 128
  %42 = add nsw i32 %37, %41
  %43 = trunc i32 %42 to i16
  %44 = load i16, i16* %6, align 2
  %45 = call i32 @iaputword(%struct.intel8x0m* %35, i16 zeroext %43, i16 zeroext %44)
  ret void
}

declare dso_local i64 @snd_intel8x0m_codec_semaphore(%struct.intel8x0m*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i16 zeroext) #1

declare dso_local i32 @iaputword(%struct.intel8x0m*, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
