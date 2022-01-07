; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4xxx-adda.c_ak435X_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4xxx-adda.c_ak435X_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_akm4xxx = type { i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_akm4xxx*, i32)* @ak435X_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ak435X_reset(%struct.snd_akm4xxx* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_akm4xxx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.snd_akm4xxx* %0, %struct.snd_akm4xxx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %10 = call i32 @snd_akm4xxx_write(%struct.snd_akm4xxx* %9, i32 0, i32 1, i32 2)
  br label %39

11:                                               ; preds = %2
  store i8 0, i8* %5, align 1
  br label %12

12:                                               ; preds = %33, %11
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  %15 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %16 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %15, i32 0, i32 0
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %12
  %21 = load i8, i8* %5, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %26 = load i8, i8* %5, align 1
  %27 = zext i8 %26 to i32
  %28 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %29 = load i8, i8* %5, align 1
  %30 = call i32 @snd_akm4xxx_get(%struct.snd_akm4xxx* %28, i32 0, i8 zeroext %29)
  %31 = call i32 @snd_akm4xxx_write(%struct.snd_akm4xxx* %25, i32 0, i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %24, %20
  br label %33

33:                                               ; preds = %32
  %34 = load i8, i8* %5, align 1
  %35 = add i8 %34, 1
  store i8 %35, i8* %5, align 1
  br label %12

36:                                               ; preds = %12
  %37 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %38 = call i32 @snd_akm4xxx_write(%struct.snd_akm4xxx* %37, i32 0, i32 1, i32 1)
  br label %39

39:                                               ; preds = %36, %8
  ret void
}

declare dso_local i32 @snd_akm4xxx_write(%struct.snd_akm4xxx*, i32, i32, i32) #1

declare dso_local i32 @snd_akm4xxx_get(%struct.snd_akm4xxx*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
