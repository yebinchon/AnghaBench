; ModuleID = '/home/carl/AnghaBench/linux/sound/ac97/extr_bus.c_ac97_bus_match.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ac97/extr_bus.c_ac97_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.ac97_codec_device = type { i32 }
%struct.ac97_codec_driver = type { %struct.ac97_id* }
%struct.ac97_id = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @ac97_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac97_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.ac97_codec_device*, align 8
  %7 = alloca %struct.ac97_codec_driver*, align 8
  %8 = alloca %struct.ac97_id*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.ac97_codec_device* @to_ac97_device(%struct.device* %10)
  store %struct.ac97_codec_device* %11, %struct.ac97_codec_device** %6, align 8
  %12 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %13 = call %struct.ac97_codec_driver* @to_ac97_driver(%struct.device_driver* %12)
  store %struct.ac97_codec_driver* %13, %struct.ac97_codec_driver** %7, align 8
  %14 = load %struct.ac97_codec_driver*, %struct.ac97_codec_driver** %7, align 8
  %15 = getelementptr inbounds %struct.ac97_codec_driver, %struct.ac97_codec_driver* %14, i32 0, i32 0
  %16 = load %struct.ac97_id*, %struct.ac97_id** %15, align 8
  store %struct.ac97_id* %16, %struct.ac97_id** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %6, align 8
  %18 = getelementptr inbounds %struct.ac97_codec_device, %struct.ac97_codec_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %6, align 8
  %23 = getelementptr inbounds %struct.ac97_codec_device, %struct.ac97_codec_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %2
  store i32 0, i32* %3, align 4
  br label %58

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %48, %27
  %29 = load %struct.ac97_id*, %struct.ac97_id** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ac97_id, %struct.ac97_id* %29, i64 %31
  %33 = getelementptr inbounds %struct.ac97_id, %struct.ac97_id* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %6, align 8
  %36 = getelementptr inbounds %struct.ac97_codec_device, %struct.ac97_codec_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ac97_id*, %struct.ac97_id** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ac97_id, %struct.ac97_id* %38, i64 %40
  %42 = getelementptr inbounds %struct.ac97_id, %struct.ac97_id* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @ac97_ids_match(i32 %34, i32 %37, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %58

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.ac97_id*, %struct.ac97_id** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds %struct.ac97_id, %struct.ac97_id* %49, i64 %52
  %54 = getelementptr inbounds %struct.ac97_id, %struct.ac97_id* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %28, label %57

57:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %46, %26
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.ac97_codec_device* @to_ac97_device(%struct.device*) #1

declare dso_local %struct.ac97_codec_driver* @to_ac97_driver(%struct.device_driver*) #1

declare dso_local i64 @ac97_ids_match(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
