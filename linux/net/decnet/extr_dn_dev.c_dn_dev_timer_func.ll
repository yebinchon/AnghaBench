; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_dev_timer_func.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_dev_timer_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_dev = type { i64, %struct.TYPE_2__, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i64, i64, i32 (%struct.net_device*, %struct.dn_ifaddr*)* }
%struct.dn_ifaddr = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@IFA_F_SECONDARY = common dso_local global i32 0, align 4
@dn_db = common dso_local global %struct.dn_dev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @dn_dev_timer_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_dev_timer_func(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.dn_dev*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.dn_ifaddr*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %7 = ptrtoint %struct.dn_dev* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timer, align 4
  %10 = call %struct.dn_dev* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.dn_dev* %10, %struct.dn_dev** %3, align 8
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %13 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %12, i32 0, i32 3
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %4, align 8
  %15 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %16 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %19 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sle i64 %17, %21
  br i1 %22, label %23, label %66

23:                                               ; preds = %1
  %24 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %25 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32 (%struct.net_device*, %struct.dn_ifaddr*)*, i32 (%struct.net_device*, %struct.dn_ifaddr*)** %26, align 8
  %28 = icmp ne i32 (%struct.net_device*, %struct.dn_ifaddr*)* %27, null
  br i1 %28, label %29, label %59

29:                                               ; preds = %23
  %30 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %31 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.dn_ifaddr* @rcu_dereference(i32 %32)
  store %struct.dn_ifaddr* %33, %struct.dn_ifaddr** %5, align 8
  br label %34

34:                                               ; preds = %53, %29
  %35 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %36 = icmp ne %struct.dn_ifaddr* %35, null
  br i1 %36, label %37, label %58

37:                                               ; preds = %34
  %38 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %39 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFA_F_SECONDARY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %37
  %45 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %46 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32 (%struct.net_device*, %struct.dn_ifaddr*)*, i32 (%struct.net_device*, %struct.dn_ifaddr*)** %47, align 8
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %51 = call i32 %48(%struct.net_device* %49, %struct.dn_ifaddr* %50)
  br label %52

52:                                               ; preds = %44, %37
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %55 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.dn_ifaddr* @rcu_dereference(i32 %56)
  store %struct.dn_ifaddr* %57, %struct.dn_ifaddr** %5, align 8
  br label %34

58:                                               ; preds = %34
  br label %59

59:                                               ; preds = %58, %23
  %60 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %61 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %65 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %75

66:                                               ; preds = %1
  %67 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %68 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %72 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %73, %70
  store i64 %74, i64* %72, align 8
  br label %75

75:                                               ; preds = %66, %59
  %76 = call i32 (...) @rcu_read_unlock()
  %77 = load %struct.net_device*, %struct.net_device** %4, align 8
  %78 = call i32 @dn_dev_set_timer(%struct.net_device* %77)
  ret void
}

declare dso_local %struct.dn_dev* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.dn_ifaddr* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @dn_dev_set_timer(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
