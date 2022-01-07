; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.intel8x0 = type { i32 }
%struct.ichdev = type { i64, i32, i64, i32, i32 }

@ICH_IOCE = common dso_local global i8 0, align 1
@ICH_STARTBM = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@ICH_REG_OFF_CR = common dso_local global i64 0, align 8
@ICH_DCH = common dso_local global i32 0, align 4
@ICH_RESETREGS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_intel8x0_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel8x0*, align 8
  %7 = alloca %struct.ichdev*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = call %struct.intel8x0* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.intel8x0* %11, %struct.intel8x0** %6, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = call %struct.ichdev* @get_ichdev(%struct.snd_pcm_substream* %12)
  store %struct.ichdev* %13, %struct.ichdev** %7, align 8
  store i8 0, i8* %8, align 1
  %14 = load %struct.ichdev*, %struct.ichdev** %7, align 8
  %15 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %39 [
    i32 131, label %18
    i32 130, label %21
    i32 132, label %21
    i32 128, label %33
    i32 129, label %36
    i32 133, label %37
  ]

18:                                               ; preds = %2
  %19 = load %struct.ichdev*, %struct.ichdev** %7, align 8
  %20 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %19, i32 0, i32 1
  store i32 0, i32* %20, align 8
  br label %21

21:                                               ; preds = %2, %2, %18
  %22 = load i8, i8* @ICH_IOCE, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @ICH_STARTBM, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %23, %25
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %8, align 1
  %28 = load %struct.ichdev*, %struct.ichdev** %7, align 8
  %29 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ichdev*, %struct.ichdev** %7, align 8
  %32 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  br label %42

33:                                               ; preds = %2
  %34 = load %struct.ichdev*, %struct.ichdev** %7, align 8
  %35 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %34, i32 0, i32 1
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %2, %33
  store i8 0, i8* %8, align 1
  br label %42

37:                                               ; preds = %2
  %38 = load i8, i8* @ICH_IOCE, align 1
  store i8 %38, i8* %8, align 1
  br label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %73

42:                                               ; preds = %37, %36, %21
  %43 = load %struct.intel8x0*, %struct.intel8x0** %6, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @ICH_REG_OFF_CR, align 8
  %46 = add i64 %44, %45
  %47 = load i8, i8* %8, align 1
  %48 = call i32 @iputbyte(%struct.intel8x0* %43, i64 %46, i8 zeroext %47)
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 129
  br i1 %50, label %51, label %72

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %64, %51
  %53 = load %struct.intel8x0*, %struct.intel8x0** %6, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.ichdev*, %struct.ichdev** %7, align 8
  %56 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %54, %57
  %59 = call i32 @igetbyte(%struct.intel8x0* %53, i64 %58)
  %60 = load i32, i32* @ICH_DCH, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %52

65:                                               ; preds = %52
  %66 = load %struct.intel8x0*, %struct.intel8x0** %6, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* @ICH_REG_OFF_CR, align 8
  %69 = add i64 %67, %68
  %70 = load i8, i8* @ICH_RESETREGS, align 1
  %71 = call i32 @iputbyte(%struct.intel8x0* %66, i64 %69, i8 zeroext %70)
  br label %72

72:                                               ; preds = %65, %42
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %39
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.intel8x0* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.ichdev* @get_ichdev(%struct.snd_pcm_substream*) #1

declare dso_local i32 @iputbyte(%struct.intel8x0*, i64, i8 zeroext) #1

declare dso_local i32 @igetbyte(%struct.intel8x0*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
