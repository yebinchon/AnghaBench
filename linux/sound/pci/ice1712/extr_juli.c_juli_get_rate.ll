; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_juli.c_juli_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_juli.c_juli_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8 (%struct.snd_ice1712.0*)* }
%struct.snd_ice1712.0 = type opaque

@GPIO_RATE_MASK = common dso_local global i8 0, align 1
@gpio_vals = common dso_local global i8* null, align 8
@juli_rates = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @juli_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @juli_get_rate(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  %6 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %7 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i8 (%struct.snd_ice1712.0*)*, i8 (%struct.snd_ice1712.0*)** %8, align 8
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %11 = bitcast %struct.snd_ice1712* %10 to %struct.snd_ice1712.0*
  %12 = call zeroext i8 %9(%struct.snd_ice1712.0* %11)
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* @GPIO_RATE_MASK, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %13, %15
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %5, align 1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %40, %1
  %19 = load i32, i32* %4, align 4
  %20 = load i8*, i8** @gpio_vals, align 8
  %21 = call i32 @ARRAY_SIZE(i8* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %18
  %24 = load i8*, i8** @gpio_vals, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* %5, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load i32*, i32** @juli_rates, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %2, align 4
  br label %44

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %18

43:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %33
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
