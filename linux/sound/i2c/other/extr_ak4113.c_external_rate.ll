; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4113.c_external_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4113.c_external_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AK4113_FS0 = common dso_local global i8 0, align 1
@AK4113_FS1 = common dso_local global i8 0, align 1
@AK4113_FS2 = common dso_local global i8 0, align 1
@AK4113_FS3 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @external_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @external_rate(i8 zeroext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = zext i8 %4 to i32
  %6 = load i8, i8* @AK4113_FS0, align 1
  %7 = zext i8 %6 to i32
  %8 = load i8, i8* @AK4113_FS1, align 1
  %9 = zext i8 %8 to i32
  %10 = or i32 %7, %9
  %11 = load i8, i8* @AK4113_FS2, align 1
  %12 = zext i8 %11 to i32
  %13 = or i32 %10, %12
  %14 = load i8, i8* @AK4113_FS3, align 1
  %15 = zext i8 %14 to i32
  %16 = or i32 %13, %15
  %17 = and i32 %5, %16
  switch i32 %17, label %31 [
    i32 130, label %18
    i32 140, label %19
    i32 139, label %20
    i32 136, label %21
    i32 135, label %22
    i32 134, label %23
    i32 133, label %24
    i32 132, label %25
    i32 131, label %26
    i32 129, label %27
    i32 128, label %28
    i32 138, label %29
    i32 137, label %30
  ]

18:                                               ; preds = %1
  store i32 8000, i32* %2, align 4
  br label %32

19:                                               ; preds = %1
  store i32 11025, i32* %2, align 4
  br label %32

20:                                               ; preds = %1
  store i32 16000, i32* %2, align 4
  br label %32

21:                                               ; preds = %1
  store i32 22050, i32* %2, align 4
  br label %32

22:                                               ; preds = %1
  store i32 24000, i32* %2, align 4
  br label %32

23:                                               ; preds = %1
  store i32 32000, i32* %2, align 4
  br label %32

24:                                               ; preds = %1
  store i32 44100, i32* %2, align 4
  br label %32

25:                                               ; preds = %1
  store i32 48000, i32* %2, align 4
  br label %32

26:                                               ; preds = %1
  store i32 64000, i32* %2, align 4
  br label %32

27:                                               ; preds = %1
  store i32 88200, i32* %2, align 4
  br label %32

28:                                               ; preds = %1
  store i32 96000, i32* %2, align 4
  br label %32

29:                                               ; preds = %1
  store i32 176400, i32* %2, align 4
  br label %32

30:                                               ; preds = %1
  store i32 192000, i32* %2, align 4
  br label %32

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
