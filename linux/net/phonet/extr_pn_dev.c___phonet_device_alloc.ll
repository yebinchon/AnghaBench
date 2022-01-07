; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pn_dev.c___phonet_device_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pn_dev.c___phonet_device_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phonet_device = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.phonet_device_list = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phonet_device* (%struct.net_device*)* @__phonet_device_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phonet_device* @__phonet_device_alloc(%struct.net_device* %0) #0 {
  %2 = alloca %struct.phonet_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.phonet_device_list*, align 8
  %5 = alloca %struct.phonet_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call i32 @dev_net(%struct.net_device* %6)
  %8 = call %struct.phonet_device_list* @phonet_device_list(i32 %7)
  store %struct.phonet_device_list* %8, %struct.phonet_device_list** %4, align 8
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.phonet_device* @kmalloc(i32 16, i32 %9)
  store %struct.phonet_device* %10, %struct.phonet_device** %5, align 8
  %11 = load %struct.phonet_device*, %struct.phonet_device** %5, align 8
  %12 = icmp eq %struct.phonet_device* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.phonet_device* null, %struct.phonet_device** %2, align 8
  br label %35

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = load %struct.phonet_device*, %struct.phonet_device** %5, align 8
  %17 = getelementptr inbounds %struct.phonet_device, %struct.phonet_device* %16, i32 0, i32 2
  store %struct.net_device* %15, %struct.net_device** %17, align 8
  %18 = load %struct.phonet_device*, %struct.phonet_device** %5, align 8
  %19 = getelementptr inbounds %struct.phonet_device, %struct.phonet_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bitmap_zero(i32 %20, i32 64)
  %22 = load %struct.phonet_device_list*, %struct.phonet_device_list** %4, align 8
  %23 = getelementptr inbounds %struct.phonet_device_list, %struct.phonet_device_list* %22, i32 0, i32 1
  %24 = call i32 @mutex_is_locked(i32* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.phonet_device*, %struct.phonet_device** %5, align 8
  %30 = getelementptr inbounds %struct.phonet_device, %struct.phonet_device* %29, i32 0, i32 0
  %31 = load %struct.phonet_device_list*, %struct.phonet_device_list** %4, align 8
  %32 = getelementptr inbounds %struct.phonet_device_list, %struct.phonet_device_list* %31, i32 0, i32 0
  %33 = call i32 @list_add_rcu(i32* %30, i32* %32)
  %34 = load %struct.phonet_device*, %struct.phonet_device** %5, align 8
  store %struct.phonet_device* %34, %struct.phonet_device** %2, align 8
  br label %35

35:                                               ; preds = %14, %13
  %36 = load %struct.phonet_device*, %struct.phonet_device** %2, align 8
  ret %struct.phonet_device* %36
}

declare dso_local %struct.phonet_device_list* @phonet_device_list(i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local %struct.phonet_device* @kmalloc(i32, i32) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
