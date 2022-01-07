; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_device.c___snd_device_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_device.c___snd_device_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_device = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 (%struct.snd_device*)* }

@.str = private unnamed_addr constant [21 x i8] c"device free failure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_device*)* @__snd_device_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__snd_device_free(%struct.snd_device* %0) #0 {
  %2 = alloca %struct.snd_device*, align 8
  store %struct.snd_device* %0, %struct.snd_device** %2, align 8
  %3 = load %struct.snd_device*, %struct.snd_device** %2, align 8
  %4 = getelementptr inbounds %struct.snd_device, %struct.snd_device* %3, i32 0, i32 2
  %5 = call i32 @list_del(i32* %4)
  %6 = load %struct.snd_device*, %struct.snd_device** %2, align 8
  %7 = call i32 @__snd_device_disconnect(%struct.snd_device* %6)
  %8 = load %struct.snd_device*, %struct.snd_device** %2, align 8
  %9 = getelementptr inbounds %struct.snd_device, %struct.snd_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64 (%struct.snd_device*)*, i64 (%struct.snd_device*)** %11, align 8
  %13 = icmp ne i64 (%struct.snd_device*)* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load %struct.snd_device*, %struct.snd_device** %2, align 8
  %16 = getelementptr inbounds %struct.snd_device, %struct.snd_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64 (%struct.snd_device*)*, i64 (%struct.snd_device*)** %18, align 8
  %20 = load %struct.snd_device*, %struct.snd_device** %2, align 8
  %21 = call i64 %19(%struct.snd_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load %struct.snd_device*, %struct.snd_device** %2, align 8
  %25 = getelementptr inbounds %struct.snd_device, %struct.snd_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %23, %14
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.snd_device*, %struct.snd_device** %2, align 8
  %33 = call i32 @kfree(%struct.snd_device* %32)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @__snd_device_disconnect(%struct.snd_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @kfree(%struct.snd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
