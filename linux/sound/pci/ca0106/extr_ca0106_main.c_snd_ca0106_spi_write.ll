; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_spi_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_spi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ca0106 = type { i32 }

@SPI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ca0106_spi_write(%struct.snd_ca0106* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ca0106*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_ca0106* %0, %struct.snd_ca0106** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @SPI, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ugt i32 %13, 65535
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %70

16:                                               ; preds = %2
  %17 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @snd_ca0106_ptr_read(%struct.snd_ca0106* %17, i32 %18, i32 0)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %20, -262144
  %22 = or i32 %21, 131072
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, 65536
  store i32 %24, i32* %7, align 4
  %25 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %25, i32 %26, i32 0, i32 %29)
  %31 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @snd_ca0106_ptr_read(%struct.snd_ca0106* %31, i32 %32, i32 0)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %34, i32 %35, i32 0, i32 %38)
  store i32 1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %53, %16
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 100
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = call i32 @udelay(i32 10)
  %45 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @snd_ca0106_ptr_read(%struct.snd_ca0106* %45, i32 %46, i32 0)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 65536
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  br label %56

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %40

56:                                               ; preds = %51, %40
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %70

60:                                               ; preds = %56
  %61 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %61, i32 %62, i32 0, i32 %65)
  %67 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @snd_ca0106_ptr_read(%struct.snd_ca0106* %67, i32 %68, i32 0)
  store i32 %69, i32* %9, align 4
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %60, %59, %15
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @snd_ca0106_ptr_read(%struct.snd_ca0106*, i32, i32) #1

declare dso_local i32 @snd_ca0106_ptr_write(%struct.snd_ca0106*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
