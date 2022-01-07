; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_mts64.c_mts64_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_mts64.c_mts64_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32 }

@MTS64_CMD_RESET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parport*)* @mts64_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mts64_device_init(%struct.parport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parport*, align 8
  %4 = alloca i32, align 4
  store %struct.parport* %0, %struct.parport** %3, align 8
  %5 = load %struct.parport*, %struct.parport** %3, align 8
  %6 = load i32, i32* @MTS64_CMD_RESET, align 4
  %7 = call i32 @mts64_write_command(%struct.parport* %5, i32 %6)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %20, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 64
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = call i32 @msleep(i32 100)
  %13 = load %struct.parport*, %struct.parport** %3, align 8
  %14 = call i64 @mts64_probe(%struct.parport* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.parport*, %struct.parport** %3, align 8
  %18 = call i32 @mts64_disable_readout(%struct.parport* %17)
  store i32 0, i32* %2, align 4
  br label %28

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %8

23:                                               ; preds = %8
  %24 = load %struct.parport*, %struct.parport** %3, align 8
  %25 = call i32 @mts64_disable_readout(%struct.parport* %24)
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %23, %16
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @mts64_write_command(%struct.parport*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @mts64_probe(%struct.parport*) #1

declare dso_local i32 @mts64_disable_readout(%struct.parport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
