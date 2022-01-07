; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_device.c_snd_hdac_make_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_device.c_snd_hdac_make_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"out of range cmd %x:%x:%x:%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_device*, i32, i32, i32)* @snd_hdac_make_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdac_make_cmd(%struct.hdac_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdac_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %13 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = and i32 %15, -16
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, -128
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, -4096
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, -65536
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26, %22, %18, %4
  %31 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %32 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %31, i32 0, i32 1
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %35, i32 %36)
  store i32 -1, i32* %5, align 4
  br label %53

38:                                               ; preds = %26
  %39 = load i32, i32* %11, align 4
  %40 = shl i32 %39, 28
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 %41, 20
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %8, align 4
  %46 = shl i32 %45, 8
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %38, %30
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
