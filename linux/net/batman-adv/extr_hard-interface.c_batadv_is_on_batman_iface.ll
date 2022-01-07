; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_is_on_batman_iface.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_is_on_batman_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.net = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Cannot find parent device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @batadv_is_on_batman_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_is_on_batman_iface(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.net* @dev_net(%struct.net_device* %8)
  store %struct.net* %9, %struct.net** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i64 @batadv_softif_is_valid(%struct.net_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %50

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i64 @dev_get_iflink(%struct.net_device* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i64 @dev_get_iflink(%struct.net_device* %19)
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %14
  store i32 0, i32* %2, align 4
  br label %50

26:                                               ; preds = %18
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = load %struct.net*, %struct.net** %4, align 8
  %29 = call %struct.net* @batadv_getlink_net(%struct.net_device* %27, %struct.net* %28)
  store %struct.net* %29, %struct.net** %6, align 8
  %30 = load %struct.net*, %struct.net** %6, align 8
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = call i64 @dev_get_iflink(%struct.net_device* %31)
  %33 = call %struct.net_device* @__dev_get_by_index(%struct.net* %30, i64 %32)
  store %struct.net_device* %33, %struct.net_device** %5, align 8
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = icmp ne %struct.net_device* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %26
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %50

38:                                               ; preds = %26
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = load %struct.net*, %struct.net** %4, align 8
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = load %struct.net*, %struct.net** %6, align 8
  %43 = call i64 @batadv_mutual_parents(%struct.net_device* %39, %struct.net* %40, %struct.net_device* %41, %struct.net* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %50

46:                                               ; preds = %38
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = call i32 @batadv_is_on_batman_iface(%struct.net_device* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %45, %36, %25, %13
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i64 @batadv_softif_is_valid(%struct.net_device*) #1

declare dso_local i64 @dev_get_iflink(%struct.net_device*) #1

declare dso_local %struct.net* @batadv_getlink_net(%struct.net_device*, %struct.net*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @batadv_mutual_parents(%struct.net_device*, %struct.net*, %struct.net_device*, %struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
