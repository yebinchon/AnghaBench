; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/extr_i2c.c_snd_i2c_bit_hw_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/extr_i2c.c_snd_i2c_bit_hw_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_i2c_bus = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.snd_i2c_bus*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_i2c_bus*)* @snd_i2c_bit_hw_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_i2c_bit_hw_start(%struct.snd_i2c_bus* %0) #0 {
  %2 = alloca %struct.snd_i2c_bus*, align 8
  store %struct.snd_i2c_bus* %0, %struct.snd_i2c_bus** %2, align 8
  %3 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %2, align 8
  %4 = getelementptr inbounds %struct.snd_i2c_bus, %struct.snd_i2c_bus* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32 (%struct.snd_i2c_bus*)*, i32 (%struct.snd_i2c_bus*)** %7, align 8
  %9 = icmp ne i32 (%struct.snd_i2c_bus*)* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %2, align 8
  %12 = getelementptr inbounds %struct.snd_i2c_bus, %struct.snd_i2c_bus* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (%struct.snd_i2c_bus*)*, i32 (%struct.snd_i2c_bus*)** %15, align 8
  %17 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %2, align 8
  %18 = call i32 %16(%struct.snd_i2c_bus* %17)
  br label %19

19:                                               ; preds = %10, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
