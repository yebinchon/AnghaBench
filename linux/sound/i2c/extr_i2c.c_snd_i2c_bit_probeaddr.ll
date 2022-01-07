; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/extr_i2c.c_snd_i2c_bit_probeaddr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/extr_i2c.c_snd_i2c_bit_probeaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_i2c_bus = type { i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_i2c_bus*, i16)* @snd_i2c_bit_probeaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_i2c_bit_probeaddr(%struct.snd_i2c_bus* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_i2c_bus*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store %struct.snd_i2c_bus* %0, %struct.snd_i2c_bus** %4, align 8
  store i16 %1, i16* %5, align 2
  %7 = load i16, i16* %5, align 2
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 32768
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load i16, i16* %5, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 32640
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %34

22:                                               ; preds = %14
  %23 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %4, align 8
  %24 = call i32 @snd_i2c_bit_start(%struct.snd_i2c_bus* %23)
  %25 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %4, align 8
  %26 = load i16, i16* %5, align 2
  %27 = zext i16 %26 to i32
  %28 = shl i32 %27, 1
  %29 = trunc i32 %28 to i16
  %30 = call i32 @snd_i2c_bit_sendbyte(%struct.snd_i2c_bus* %25, i16 zeroext %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %4, align 8
  %32 = call i32 @snd_i2c_bit_stop(%struct.snd_i2c_bus* %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %22, %19, %11
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @snd_i2c_bit_start(%struct.snd_i2c_bus*) #1

declare dso_local i32 @snd_i2c_bit_sendbyte(%struct.snd_i2c_bus*, i16 zeroext) #1

declare dso_local i32 @snd_i2c_bit_stop(%struct.snd_i2c_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
