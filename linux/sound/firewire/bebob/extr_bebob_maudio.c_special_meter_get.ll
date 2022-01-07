; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_maudio.c_special_meter_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_maudio.c_special_meter_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { i32 }

@special_meter_labels = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@METER_SIZE_SPECIAL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_bebob*, i32*, i32)* @special_meter_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @special_meter_get(%struct.snd_bebob* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_bebob*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_bebob* %0, %struct.snd_bebob** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @special_meter_labels, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = mul nsw i32 %14, 2
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32, i32* %11, align 4
  %19 = zext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %72

25:                                               ; preds = %3
  %26 = load i64, i64* @METER_SIZE_SPECIAL, align 8
  %27 = sub nsw i64 %26, 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32* @kmalloc(i64 %27, i32 %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %72

35:                                               ; preds = %25
  %36 = load %struct.snd_bebob*, %struct.snd_bebob** %5, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = bitcast i32* %37 to i8*
  %39 = load i64, i64* @METER_SIZE_SPECIAL, align 8
  %40 = sub nsw i64 %39, 4
  %41 = call i32 @get_meter(%struct.snd_bebob* %36, i8* %38, i64 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %68

45:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  store i32 2, i32* %10, align 4
  br label %46

46:                                               ; preds = %64, %45
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = add i32 %48, 2
  %50 = icmp ult i32 %47, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @be16_to_cpu(i32 %56)
  %58 = shl i32 %57, 16
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %9, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %9, align 4
  %62 = zext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32 %58, i32* %63, align 4
  br label %64

64:                                               ; preds = %51
  %65 = load i32, i32* %10, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %46

67:                                               ; preds = %46
  br label %68

68:                                               ; preds = %67, %44
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @kfree(i32* %69)
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %68, %32, %22
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @get_meter(%struct.snd_bebob*, i8*, i64) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
