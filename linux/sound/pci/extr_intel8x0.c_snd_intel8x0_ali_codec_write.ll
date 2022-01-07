; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_ali_codec_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_ali_codec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i64, %struct.intel8x0* }
%struct.intel8x0 = type { i32 }

@ALI_CPR = common dso_local global i32 0, align 4
@ALI_CPR_ADDR_SECONDARY = common dso_local global i16 0, align 2
@ALI_CPR_ADDR = common dso_local global i32 0, align 4
@ALI_CSPSR_WRITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @snd_intel8x0_ali_codec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_intel8x0_ali_codec_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.intel8x0*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %8 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %9 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %8, i32 0, i32 1
  %10 = load %struct.intel8x0*, %struct.intel8x0** %9, align 8
  store %struct.intel8x0* %10, %struct.intel8x0** %7, align 8
  %11 = load %struct.intel8x0*, %struct.intel8x0** %7, align 8
  %12 = call i64 @snd_intel8x0_ali_codec_semaphore(%struct.intel8x0* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %41

15:                                               ; preds = %3
  %16 = load %struct.intel8x0*, %struct.intel8x0** %7, align 8
  %17 = load i32, i32* @ALI_CPR, align 4
  %18 = call i32 @ICHREG(i32 %17)
  %19 = load i16, i16* %6, align 2
  %20 = call i32 @iputword(%struct.intel8x0* %16, i32 %18, i16 zeroext %19)
  %21 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %22 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %15
  %26 = load i16, i16* @ALI_CPR_ADDR_SECONDARY, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16, i16* %5, align 2
  %29 = zext i16 %28 to i32
  %30 = or i32 %29, %27
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %5, align 2
  br label %32

32:                                               ; preds = %25, %15
  %33 = load %struct.intel8x0*, %struct.intel8x0** %7, align 8
  %34 = load i32, i32* @ALI_CPR_ADDR, align 4
  %35 = call i32 @ICHREG(i32 %34)
  %36 = load i16, i16* %5, align 2
  %37 = call i32 @iputword(%struct.intel8x0* %33, i32 %35, i16 zeroext %36)
  %38 = load %struct.intel8x0*, %struct.intel8x0** %7, align 8
  %39 = load i32, i32* @ALI_CSPSR_WRITE_OK, align 4
  %40 = call i32 @snd_intel8x0_ali_codec_ready(%struct.intel8x0* %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %14
  ret void
}

declare dso_local i64 @snd_intel8x0_ali_codec_semaphore(%struct.intel8x0*) #1

declare dso_local i32 @iputword(%struct.intel8x0*, i32, i16 zeroext) #1

declare dso_local i32 @ICHREG(i32) #1

declare dso_local i32 @snd_intel8x0_ali_codec_ready(%struct.intel8x0*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
