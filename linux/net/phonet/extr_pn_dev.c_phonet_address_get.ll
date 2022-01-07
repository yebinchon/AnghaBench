; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pn_dev.c_phonet_address_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pn_dev.c_phonet_address_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.phonet_device = type { i32 }

@PN_NO_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phonet_address_get(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.phonet_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.phonet_device* @__phonet_get_rcu(%struct.net_device* %9)
  store %struct.phonet_device* %10, %struct.phonet_device** %5, align 8
  %11 = load %struct.phonet_device*, %struct.phonet_device** %5, align 8
  %12 = icmp ne %struct.phonet_device* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %2
  %14 = load %struct.phonet_device*, %struct.phonet_device** %5, align 8
  %15 = getelementptr inbounds %struct.phonet_device, %struct.phonet_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bitmap_empty(i32 %16, i32 64)
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = ashr i32 %19, 2
  %21 = load %struct.phonet_device*, %struct.phonet_device** %5, align 8
  %22 = getelementptr inbounds %struct.phonet_device, %struct.phonet_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @test_bit(i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %13
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %6, align 4
  br label %34

28:                                               ; preds = %13
  %29 = load %struct.phonet_device*, %struct.phonet_device** %5, align 8
  %30 = getelementptr inbounds %struct.phonet_device, %struct.phonet_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @find_first_bit(i32 %31, i32 64)
  %33 = shl i32 %32, 2
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %28, %26
  br label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @PN_NO_ADDR, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %34
  %38 = call i32 (...) @rcu_read_unlock()
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @PN_NO_ADDR, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = call i32 @dev_net(%struct.net_device* %43)
  %45 = call %struct.net_device* @phonet_device_get(i32 %44)
  store %struct.net_device* %45, %struct.net_device** %7, align 8
  %46 = load %struct.net_device*, %struct.net_device** %7, align 8
  %47 = icmp ne %struct.net_device* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load %struct.net_device*, %struct.net_device** %7, align 8
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = icmp ne %struct.net_device* %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load %struct.net_device*, %struct.net_device** %7, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @phonet_address_get(%struct.net_device* %53, i32 %54)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load %struct.net_device*, %struct.net_device** %7, align 8
  %58 = call i32 @dev_put(%struct.net_device* %57)
  br label %59

59:                                               ; preds = %56, %42
  br label %60

60:                                               ; preds = %59, %37
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.phonet_device* @__phonet_get_rcu(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bitmap_empty(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.net_device* @phonet_device_get(i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
