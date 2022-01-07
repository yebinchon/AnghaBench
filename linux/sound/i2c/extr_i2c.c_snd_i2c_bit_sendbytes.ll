; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/extr_i2c.c_snd_i2c_bit_sendbytes.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/extr_i2c.c_snd_i2c_bit_sendbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_i2c_device = type { i32, i32, %struct.snd_i2c_bus* }
%struct.snd_i2c_bus = type { i32 }

@SND_I2C_DEVICE_ADDRTEN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_i2c_device*, i8*, i32)* @snd_i2c_bit_sendbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_i2c_bit_sendbytes(%struct.snd_i2c_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_i2c_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_i2c_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_i2c_device* %0, %struct.snd_i2c_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %5, align 8
  %12 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %11, i32 0, i32 2
  %13 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %12, align 8
  store %struct.snd_i2c_bus* %13, %struct.snd_i2c_bus** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %5, align 8
  %15 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SND_I2C_DEVICE_ADDRTEN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %63

23:                                               ; preds = %3
  %24 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %8, align 8
  %25 = call i32 @snd_i2c_bit_start(%struct.snd_i2c_bus* %24)
  %26 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %8, align 8
  %27 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %5, align 8
  %28 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 1
  %31 = call i32 @snd_i2c_bit_sendbyte(%struct.snd_i2c_bus* %26, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %8, align 8
  %36 = call i32 @snd_i2c_bit_hw_stop(%struct.snd_i2c_bus* %35)
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %63

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %56, %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %7, align 4
  %42 = icmp sgt i32 %40, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %8, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %6, align 8
  %47 = load i8, i8* %45, align 1
  %48 = zext i8 %47 to i32
  %49 = call i32 @snd_i2c_bit_sendbyte(%struct.snd_i2c_bus* %44, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %8, align 8
  %54 = call i32 @snd_i2c_bit_hw_stop(%struct.snd_i2c_bus* %53)
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %63

56:                                               ; preds = %43
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %39

59:                                               ; preds = %39
  %60 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %8, align 8
  %61 = call i32 @snd_i2c_bit_stop(%struct.snd_i2c_bus* %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %52, %34, %20
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @snd_i2c_bit_start(%struct.snd_i2c_bus*) #1

declare dso_local i32 @snd_i2c_bit_sendbyte(%struct.snd_i2c_bus*, i32) #1

declare dso_local i32 @snd_i2c_bit_hw_stop(%struct.snd_i2c_bus*) #1

declare dso_local i32 @snd_i2c_bit_stop(%struct.snd_i2c_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
