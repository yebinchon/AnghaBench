; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/extr_i2c.c_snd_i2c_bit_readbytes.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/extr_i2c.c_snd_i2c_bit_readbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_i2c_device = type { i32, i32, %struct.snd_i2c_bus* }
%struct.snd_i2c_bus = type { i32 }

@SND_I2C_DEVICE_ADDRTEN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_i2c_device*, i8*, i32)* @snd_i2c_bit_readbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_i2c_bit_readbytes(%struct.snd_i2c_device* %0, i8* %1, i32 %2) #0 {
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
  br label %67

23:                                               ; preds = %3
  %24 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %8, align 8
  %25 = call i32 @snd_i2c_bit_start(%struct.snd_i2c_bus* %24)
  %26 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %8, align 8
  %27 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %5, align 8
  %28 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 1
  %31 = or i32 %30, 1
  %32 = call i32 @snd_i2c_bit_sendbyte(%struct.snd_i2c_bus* %26, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %8, align 8
  %37 = call i32 @snd_i2c_bit_hw_stop(%struct.snd_i2c_bus* %36)
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %67

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %56, %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %7, align 4
  %43 = icmp sgt i32 %41, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %8, align 8
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @snd_i2c_bit_readbyte(%struct.snd_i2c_bus* %45, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %8, align 8
  %54 = call i32 @snd_i2c_bit_hw_stop(%struct.snd_i2c_bus* %53)
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %67

56:                                               ; preds = %44
  %57 = load i32, i32* %9, align 4
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %6, align 8
  store i8 %58, i8* %59, align 1
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %40

63:                                               ; preds = %40
  %64 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %8, align 8
  %65 = call i32 @snd_i2c_bit_stop(%struct.snd_i2c_bus* %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %52, %35, %20
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @snd_i2c_bit_start(%struct.snd_i2c_bus*) #1

declare dso_local i32 @snd_i2c_bit_sendbyte(%struct.snd_i2c_bus*, i32) #1

declare dso_local i32 @snd_i2c_bit_hw_stop(%struct.snd_i2c_bus*) #1

declare dso_local i32 @snd_i2c_bit_readbyte(%struct.snd_i2c_bus*, i32) #1

declare dso_local i32 @snd_i2c_bit_stop(%struct.snd_i2c_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
