; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_hdmi.c_hdmi_write_command.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_hdmi.c_hdmi_write_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*, i32, i32, i32*)* @hdmi_write_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_write_command(%struct.oxygen* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.oxygen*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %12 = call i32 @oxygen_write_uart(%struct.oxygen* %11, i32 251)
  %13 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %14 = call i32 @oxygen_write_uart(%struct.oxygen* %13, i32 239)
  %15 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @oxygen_write_uart(%struct.oxygen* %15, i32 %16)
  %18 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @oxygen_write_uart(%struct.oxygen* %18, i32 %19)
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %33, %4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @oxygen_write_uart(%struct.oxygen* %26, i32 %31)
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %21

36:                                               ; preds = %21
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 490, %37
  %39 = load i32, i32* %7, align 4
  %40 = add i32 %38, %39
  store i32 %40, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %53, %36
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %9, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %41

56:                                               ; preds = %41
  %57 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @oxygen_write_uart(%struct.oxygen* %57, i32 %58)
  ret void
}

declare dso_local i32 @oxygen_write_uart(%struct.oxygen*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
