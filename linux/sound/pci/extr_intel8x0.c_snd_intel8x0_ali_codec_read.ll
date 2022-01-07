; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_ali_codec_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_ali_codec_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i64, %struct.intel8x0* }
%struct.intel8x0 = type { i32 }

@ALI_CPR_ADDR_READ = common dso_local global i16 0, align 2
@ALI_CPR_ADDR_SECONDARY = common dso_local global i16 0, align 2
@ALI_CPR_ADDR = common dso_local global i32 0, align 4
@ALI_CSPSR_READ_OK = common dso_local global i32 0, align 4
@ALI_SPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @snd_intel8x0_ali_codec_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @snd_intel8x0_ali_codec_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.intel8x0*, align 8
  %6 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %8 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %7, i32 0, i32 1
  %9 = load %struct.intel8x0*, %struct.intel8x0** %8, align 8
  store %struct.intel8x0* %9, %struct.intel8x0** %5, align 8
  store i16 -1, i16* %6, align 2
  %10 = load %struct.intel8x0*, %struct.intel8x0** %5, align 8
  %11 = call i64 @snd_intel8x0_ali_codec_semaphore(%struct.intel8x0* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %48

14:                                               ; preds = %2
  %15 = load i16, i16* @ALI_CPR_ADDR_READ, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* %4, align 2
  %18 = zext i16 %17 to i32
  %19 = or i32 %18, %16
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %4, align 2
  %21 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %22 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %14
  %26 = load i16, i16* @ALI_CPR_ADDR_SECONDARY, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16, i16* %4, align 2
  %29 = zext i16 %28 to i32
  %30 = or i32 %29, %27
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %4, align 2
  br label %32

32:                                               ; preds = %25, %14
  %33 = load %struct.intel8x0*, %struct.intel8x0** %5, align 8
  %34 = load i32, i32* @ALI_CPR_ADDR, align 4
  %35 = call i32 @ICHREG(i32 %34)
  %36 = load i16, i16* %4, align 2
  %37 = call i32 @iputword(%struct.intel8x0* %33, i32 %35, i16 zeroext %36)
  %38 = load %struct.intel8x0*, %struct.intel8x0** %5, align 8
  %39 = load i32, i32* @ALI_CSPSR_READ_OK, align 4
  %40 = call i64 @snd_intel8x0_ali_codec_ready(%struct.intel8x0* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %48

43:                                               ; preds = %32
  %44 = load %struct.intel8x0*, %struct.intel8x0** %5, align 8
  %45 = load i32, i32* @ALI_SPR, align 4
  %46 = call i32 @ICHREG(i32 %45)
  %47 = call zeroext i16 @igetword(%struct.intel8x0* %44, i32 %46)
  store i16 %47, i16* %6, align 2
  br label %48

48:                                               ; preds = %43, %42, %13
  %49 = load i16, i16* %6, align 2
  ret i16 %49
}

declare dso_local i64 @snd_intel8x0_ali_codec_semaphore(%struct.intel8x0*) #1

declare dso_local i32 @iputword(%struct.intel8x0*, i32, i16 zeroext) #1

declare dso_local i32 @ICHREG(i32) #1

declare dso_local i64 @snd_intel8x0_ali_codec_ready(%struct.intel8x0*, i32) #1

declare dso_local zeroext i16 @igetword(%struct.intel8x0*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
