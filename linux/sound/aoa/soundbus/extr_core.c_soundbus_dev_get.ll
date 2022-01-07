; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/soundbus/extr_core.c_soundbus_dev_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/soundbus/extr_core.c_soundbus_dev_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soundbus_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.soundbus_dev* @soundbus_dev_get(%struct.soundbus_dev* %0) #0 {
  %2 = alloca %struct.soundbus_dev*, align 8
  %3 = alloca %struct.soundbus_dev*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.soundbus_dev* %0, %struct.soundbus_dev** %3, align 8
  %5 = load %struct.soundbus_dev*, %struct.soundbus_dev** %3, align 8
  %6 = icmp ne %struct.soundbus_dev* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.soundbus_dev* null, %struct.soundbus_dev** %2, align 8
  br label %19

8:                                                ; preds = %1
  %9 = load %struct.soundbus_dev*, %struct.soundbus_dev** %3, align 8
  %10 = getelementptr inbounds %struct.soundbus_dev, %struct.soundbus_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call %struct.device* @get_device(i32* %11)
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = icmp ne %struct.device* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call %struct.soundbus_dev* @to_soundbus_device(%struct.device* %16)
  store %struct.soundbus_dev* %17, %struct.soundbus_dev** %2, align 8
  br label %19

18:                                               ; preds = %8
  store %struct.soundbus_dev* null, %struct.soundbus_dev** %2, align 8
  br label %19

19:                                               ; preds = %18, %15, %7
  %20 = load %struct.soundbus_dev*, %struct.soundbus_dev** %2, align 8
  ret %struct.soundbus_dev* %20
}

declare dso_local %struct.device* @get_device(i32*) #1

declare dso_local %struct.soundbus_dev* @to_soundbus_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
