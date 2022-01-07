; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4xxx-adda.c_ak4381_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4xxx-adda.c_ak4381_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_akm4xxx = type { i32, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_akm4xxx*, i32)* @ak4381_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ak4381_reset(%struct.snd_akm4xxx* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_akm4xxx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.snd_akm4xxx* %0, %struct.snd_akm4xxx** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %47, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %10 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sdiv i32 %11, 2
  %13 = icmp ult i32 %8, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %7
  %15 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 12, i32 15
  %21 = call i32 @snd_akm4xxx_write(%struct.snd_akm4xxx* %15, i32 %16, i8 zeroext 0, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %47

25:                                               ; preds = %14
  store i8 1, i8* %6, align 1
  br label %26

26:                                               ; preds = %43, %25
  %27 = load i8, i8* %6, align 1
  %28 = zext i8 %27 to i32
  %29 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %30 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %29, i32 0, i32 1
  %31 = load i8, i8* %30, align 4
  %32 = zext i8 %31 to i32
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %26
  %35 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i8, i8* %6, align 1
  %38 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i8, i8* %6, align 1
  %41 = call i32 @snd_akm4xxx_get(%struct.snd_akm4xxx* %38, i32 %39, i8 zeroext %40)
  %42 = call i32 @snd_akm4xxx_write(%struct.snd_akm4xxx* %35, i32 %36, i8 zeroext %37, i32 %41)
  br label %43

43:                                               ; preds = %34
  %44 = load i8, i8* %6, align 1
  %45 = add i8 %44, 1
  store i8 %45, i8* %6, align 1
  br label %26

46:                                               ; preds = %26
  br label %47

47:                                               ; preds = %46, %24
  %48 = load i32, i32* %5, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %7

50:                                               ; preds = %7
  ret void
}

declare dso_local i32 @snd_akm4xxx_write(%struct.snd_akm4xxx*, i32, i8 zeroext, i32) #1

declare dso_local i32 @snd_akm4xxx_get(%struct.snd_akm4xxx*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
