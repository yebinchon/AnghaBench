; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_ct_20k2_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_ct_20k2_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32, i32 (i32, i32)* }

@GIP = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ct_20k2_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_20k2_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hw*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.hw*
  store %struct.hw* %9, %struct.hw** %6, align 8
  %10 = load %struct.hw*, %struct.hw** %6, align 8
  %11 = load i32, i32* @GIP, align 4
  %12 = call i32 @hw_read_20kx(%struct.hw* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @IRQ_NONE, align 4
  store i32 %16, i32* %3, align 4
  br label %37

17:                                               ; preds = %2
  %18 = load %struct.hw*, %struct.hw** %6, align 8
  %19 = getelementptr inbounds %struct.hw, %struct.hw* %18, i32 0, i32 1
  %20 = load i32 (i32, i32)*, i32 (i32, i32)** %19, align 8
  %21 = icmp ne i32 (i32, i32)* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.hw*, %struct.hw** %6, align 8
  %24 = getelementptr inbounds %struct.hw, %struct.hw* %23, i32 0, i32 1
  %25 = load i32 (i32, i32)*, i32 (i32, i32)** %24, align 8
  %26 = load %struct.hw*, %struct.hw** %6, align 8
  %27 = getelementptr inbounds %struct.hw, %struct.hw* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 %25(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %22, %17
  %32 = load %struct.hw*, %struct.hw** %6, align 8
  %33 = load i32, i32* @GIP, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @hw_write_20kx(%struct.hw* %32, i32 %33, i32 %34)
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @hw_read_20kx(%struct.hw*, i32) #1

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
