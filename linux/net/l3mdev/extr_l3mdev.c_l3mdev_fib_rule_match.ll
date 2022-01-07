; ModuleID = '/home/carl/AnghaBench/linux/net/l3mdev/extr_l3mdev.c_l3mdev_fib_rule_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/l3mdev/extr_l3mdev.c_l3mdev_fib_rule_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.flowi = type { i32, i32 }
%struct.fib_lookup_arg = type { i32 }
%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l3mdev_fib_rule_match(%struct.net* %0, %struct.flowi* %1, %struct.fib_lookup_arg* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.flowi*, align 8
  %6 = alloca %struct.fib_lookup_arg*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.flowi* %1, %struct.flowi** %5, align 8
  store %struct.fib_lookup_arg* %2, %struct.fib_lookup_arg** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.net*, %struct.net** %4, align 8
  %11 = load %struct.flowi*, %struct.flowi** %5, align 8
  %12 = getelementptr inbounds %struct.flowi, %struct.flowi* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.net_device* @dev_get_by_index_rcu(%struct.net* %10, i32 %13)
  store %struct.net_device* %14, %struct.net_device** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = icmp ne %struct.net_device* %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %3
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = call i64 @netif_is_l3_master(%struct.net_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %25, align 8
  %27 = icmp ne i32 (%struct.net_device*)* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = load %struct.net_device*, %struct.net_device** %7, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %32, align 8
  %34 = load %struct.net_device*, %struct.net_device** %7, align 8
  %35 = call i32 %33(%struct.net_device* %34)
  %36 = load %struct.fib_lookup_arg*, %struct.fib_lookup_arg** %6, align 8
  %37 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  store i32 1, i32* %8, align 4
  br label %68

38:                                               ; preds = %21, %17, %3
  %39 = load %struct.net*, %struct.net** %4, align 8
  %40 = load %struct.flowi*, %struct.flowi** %5, align 8
  %41 = getelementptr inbounds %struct.flowi, %struct.flowi* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.net_device* @dev_get_by_index_rcu(%struct.net* %39, i32 %42)
  store %struct.net_device* %43, %struct.net_device** %7, align 8
  %44 = load %struct.net_device*, %struct.net_device** %7, align 8
  %45 = icmp ne %struct.net_device* %44, null
  br i1 %45, label %46, label %67

46:                                               ; preds = %38
  %47 = load %struct.net_device*, %struct.net_device** %7, align 8
  %48 = call i64 @netif_is_l3_master(%struct.net_device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load %struct.net_device*, %struct.net_device** %7, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %54, align 8
  %56 = icmp ne i32 (%struct.net_device*)* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load %struct.net_device*, %struct.net_device** %7, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %61, align 8
  %63 = load %struct.net_device*, %struct.net_device** %7, align 8
  %64 = call i32 %62(%struct.net_device* %63)
  %65 = load %struct.fib_lookup_arg*, %struct.fib_lookup_arg** %6, align 8
  %66 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  store i32 1, i32* %8, align 4
  br label %68

67:                                               ; preds = %50, %46, %38
  br label %68

68:                                               ; preds = %67, %57, %28
  %69 = call i32 (...) @rcu_read_unlock()
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(%struct.net*, i32) #1

declare dso_local i64 @netif_is_l3_master(%struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
