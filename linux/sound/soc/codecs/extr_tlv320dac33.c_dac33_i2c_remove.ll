; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.tlv320dac33_priv = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @dac33_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac33_i2c_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.tlv320dac33_priv*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.tlv320dac33_priv* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.tlv320dac33_priv* %5, %struct.tlv320dac33_priv** %3, align 8
  %6 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %3, align 8
  %7 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %3, align 8
  %13 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dac33_hard_power(i32 %14, i32 0)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %3, align 8
  %18 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %3, align 8
  %23 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @gpio_free(i64 %24)
  br label %26

26:                                               ; preds = %21, %16
  ret i32 0
}

declare dso_local %struct.tlv320dac33_priv* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dac33_hard_power(i32, i32) #1

declare dso_local i32 @gpio_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
