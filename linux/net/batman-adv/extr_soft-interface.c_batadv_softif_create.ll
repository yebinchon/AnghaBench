; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_soft-interface.c_batadv_softif_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_soft-interface.c_batadv_softif_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.net = type { i32 }

@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@batadv_softif_init_early = common dso_local global i32 0, align 4
@batadv_link_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Unable to register the batman interface '%s': %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @batadv_softif_create(%struct.net* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %10 = load i32, i32* @batadv_softif_init_early, align 4
  %11 = call %struct.net_device* @alloc_netdev(i32 4, i8* %8, i32 %9, i32 %10)
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.net_device* null, %struct.net_device** %3, align 8
  br label %33

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = load %struct.net*, %struct.net** %4, align 8
  %18 = call i32 @dev_net_set(%struct.net_device* %16, %struct.net* %17)
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  store i32* @batadv_link_ops, i32** %20, align 8
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = call i32 @register_netdevice(%struct.net_device* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %15
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %27)
  %29 = load %struct.net_device*, %struct.net_device** %6, align 8
  %30 = call i32 @free_netdev(%struct.net_device* %29)
  store %struct.net_device* null, %struct.net_device** %3, align 8
  br label %33

31:                                               ; preds = %15
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %32, %struct.net_device** %3, align 8
  br label %33

33:                                               ; preds = %31, %25, %14
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  ret %struct.net_device* %34
}

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_net_set(%struct.net_device*, %struct.net*) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @pr_err(i8*, i8*, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
