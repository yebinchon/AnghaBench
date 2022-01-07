; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb16_csp.c_csp_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb16_csp.c_csp_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sb*, i32*)* @csp_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csp_detect(%struct.snd_sb* %0, i32* %1) #0 {
  %3 = alloca %struct.snd_sb*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.snd_sb* %0, %struct.snd_sb** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %12 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %11, i32 0, i32 0
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %16 = call i32 @set_codec_parameter(%struct.snd_sb* %15, i32 0, i32 0)
  %17 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %18 = call i32 @set_mode_register(%struct.snd_sb* %17, i32 252)
  %19 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %20 = call zeroext i8 @read_register(%struct.snd_sb* %19, i32 131)
  store i8 %20, i8* %5, align 1
  %21 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %22 = load i8, i8* %5, align 1
  %23 = zext i8 %22 to i32
  %24 = xor i32 %23, -1
  %25 = trunc i32 %24 to i8
  %26 = call i32 @set_register(%struct.snd_sb* %21, i32 131, i8 zeroext %25)
  %27 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %28 = call zeroext i8 @read_register(%struct.snd_sb* %27, i32 131)
  store i8 %28, i8* %6, align 1
  %29 = load i8, i8* %6, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* %5, align 1
  %32 = zext i8 %31 to i32
  %33 = xor i32 %32, 255
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %65

36:                                               ; preds = %2
  %37 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %38 = load i8, i8* %5, align 1
  %39 = call i32 @set_register(%struct.snd_sb* %37, i32 131, i8 zeroext %38)
  %40 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %41 = call zeroext i8 @read_register(%struct.snd_sb* %40, i32 131)
  store i8 %41, i8* %6, align 1
  %42 = load i8, i8* %6, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* %5, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %65

48:                                               ; preds = %36
  %49 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %50 = call i32 @set_mode_register(%struct.snd_sb* %49, i32 0)
  %51 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %52 = call i32 @get_version(%struct.snd_sb* %51)
  %53 = load i32*, i32** %4, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %55 = call i32 @snd_sbdsp_reset(%struct.snd_sb* %54)
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %57, 16
  br i1 %58, label %59, label %64

59:                                               ; preds = %48
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %60, align 4
  %62 = icmp sle i32 %61, 31
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %63, %59, %48
  br label %65

65:                                               ; preds = %64, %47, %35
  %66 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %67 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %66, i32 0, i32 0
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_codec_parameter(%struct.snd_sb*, i32, i32) #1

declare dso_local i32 @set_mode_register(%struct.snd_sb*, i32) #1

declare dso_local zeroext i8 @read_register(%struct.snd_sb*, i32) #1

declare dso_local i32 @set_register(%struct.snd_sb*, i32, i8 zeroext) #1

declare dso_local i32 @get_version(%struct.snd_sb*) #1

declare dso_local i32 @snd_sbdsp_reset(%struct.snd_sb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
