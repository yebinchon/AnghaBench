; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/extr_cs8427.c_snd_cs8427_select_corudata.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/extr_cs8427.c_snd_cs8427_select_corudata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_i2c_device = type { %struct.cs8427* }
%struct.cs8427 = type { i32* }

@CS8427_BSEL = common dso_local global i32 0, align 4
@CS8427_REG_CSDATABUF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_i2c_device*, i32)* @snd_cs8427_select_corudata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs8427_select_corudata(%struct.snd_i2c_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_i2c_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cs8427*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_i2c_device* %0, %struct.snd_i2c_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %4, align 8
  %9 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %8, i32 0, i32 0
  %10 = load %struct.cs8427*, %struct.cs8427** %9, align 8
  store %struct.cs8427* %10, %struct.cs8427** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @CS8427_BSEL, align 4
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 0, %15 ]
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.cs8427*, %struct.cs8427** %6, align 8
  %20 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @CS8427_REG_CSDATABUF, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %18, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %16
  %29 = load i32, i32* @CS8427_BSEL, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.cs8427*, %struct.cs8427** %6, align 8
  %32 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @CS8427_REG_CSDATABUF, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %30
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.cs8427*, %struct.cs8427** %6, align 8
  %40 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @CS8427_REG_CSDATABUF, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %38
  store i32 %45, i32* %43, align 4
  %46 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %4, align 8
  %47 = load i64, i64* @CS8427_REG_CSDATABUF, align 8
  %48 = load %struct.cs8427*, %struct.cs8427** %6, align 8
  %49 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @CS8427_REG_CSDATABUF, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @snd_cs8427_reg_write(%struct.snd_i2c_device* %46, i64 %47, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %28
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %61

59:                                               ; preds = %28
  br label %60

60:                                               ; preds = %59, %16
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %57
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @snd_cs8427_reg_write(%struct.snd_i2c_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
