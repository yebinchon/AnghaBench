; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_dev_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_dev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_device = type { %struct.snd_ac97* }
%struct.snd_ac97 = type { %struct.TYPE_7__, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@ac97_bus_type = common dso_local global i32 0, align 4
@ac97_device_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%d-%d:%s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Can't register ac97 bus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_device*)* @snd_ac97_dev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ac97_dev_register(%struct.snd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_device*, align 8
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_device* %0, %struct.snd_device** %3, align 8
  %6 = load %struct.snd_device*, %struct.snd_device** %3, align 8
  %7 = getelementptr inbounds %struct.snd_device, %struct.snd_device* %6, i32 0, i32 0
  %8 = load %struct.snd_ac97*, %struct.snd_ac97** %7, align 8
  store %struct.snd_ac97* %8, %struct.snd_ac97** %4, align 8
  %9 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %10 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32* @ac97_bus_type, i32** %11, align 8
  %12 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %13 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %20 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @ac97_device_release, align 4
  %23 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %24 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 8
  %26 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %27 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %26, i32 0, i32 0
  %28 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %29 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %39 = call i32 @snd_ac97_get_short_name(%struct.snd_ac97* %38)
  %40 = call i32 @dev_set_name(%struct.TYPE_7__* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37, i32 %39)
  %41 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %42 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %41, i32 0, i32 0
  %43 = call i32 @device_register(%struct.TYPE_7__* %42)
  store i32 %43, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %1
  %46 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %47 = call i32 @ac97_err(%struct.snd_ac97* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %49 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32* null, i32** %50, align 8
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %53

52:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %45
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @dev_set_name(%struct.TYPE_7__*, i8*, i32, i32, i32) #1

declare dso_local i32 @snd_ac97_get_short_name(%struct.snd_ac97*) #1

declare dso_local i32 @device_register(%struct.TYPE_7__*) #1

declare dso_local i32 @ac97_err(%struct.snd_ac97*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
