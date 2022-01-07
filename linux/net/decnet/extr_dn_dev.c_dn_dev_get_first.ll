; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_dev_get_first.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_dev_get_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dn_dev = type { i32 }
%struct.dn_ifaddr = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*)* @dn_dev_get_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_dev_get_first(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dn_dev*, align 8
  %6 = alloca %struct.dn_ifaddr*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @rcu_dereference(i32 %13)
  %15 = bitcast i8* %14 to %struct.dn_dev*
  store %struct.dn_dev* %15, %struct.dn_dev** %5, align 8
  %16 = load %struct.dn_dev*, %struct.dn_dev** %5, align 8
  %17 = icmp eq %struct.dn_dev* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %33

19:                                               ; preds = %2
  %20 = load %struct.dn_dev*, %struct.dn_dev** %5, align 8
  %21 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @rcu_dereference(i32 %22)
  %24 = bitcast i8* %23 to %struct.dn_ifaddr*
  store %struct.dn_ifaddr* %24, %struct.dn_ifaddr** %6, align 8
  %25 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %6, align 8
  %26 = icmp ne %struct.dn_ifaddr* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %6, align 8
  %29 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %4, align 8
  store i32 %30, i32* %31, align 4
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %27, %19
  br label %33

33:                                               ; preds = %32, %18
  %34 = call i32 (...) @rcu_read_unlock()
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
