; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/soundbus/i2sbus/extr_control.c_i2sbus_control_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/soundbus/i2sbus/extr_control.c_i2sbus_control_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macio_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2sbus_control = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2sbus_control_init(%struct.macio_dev* %0, %struct.i2sbus_control** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.macio_dev*, align 8
  %5 = alloca %struct.i2sbus_control**, align 8
  store %struct.macio_dev* %0, %struct.macio_dev** %4, align 8
  store %struct.i2sbus_control** %1, %struct.i2sbus_control*** %5, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.i2sbus_control* @kzalloc(i32 8, i32 %6)
  %8 = load %struct.i2sbus_control**, %struct.i2sbus_control*** %5, align 8
  store %struct.i2sbus_control* %7, %struct.i2sbus_control** %8, align 8
  %9 = load %struct.i2sbus_control**, %struct.i2sbus_control*** %5, align 8
  %10 = load %struct.i2sbus_control*, %struct.i2sbus_control** %9, align 8
  %11 = icmp ne %struct.i2sbus_control* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %28

15:                                               ; preds = %2
  %16 = load %struct.i2sbus_control**, %struct.i2sbus_control*** %5, align 8
  %17 = load %struct.i2sbus_control*, %struct.i2sbus_control** %16, align 8
  %18 = getelementptr inbounds %struct.i2sbus_control, %struct.i2sbus_control* %17, i32 0, i32 1
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %21 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.i2sbus_control**, %struct.i2sbus_control*** %5, align 8
  %26 = load %struct.i2sbus_control*, %struct.i2sbus_control** %25, align 8
  %27 = getelementptr inbounds %struct.i2sbus_control, %struct.i2sbus_control* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %15, %12
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.i2sbus_control* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
