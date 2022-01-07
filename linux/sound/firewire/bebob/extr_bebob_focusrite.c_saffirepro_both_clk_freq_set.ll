; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_focusrite.c_saffirepro_both_clk_freq_set.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_focusrite.c_saffirepro_both_clk_freq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { i32 }

@rates = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@SAFFIREPRO_RATE_NOREBOOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_bebob*, i32)* @saffirepro_both_clk_freq_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saffirepro_both_clk_freq_set(%struct.snd_bebob* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_bebob*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.snd_bebob* %0, %struct.snd_bebob** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %21, %2
  %8 = load i64, i64* %6, align 8
  %9 = load i32*, i32** @rates, align 8
  %10 = call i64 @ARRAY_SIZE(i32* %9)
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load i32*, i32** @rates, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %24

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load i64, i64* %6, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %6, align 8
  br label %7

24:                                               ; preds = %19, %7
  %25 = load i64, i64* %6, align 8
  %26 = load i32*, i32** @rates, align 8
  %27 = call i64 @ARRAY_SIZE(i32* %26)
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %37

32:                                               ; preds = %24
  %33 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %34 = load i32, i32* @SAFFIREPRO_RATE_NOREBOOT, align 4
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @saffire_write_quad(%struct.snd_bebob* %33, i32 %34, i64 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @saffire_write_quad(%struct.snd_bebob*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
