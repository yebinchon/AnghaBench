; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-ac97.c_snd_soc_alloc_ac97_component.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-ac97.c_snd_soc_alloc_ac97_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.TYPE_7__, i64, i32* }
%struct.TYPE_7__ = type { i32, i32, i32* }
%struct.snd_soc_component = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@soc_ac97_bus = common dso_local global i32 0, align 4
@ac97_bus_type = common dso_local global i32 0, align 4
@soc_ac97_device_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%d-%d:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_ac97* @snd_soc_alloc_ac97_component(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_ac97*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.snd_ac97* @kzalloc(i32 32, i32 %5)
  store %struct.snd_ac97* %6, %struct.snd_ac97** %4, align 8
  %7 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %8 = icmp eq %struct.snd_ac97* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.snd_ac97* @ERR_PTR(i32 %11)
  store %struct.snd_ac97* %12, %struct.snd_ac97** %2, align 8
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %15 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %14, i32 0, i32 2
  store i32* @soc_ac97_bus, i32** %15, align 8
  %16 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %17 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %19 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  store i32* @ac97_bus_type, i32** %20, align 8
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %22 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %27 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @soc_ac97_device_release, align 4
  %30 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %31 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %34 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %33, i32 0, i32 0
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %36 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %43 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_set_name(%struct.TYPE_7__* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %41, i32 0, i32 %44)
  %46 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %47 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %46, i32 0, i32 0
  %48 = call i32 @device_initialize(%struct.TYPE_7__* %47)
  %49 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  store %struct.snd_ac97* %49, %struct.snd_ac97** %2, align 8
  br label %50

50:                                               ; preds = %13, %9
  %51 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  ret %struct.snd_ac97* %51
}

declare dso_local %struct.snd_ac97* @kzalloc(i32, i32) #1

declare dso_local %struct.snd_ac97* @ERR_PTR(i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_7__*, i8*, i32, i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
