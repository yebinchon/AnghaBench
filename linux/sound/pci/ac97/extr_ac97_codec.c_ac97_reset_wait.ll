; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_ac97_reset_wait.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_ac97_reset_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@AC97_RESET = common dso_local global i32 0, align 4
@AC97_VENDOR_ID1 = common dso_local global i32 0, align 4
@AC97_VENDOR_ID2 = common dso_local global i32 0, align 4
@AC97_EXTENDED_MID = common dso_local global i32 0, align 4
@AC97_SCAP_DETECT_BY_VENDOR = common dso_local global i32 0, align 4
@AC97_REC_GAIN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*, i32, i32)* @ac97_reset_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac97_reset_wait(%struct.snd_ac97* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ac97*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @jiffies, align 4
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %10, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %8, align 8
  br label %14

14:                                               ; preds = %75, %3
  %15 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %16 = load i32, i32* @AC97_RESET, align 4
  %17 = call i32 @snd_ac97_read(%struct.snd_ac97* %15, i32 %16)
  %18 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %19 = load i32, i32* @AC97_VENDOR_ID1, align 4
  %20 = call i32 @snd_ac97_read(%struct.snd_ac97* %18, i32 %19)
  %21 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %22 = load i32, i32* @AC97_VENDOR_ID2, align 4
  %23 = call i32 @snd_ac97_read(%struct.snd_ac97* %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %14
  %27 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %28 = load i32, i32* @AC97_EXTENDED_MID, align 4
  %29 = call i32 @snd_ac97_read(%struct.snd_ac97* %27, i32 %28)
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %9, align 2
  %31 = load i16, i16* %9, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp ne i32 %32, 65535
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load i16, i16* %9, align 2
  %36 = zext i16 %35 to i32
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %83

40:                                               ; preds = %34, %26
  br label %41

41:                                               ; preds = %40, %14
  %42 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %43 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @AC97_SCAP_DETECT_BY_VENDOR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %50 = load i32, i32* @AC97_VENDOR_ID1, align 4
  %51 = call i32 @snd_ac97_read(%struct.snd_ac97* %49, i32 %50)
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %9, align 2
  %53 = load i16, i16* %9, align 2
  %54 = zext i16 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load i16, i16* %9, align 2
  %58 = zext i16 %57 to i32
  %59 = icmp ne i32 %58, 65535
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %83

61:                                               ; preds = %56, %48
  br label %73

62:                                               ; preds = %41
  %63 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %64 = load i32, i32* @AC97_REC_GAIN, align 4
  %65 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %63, i32 %64, i32 35333)
  %66 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %67 = load i32, i32* @AC97_REC_GAIN, align 4
  %68 = call i32 @snd_ac97_read(%struct.snd_ac97* %66, i32 %67)
  %69 = and i32 %68, 32767
  %70 = icmp eq i32 %69, 2565
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %83

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %61
  %74 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %75

75:                                               ; preds = %73
  %76 = load i64, i64* %8, align 8
  %77 = load i32, i32* @jiffies, align 4
  %78 = call i64 @time_after_eq(i64 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %14, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %80, %71, %60, %39
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @snd_ac97_read(%struct.snd_ac97*, i32) #1

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i32, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i64 @time_after_eq(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
