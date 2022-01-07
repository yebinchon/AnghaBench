; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_focusrite.c_saffirepro_both_clk_freq_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_focusrite.c_saffirepro_both_clk_freq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { i32 }

@SAFFIREPRO_RATE_NOREBOOT = common dso_local global i32 0, align 4
@rates = common dso_local global i32* null, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_bebob*, i32*)* @saffirepro_both_clk_freq_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saffirepro_both_clk_freq_get(%struct.snd_bebob* %0, i32* %1) #0 {
  %3 = alloca %struct.snd_bebob*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.snd_bebob* %0, %struct.snd_bebob** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %8 = load i32, i32* @SAFFIREPRO_RATE_NOREBOOT, align 4
  %9 = call i32 @saffire_read_quad(%struct.snd_bebob* %7, i32 %8, i64* %5)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %28

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load i32*, i32** @rates, align 8
  %16 = call i64 @ARRAY_SIZE(i32* %15)
  %17 = icmp uge i64 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %27

21:                                               ; preds = %13
  %22 = load i32*, i32** @rates, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %4, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %21, %18
  br label %28

28:                                               ; preds = %27, %12
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local i32 @saffire_read_quad(%struct.snd_bebob*, i32, i64*) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
