; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_ioctl.c_br_dev_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_ioctl.c_br_dev_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.net_bridge = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Bridge does not support ioctl 0x%x\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_dev_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_bridge*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.net_bridge* @netdev_priv(%struct.net_device* %9)
  store %struct.net_bridge* %10, %struct.net_bridge** %8, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %26 [
    i32 128, label %12
    i32 130, label %17
    i32 129, label %17
  ]

12:                                               ; preds = %3
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @old_dev_ioctl(%struct.net_device* %13, %struct.ifreq* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  br label %32

17:                                               ; preds = %3, %3
  %18 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  %19 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %20 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 130
  %24 = zext i1 %23 to i32
  %25 = call i32 @add_del_if(%struct.net_bridge* %18, i32 %21, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %32

26:                                               ; preds = %3
  %27 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @br_debug(%struct.net_bridge* %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %26, %17, %12
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.net_bridge* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @old_dev_ioctl(%struct.net_device*, %struct.ifreq*, i32) #1

declare dso_local i32 @add_del_if(%struct.net_bridge*, i32, i32) #1

declare dso_local i32 @br_debug(%struct.net_bridge*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
