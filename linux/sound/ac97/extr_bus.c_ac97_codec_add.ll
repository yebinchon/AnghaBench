; ModuleID = '/home/carl/AnghaBench/linux/sound/ac97/extr_bus.c_ac97_codec_add.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ac97/extr_bus.c_ac97_codec_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_controller = type { i32, i32, %struct.ac97_codec_device** }
%struct.ac97_codec_device = type { i32, i32, %struct.TYPE_5__, %struct.ac97_controller* }
%struct.TYPE_5__ = type { i32, i32*, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ac97_codec_release = common dso_local global i32 0, align 4
@ac97_bus_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ac97_controller*, i32, i32)* @ac97_codec_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac97_codec_add(%struct.ac97_controller* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ac97_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ac97_codec_device*, align 8
  %9 = alloca i32, align 4
  store %struct.ac97_controller* %0, %struct.ac97_controller** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ac97_codec_device* @kzalloc(i32 48, i32 %10)
  store %struct.ac97_codec_device* %11, %struct.ac97_codec_device** %8, align 8
  %12 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %8, align 8
  %13 = icmp ne %struct.ac97_codec_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %75

17:                                               ; preds = %3
  %18 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %8, align 8
  %19 = load %struct.ac97_controller*, %struct.ac97_controller** %5, align 8
  %20 = getelementptr inbounds %struct.ac97_controller, %struct.ac97_controller* %19, i32 0, i32 2
  %21 = load %struct.ac97_codec_device**, %struct.ac97_codec_device*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ac97_codec_device*, %struct.ac97_codec_device** %21, i64 %23
  store %struct.ac97_codec_device* %18, %struct.ac97_codec_device** %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %8, align 8
  %27 = getelementptr inbounds %struct.ac97_codec_device, %struct.ac97_codec_device* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @ac97_codec_release, align 4
  %29 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %8, align 8
  %30 = getelementptr inbounds %struct.ac97_codec_device, %struct.ac97_codec_device* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 8
  %32 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %8, align 8
  %33 = getelementptr inbounds %struct.ac97_codec_device, %struct.ac97_codec_device* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  store i32* @ac97_bus_type, i32** %34, align 8
  %35 = load %struct.ac97_controller*, %struct.ac97_controller** %5, align 8
  %36 = getelementptr inbounds %struct.ac97_controller, %struct.ac97_controller* %35, i32 0, i32 1
  %37 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %8, align 8
  %38 = getelementptr inbounds %struct.ac97_codec_device, %struct.ac97_codec_device* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i32* %36, i32** %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %8, align 8
  %42 = getelementptr inbounds %struct.ac97_codec_device, %struct.ac97_codec_device* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ac97_controller*, %struct.ac97_controller** %5, align 8
  %44 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %8, align 8
  %45 = getelementptr inbounds %struct.ac97_codec_device, %struct.ac97_codec_device* %44, i32 0, i32 3
  store %struct.ac97_controller* %43, %struct.ac97_controller** %45, align 8
  %46 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %8, align 8
  %47 = getelementptr inbounds %struct.ac97_codec_device, %struct.ac97_codec_device* %46, i32 0, i32 2
  %48 = call i32 @device_initialize(%struct.TYPE_5__* %47)
  %49 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %8, align 8
  %50 = getelementptr inbounds %struct.ac97_codec_device, %struct.ac97_codec_device* %49, i32 0, i32 2
  %51 = load %struct.ac97_controller*, %struct.ac97_controller** %5, align 8
  %52 = getelementptr inbounds %struct.ac97_controller, %struct.ac97_controller* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_name(i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @dev_set_name(%struct.TYPE_5__* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load %struct.ac97_controller*, %struct.ac97_controller** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @ac97_of_get_child_device(%struct.ac97_controller* %57, i32 %58, i32 %59)
  %61 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %8, align 8
  %62 = getelementptr inbounds %struct.ac97_codec_device, %struct.ac97_codec_device* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %8, align 8
  %65 = getelementptr inbounds %struct.ac97_codec_device, %struct.ac97_codec_device* %64, i32 0, i32 2
  %66 = call i32 @device_add(%struct.TYPE_5__* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %17
  %70 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %8, align 8
  %71 = getelementptr inbounds %struct.ac97_codec_device, %struct.ac97_codec_device* %70, i32 0, i32 2
  %72 = call i32 @put_device(%struct.TYPE_5__* %71)
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %4, align 4
  br label %75

74:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %69, %14
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.ac97_codec_device* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @ac97_of_get_child_device(%struct.ac97_controller*, i32, i32) #1

declare dso_local i32 @device_add(%struct.TYPE_5__*) #1

declare dso_local i32 @put_device(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
