; ModuleID = '/home/carl/AnghaBench/linux/net/l3mdev/extr_l3mdev.c_l3mdev_update_flow.c'
source_filename = "/home/carl/AnghaBench/linux/net/l3mdev/extr_l3mdev.c_l3mdev_update_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.flowi = type { i32, i32, i32 }
%struct.net_device = type { i32 }

@FLOWI_FLAG_SKIP_NH_OIF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l3mdev_update_flow(%struct.net* %0, %struct.flowi* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.flowi*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.flowi* %1, %struct.flowi** %4, align 8
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load %struct.flowi*, %struct.flowi** %4, align 8
  %9 = getelementptr inbounds %struct.flowi, %struct.flowi* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = load %struct.net*, %struct.net** %3, align 8
  %14 = load %struct.flowi*, %struct.flowi** %4, align 8
  %15 = getelementptr inbounds %struct.flowi, %struct.flowi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.net_device* @dev_get_by_index_rcu(%struct.net* %13, i32 %16)
  store %struct.net_device* %17, %struct.net_device** %5, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = icmp ne %struct.net_device* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %12
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = call i32 @l3mdev_master_ifindex_rcu(%struct.net_device* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.flowi*, %struct.flowi** %4, align 8
  %28 = getelementptr inbounds %struct.flowi, %struct.flowi* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @FLOWI_FLAG_SKIP_NH_OIF, align 4
  %30 = load %struct.flowi*, %struct.flowi** %4, align 8
  %31 = getelementptr inbounds %struct.flowi, %struct.flowi* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %66

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34, %12
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.flowi*, %struct.flowi** %4, align 8
  %38 = getelementptr inbounds %struct.flowi, %struct.flowi* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %36
  %42 = load %struct.net*, %struct.net** %3, align 8
  %43 = load %struct.flowi*, %struct.flowi** %4, align 8
  %44 = getelementptr inbounds %struct.flowi, %struct.flowi* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.net_device* @dev_get_by_index_rcu(%struct.net* %42, i32 %45)
  store %struct.net_device* %46, %struct.net_device** %5, align 8
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = icmp ne %struct.net_device* %47, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %41
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = call i32 @l3mdev_master_ifindex_rcu(%struct.net_device* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.flowi*, %struct.flowi** %4, align 8
  %57 = getelementptr inbounds %struct.flowi, %struct.flowi* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @FLOWI_FLAG_SKIP_NH_OIF, align 4
  %59 = load %struct.flowi*, %struct.flowi** %4, align 8
  %60 = getelementptr inbounds %struct.flowi, %struct.flowi* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %54, %49
  br label %64

64:                                               ; preds = %63, %41
  br label %65

65:                                               ; preds = %64, %36
  br label %66

66:                                               ; preds = %65, %25
  %67 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(%struct.net*, i32) #1

declare dso_local i32 @l3mdev_master_ifindex_rcu(%struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
