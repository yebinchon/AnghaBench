; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_revo.c_revo51_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_revo.c_revo51_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.TYPE_5__*, i32, %struct.revo51_spec* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.snd_ice1712* }
%struct.TYPE_4__ = type { i32* }
%struct.revo51_spec = type { %struct.snd_pt2258*, i32 }
%struct.snd_pt2258 = type { i32, %struct.TYPE_5__*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ICE1724 GPIO6\00", align 1
@revo51_bit_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"PT2258\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*, %struct.snd_pt2258*)* @revo51_i2c_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @revo51_i2c_init(%struct.snd_ice1712* %0, %struct.snd_pt2258* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca %struct.snd_pt2258*, align 8
  %6 = alloca %struct.revo51_spec*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store %struct.snd_pt2258* %1, %struct.snd_pt2258** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.revo51_spec* @kzalloc(i32 16, i32 %8)
  store %struct.revo51_spec* %9, %struct.revo51_spec** %6, align 8
  %10 = load %struct.revo51_spec*, %struct.revo51_spec** %6, align 8
  %11 = icmp ne %struct.revo51_spec* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %71

15:                                               ; preds = %2
  %16 = load %struct.revo51_spec*, %struct.revo51_spec** %6, align 8
  %17 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %18 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %17, i32 0, i32 2
  store %struct.revo51_spec* %16, %struct.revo51_spec** %18, align 8
  %19 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %20 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %23 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %22, i32 0, i32 0
  %24 = call i32 @snd_i2c_bus_create(i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* null, %struct.TYPE_5__** %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %71

29:                                               ; preds = %15
  %30 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %31 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %32 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store %struct.snd_ice1712* %30, %struct.snd_ice1712** %34, align 8
  %35 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32* @revo51_bit_ops, i32** %39, align 8
  %40 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %41 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load %struct.revo51_spec*, %struct.revo51_spec** %6, align 8
  %44 = getelementptr inbounds %struct.revo51_spec, %struct.revo51_spec* %43, i32 0, i32 1
  %45 = call i32 @snd_i2c_device_create(%struct.TYPE_5__* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 64, i32* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %29
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %71

50:                                               ; preds = %29
  %51 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %52 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.snd_pt2258*, %struct.snd_pt2258** %5, align 8
  %55 = getelementptr inbounds %struct.snd_pt2258, %struct.snd_pt2258* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %57 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load %struct.snd_pt2258*, %struct.snd_pt2258** %5, align 8
  %60 = getelementptr inbounds %struct.snd_pt2258, %struct.snd_pt2258* %59, i32 0, i32 1
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %60, align 8
  %61 = load %struct.revo51_spec*, %struct.revo51_spec** %6, align 8
  %62 = getelementptr inbounds %struct.revo51_spec, %struct.revo51_spec* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.snd_pt2258*, %struct.snd_pt2258** %5, align 8
  %65 = getelementptr inbounds %struct.snd_pt2258, %struct.snd_pt2258* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.snd_pt2258*, %struct.snd_pt2258** %5, align 8
  %67 = load %struct.revo51_spec*, %struct.revo51_spec** %6, align 8
  %68 = getelementptr inbounds %struct.revo51_spec, %struct.revo51_spec* %67, i32 0, i32 0
  store %struct.snd_pt2258* %66, %struct.snd_pt2258** %68, align 8
  %69 = load %struct.snd_pt2258*, %struct.snd_pt2258** %5, align 8
  %70 = call i32 @snd_pt2258_reset(%struct.snd_pt2258* %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %50, %48, %27, %12
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.revo51_spec* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_i2c_bus_create(i32, i8*, i32*, %struct.TYPE_5__**) #1

declare dso_local i32 @snd_i2c_device_create(%struct.TYPE_5__*, i8*, i32, i32*) #1

declare dso_local i32 @snd_pt2258_reset(%struct.snd_pt2258*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
