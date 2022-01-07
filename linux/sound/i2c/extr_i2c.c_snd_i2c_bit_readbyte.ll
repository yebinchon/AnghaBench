; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/extr_i2c.c_snd_i2c_bit_readbyte.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/extr_i2c.c_snd_i2c_bit_readbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_i2c_bus = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_i2c_bus*, i32)* @snd_i2c_bit_readbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_i2c_bit_readbyte(%struct.snd_i2c_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_i2c_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.snd_i2c_bus* %0, %struct.snd_i2c_bus** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8 0, i8* %6, align 1
  %7 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %3, align 8
  %8 = call i32 @snd_i2c_bit_set(%struct.snd_i2c_bus* %7, i32 0, i32 1)
  %9 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %3, align 8
  %10 = call i32 @snd_i2c_bit_direction(%struct.snd_i2c_bus* %9, i32 1, i32 0)
  store i32 7, i32* %5, align 4
  br label %11

11:                                               ; preds = %30, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %3, align 8
  %16 = call i32 @snd_i2c_bit_set(%struct.snd_i2c_bus* %15, i32 1, i32 1)
  %17 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %3, align 8
  %18 = call i64 @snd_i2c_bit_data(%struct.snd_i2c_bus* %17, i32 0)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 1, %21
  %23 = load i8, i8* %6, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %24, %22
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %6, align 1
  br label %27

27:                                               ; preds = %20, %14
  %28 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %3, align 8
  %29 = call i32 @snd_i2c_bit_set(%struct.snd_i2c_bus* %28, i32 0, i32 1)
  br label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %5, align 4
  br label %11

33:                                               ; preds = %11
  %34 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %3, align 8
  %35 = call i32 @snd_i2c_bit_direction(%struct.snd_i2c_bus* %34, i32 1, i32 1)
  %36 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @snd_i2c_bit_send(%struct.snd_i2c_bus* %36, i32 %41)
  %43 = load i8, i8* %6, align 1
  %44 = zext i8 %43 to i32
  ret i32 %44
}

declare dso_local i32 @snd_i2c_bit_set(%struct.snd_i2c_bus*, i32, i32) #1

declare dso_local i32 @snd_i2c_bit_direction(%struct.snd_i2c_bus*, i32, i32) #1

declare dso_local i64 @snd_i2c_bit_data(%struct.snd_i2c_bus*, i32) #1

declare dso_local i32 @snd_i2c_bit_send(%struct.snd_i2c_bus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
