; ModuleID = '/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_probe_ac97.c'
source_filename = "/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_probe_ac97.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aaci = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.snd_ac97*, %struct.snd_ac97_bus*, i32, i64 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ac97 = type { i32 }
%struct.snd_ac97_bus = type { i32, i32* }
%struct.snd_ac97_template = type { i32, i64, %struct.aaci* }

@AACI_RESET = common dso_local global i64 0, align 8
@RESET_NRST = common dso_local global i32 0, align 4
@FRAME_PERIOD_US = common dso_local global i32 0, align 4
@aaci_bus_ops = common dso_local global i32 0, align 4
@AC97_SCAP_SKIP_MODEM = common dso_local global i32 0, align 4
@AC97_PC_BEEP = common dso_local global i32 0, align 4
@ac97_defs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aaci*)* @aaci_probe_ac97 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aaci_probe_ac97(%struct.aaci* %0) #0 {
  %2 = alloca %struct.aaci*, align 8
  %3 = alloca %struct.snd_ac97_template, align 8
  %4 = alloca %struct.snd_ac97_bus*, align 8
  %5 = alloca %struct.snd_ac97*, align 8
  %6 = alloca i32, align 4
  store %struct.aaci* %0, %struct.aaci** %2, align 8
  %7 = load %struct.aaci*, %struct.aaci** %2, align 8
  %8 = getelementptr inbounds %struct.aaci, %struct.aaci* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AACI_RESET, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 0, i64 %11)
  %13 = call i32 @udelay(i32 2)
  %14 = load i32, i32* @RESET_NRST, align 4
  %15 = load %struct.aaci*, %struct.aaci** %2, align 8
  %16 = getelementptr inbounds %struct.aaci, %struct.aaci* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AACI_RESET, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  %21 = load i32, i32* @FRAME_PERIOD_US, align 4
  %22 = mul nsw i32 %21, 2
  %23 = call i32 @udelay(i32 %22)
  %24 = load %struct.aaci*, %struct.aaci** %2, align 8
  %25 = getelementptr inbounds %struct.aaci, %struct.aaci* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.aaci*, %struct.aaci** %2, align 8
  %28 = call i32 @snd_ac97_bus(i32 %26, i32 0, i32* @aaci_bus_ops, %struct.aaci* %27, %struct.snd_ac97_bus** %4)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %84

32:                                               ; preds = %1
  %33 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %4, align 8
  %34 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %33, i32 0, i32 0
  store i32 48000, i32* %34, align 8
  %35 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %4, align 8
  %36 = load %struct.aaci*, %struct.aaci** %2, align 8
  %37 = getelementptr inbounds %struct.aaci, %struct.aaci* %36, i32 0, i32 3
  store %struct.snd_ac97_bus* %35, %struct.snd_ac97_bus** %37, align 8
  %38 = call i32 @memset(%struct.snd_ac97_template* %3, i32 0, i32 24)
  %39 = load %struct.aaci*, %struct.aaci** %2, align 8
  %40 = getelementptr inbounds %struct.snd_ac97_template, %struct.snd_ac97_template* %3, i32 0, i32 2
  store %struct.aaci* %39, %struct.aaci** %40, align 8
  %41 = getelementptr inbounds %struct.snd_ac97_template, %struct.snd_ac97_template* %3, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @AC97_SCAP_SKIP_MODEM, align 4
  %43 = getelementptr inbounds %struct.snd_ac97_template, %struct.snd_ac97_template* %3, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %4, align 8
  %45 = call i32 @snd_ac97_mixer(%struct.snd_ac97_bus* %44, %struct.snd_ac97_template* %3, %struct.snd_ac97** %5)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  br label %84

49:                                               ; preds = %32
  %50 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %51 = load %struct.aaci*, %struct.aaci** %2, align 8
  %52 = getelementptr inbounds %struct.aaci, %struct.aaci* %51, i32 0, i32 2
  store %struct.snd_ac97* %50, %struct.snd_ac97** %52, align 8
  %53 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %54 = call i64 @ac97_is_audio(%struct.snd_ac97* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %58 = load i32, i32* @AC97_PC_BEEP, align 4
  %59 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %57, i32 %58, i32 32798)
  br label %60

60:                                               ; preds = %56, %49
  %61 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %4, align 8
  %62 = load i32, i32* @ac97_defs, align 4
  %63 = call i32 @ARRAY_SIZE(i32 %62)
  %64 = load i32, i32* @ac97_defs, align 4
  %65 = call i32 @snd_ac97_pcm_assign(%struct.snd_ac97_bus* %61, i32 %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %84

69:                                               ; preds = %60
  %70 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %4, align 8
  %71 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load %struct.aaci*, %struct.aaci** %2, align 8
  %75 = getelementptr inbounds %struct.aaci, %struct.aaci* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32* %73, i32** %76, align 8
  %77 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %4, align 8
  %78 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load %struct.aaci*, %struct.aaci** %2, align 8
  %82 = getelementptr inbounds %struct.aaci, %struct.aaci* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32* %80, i32** %83, align 8
  br label %84

84:                                               ; preds = %69, %68, %48, %31
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_ac97_bus(i32, i32, i32*, %struct.aaci*, %struct.snd_ac97_bus**) #1

declare dso_local i32 @memset(%struct.snd_ac97_template*, i32, i32) #1

declare dso_local i32 @snd_ac97_mixer(%struct.snd_ac97_bus*, %struct.snd_ac97_template*, %struct.snd_ac97**) #1

declare dso_local i64 @ac97_is_audio(%struct.snd_ac97*) #1

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i32, i32) #1

declare dso_local i32 @snd_ac97_pcm_assign(%struct.snd_ac97_bus*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
