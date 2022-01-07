; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_delta.c_vx442_ak4524_set_rate_val.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_delta.c_vx442_ak4524_set_rate_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_akm4xxx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_akm4xxx*, i32)* @vx442_ak4524_set_rate_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx442_ak4524_set_rate_val(%struct.snd_akm4xxx* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_akm4xxx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.snd_akm4xxx* %0, %struct.snd_akm4xxx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ugt i32 %6, 48000
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i32 101, i32 96
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %5, align 1
  %11 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %12 = call zeroext i8 @snd_akm4xxx_get(%struct.snd_akm4xxx* %11, i32 0, i32 2)
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* %5, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %19 = call zeroext i8 @snd_akm4xxx_get(%struct.snd_akm4xxx* %18, i32 1, i32 2)
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* %5, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %17, %2
  %25 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %26 = call i32 @snd_akm4xxx_reset(%struct.snd_akm4xxx* %25, i32 1)
  %27 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %28 = load i8, i8* %5, align 1
  %29 = call i32 @snd_akm4xxx_write(%struct.snd_akm4xxx* %27, i32 0, i32 2, i8 zeroext %28)
  %30 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %31 = load i8, i8* %5, align 1
  %32 = call i32 @snd_akm4xxx_write(%struct.snd_akm4xxx* %30, i32 1, i32 2, i8 zeroext %31)
  %33 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %34 = call i32 @snd_akm4xxx_reset(%struct.snd_akm4xxx* %33, i32 0)
  br label %35

35:                                               ; preds = %24, %17
  ret void
}

declare dso_local zeroext i8 @snd_akm4xxx_get(%struct.snd_akm4xxx*, i32, i32) #1

declare dso_local i32 @snd_akm4xxx_reset(%struct.snd_akm4xxx*, i32) #1

declare dso_local i32 @snd_akm4xxx_write(%struct.snd_akm4xxx*, i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
