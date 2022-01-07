; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/extr_i2c.c_snd_i2c_bus_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/extr_i2c.c_snd_i2c_bus_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_i2c_bus = type { {}*, i32, %struct.TYPE_3__, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.snd_i2c_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_i2c_bus*)* @snd_i2c_bus_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_i2c_bus_free(%struct.snd_i2c_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_i2c_bus*, align 8
  %4 = alloca %struct.snd_i2c_bus*, align 8
  %5 = alloca %struct.snd_i2c_device*, align 8
  store %struct.snd_i2c_bus* %0, %struct.snd_i2c_bus** %3, align 8
  %6 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %3, align 8
  %7 = icmp ne %struct.snd_i2c_bus* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @snd_BUG_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %74

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %22, %15
  %17 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %3, align 8
  %18 = getelementptr inbounds %struct.snd_i2c_bus, %struct.snd_i2c_bus* %17, i32 0, i32 4
  %19 = call i32 @list_empty(%struct.TYPE_3__* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %3, align 8
  %24 = getelementptr inbounds %struct.snd_i2c_bus, %struct.snd_i2c_bus* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.snd_i2c_device* @snd_i2c_device(i32 %26)
  store %struct.snd_i2c_device* %27, %struct.snd_i2c_device** %5, align 8
  %28 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %5, align 8
  %29 = call i32 @snd_i2c_device_free(%struct.snd_i2c_device* %28)
  br label %16

30:                                               ; preds = %16
  %31 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %3, align 8
  %32 = getelementptr inbounds %struct.snd_i2c_bus, %struct.snd_i2c_bus* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %3, align 8
  %37 = getelementptr inbounds %struct.snd_i2c_bus, %struct.snd_i2c_bus* %36, i32 0, i32 2
  %38 = call i32 @list_del(%struct.TYPE_3__* %37)
  br label %58

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %46, %39
  %41 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %3, align 8
  %42 = getelementptr inbounds %struct.snd_i2c_bus, %struct.snd_i2c_bus* %41, i32 0, i32 2
  %43 = call i32 @list_empty(%struct.TYPE_3__* %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %3, align 8
  %48 = getelementptr inbounds %struct.snd_i2c_bus, %struct.snd_i2c_bus* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.snd_i2c_bus* @snd_i2c_slave_bus(i32 %50)
  store %struct.snd_i2c_bus* %51, %struct.snd_i2c_bus** %4, align 8
  %52 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %3, align 8
  %53 = getelementptr inbounds %struct.snd_i2c_bus, %struct.snd_i2c_bus* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %4, align 8
  %56 = call i32 @snd_device_free(i32 %54, %struct.snd_i2c_bus* %55)
  br label %40

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57, %35
  %59 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %3, align 8
  %60 = getelementptr inbounds %struct.snd_i2c_bus, %struct.snd_i2c_bus* %59, i32 0, i32 0
  %61 = bitcast {}** %60 to i32 (%struct.snd_i2c_bus*)**
  %62 = load i32 (%struct.snd_i2c_bus*)*, i32 (%struct.snd_i2c_bus*)** %61, align 8
  %63 = icmp ne i32 (%struct.snd_i2c_bus*)* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %3, align 8
  %66 = getelementptr inbounds %struct.snd_i2c_bus, %struct.snd_i2c_bus* %65, i32 0, i32 0
  %67 = bitcast {}** %66 to i32 (%struct.snd_i2c_bus*)**
  %68 = load i32 (%struct.snd_i2c_bus*)*, i32 (%struct.snd_i2c_bus*)** %67, align 8
  %69 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %3, align 8
  %70 = call i32 %68(%struct.snd_i2c_bus* %69)
  br label %71

71:                                               ; preds = %64, %58
  %72 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %3, align 8
  %73 = call i32 @kfree(%struct.snd_i2c_bus* %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %71, %12
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @list_empty(%struct.TYPE_3__*) #1

declare dso_local %struct.snd_i2c_device* @snd_i2c_device(i32) #1

declare dso_local i32 @snd_i2c_device_free(%struct.snd_i2c_device*) #1

declare dso_local i32 @list_del(%struct.TYPE_3__*) #1

declare dso_local %struct.snd_i2c_bus* @snd_i2c_slave_bus(i32) #1

declare dso_local i32 @snd_device_free(i32, %struct.snd_i2c_bus*) #1

declare dso_local i32 @kfree(%struct.snd_i2c_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
