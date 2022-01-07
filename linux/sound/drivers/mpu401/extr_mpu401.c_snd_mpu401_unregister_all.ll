; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/mpu401/extr_mpu401.c_snd_mpu401_unregister_all.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/mpu401/extr_mpu401.c_snd_mpu401_unregister_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pnp_registered = common dso_local global i64 0, align 8
@snd_mpu401_pnp_driver = common dso_local global i32 0, align 4
@platform_devices = common dso_local global i32* null, align 8
@snd_mpu401_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @snd_mpu401_unregister_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mpu401_unregister_all() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @pnp_registered, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @pnp_unregister_driver(i32* @snd_mpu401_pnp_driver)
  br label %6

6:                                                ; preds = %4, %0
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %19, %6
  %8 = load i32, i32* %1, align 4
  %9 = load i32*, i32** @platform_devices, align 8
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = load i32*, i32** @platform_devices, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @platform_device_unregister(i32 %17)
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %7

22:                                               ; preds = %7
  %23 = call i32 @platform_driver_unregister(i32* @snd_mpu401_driver)
  ret void
}

declare dso_local i32 @pnp_unregister_driver(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @platform_device_unregister(i32) #1

declare dso_local i32 @platform_driver_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
