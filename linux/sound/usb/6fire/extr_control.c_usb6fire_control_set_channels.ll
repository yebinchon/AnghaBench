; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/6fire/extr_control.c_usb6fire_control_set_channels.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/6fire/extr_control.c_usb6fire_control_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.control_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comm_runtime* }
%struct.comm_runtime = type { i32 (%struct.comm_runtime*, i32, i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.control_runtime*, i32, i32, i32, i32)* @usb6fire_control_set_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb6fire_control_set_channels(%struct.control_runtime* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.control_runtime*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.comm_runtime*, align 8
  store %struct.control_runtime* %0, %struct.control_runtime** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.control_runtime*, %struct.control_runtime** %7, align 8
  %15 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.comm_runtime*, %struct.comm_runtime** %17, align 8
  store %struct.comm_runtime* %18, %struct.comm_runtime** %13, align 8
  %19 = load %struct.comm_runtime*, %struct.comm_runtime** %13, align 8
  %20 = getelementptr inbounds %struct.comm_runtime, %struct.comm_runtime* %19, i32 0, i32 0
  %21 = load i32 (%struct.comm_runtime*, i32, i32, i32, i32)*, i32 (%struct.comm_runtime*, i32, i32, i32, i32)** %20, align 8
  %22 = load %struct.comm_runtime*, %struct.comm_runtime** %13, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sdiv i32 %23, 2
  %25 = shl i32 1, %24
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* %9, align 4
  %28 = sdiv i32 %27, 2
  %29 = shl i32 1, %28
  %30 = sub nsw i32 %29, 1
  %31 = call i32 %21(%struct.comm_runtime* %22, i32 2, i32 2, i32 %26, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %5
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %6, align 4
  br label %47

36:                                               ; preds = %5
  %37 = load %struct.comm_runtime*, %struct.comm_runtime** %13, align 8
  %38 = getelementptr inbounds %struct.comm_runtime, %struct.comm_runtime* %37, i32 0, i32 0
  %39 = load i32 (%struct.comm_runtime*, i32, i32, i32, i32)*, i32 (%struct.comm_runtime*, i32, i32, i32, i32)** %38, align 8
  %40 = load %struct.comm_runtime*, %struct.comm_runtime** %13, align 8
  %41 = call i32 %39(%struct.comm_runtime* %40, i32 2, i32 3, i32 0, i32 0)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %6, align 4
  br label %47

46:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %46, %44, %34
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
