; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_clkrun_hack.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_clkrun_hack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_cs46xx*, i32)* @clkrun_hack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clkrun_hack(%struct.snd_cs46xx* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_cs46xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %8 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %45

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %16 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, %14
  store i64 %18, i64* %16, align 8
  %19 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %20 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 16
  %23 = call i32 @inw(i64 %22)
  store i32 %23, i32* %5, align 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %25 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %12
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, 8192
  store i32 %30, i32* %6, align 4
  br label %34

31:                                               ; preds = %12
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, -8193
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %41 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 16
  %44 = call i32 @outw(i32 %39, i64 %43)
  br label %45

45:                                               ; preds = %11, %38, %34
  ret void
}

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
