; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/soundbus/i2sbus/extr_interface.h_i2s_sf_sclkdiv.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/soundbus/i2sbus/extr_interface.h_i2s_sf_sclkdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2S_SF_SCLKDIV_1 = common dso_local global i32 0, align 4
@I2S_SF_SCLKDIV_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @i2s_sf_sclkdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2s_sf_sclkdiv(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %18 [
    i32 1, label %8
    i32 3, label %13
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @I2S_SF_SCLKDIV_1, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %9
  store i32 %12, i32* %10, align 4
  store i32 0, i32* %3, align 4
  br label %39

13:                                               ; preds = %2
  %14 = load i32, i32* @I2S_SF_SCLKDIV_3, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %14
  store i32 %17, i32* %15, align 4
  store i32 0, i32* %3, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = srem i32 %19, 2
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %39

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = sdiv i32 %24, 2
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 8
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 9
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %23
  store i32 -1, i32* %3, align 4
  br label %39

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @I2S_SF_SCLKDIV_OTHER(i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %33, %32, %22, %13, %8
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @I2S_SF_SCLKDIV_OTHER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
