; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_dev_down.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_dev_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dn_dev = type { i32 }
%struct.dn_ifaddr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dn_dev_down(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dn_dev*, align 8
  %4 = alloca %struct.dn_ifaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @rtnl_dereference(i32 %7)
  %9 = bitcast i8* %8 to %struct.dn_dev*
  store %struct.dn_dev* %9, %struct.dn_dev** %3, align 8
  %10 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %11 = icmp eq %struct.dn_dev* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %31

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %21, %13
  %15 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %16 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @rtnl_dereference(i32 %17)
  %19 = bitcast i8* %18 to %struct.dn_ifaddr*
  store %struct.dn_ifaddr* %19, %struct.dn_ifaddr** %4, align 8
  %20 = icmp ne %struct.dn_ifaddr* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %23 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %24 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %23, i32 0, i32 0
  %25 = call i32 @dn_dev_del_ifa(%struct.dn_dev* %22, i32* %24, i32 0)
  %26 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %4, align 8
  %27 = call i32 @dn_dev_free_ifa(%struct.dn_ifaddr* %26)
  br label %14

28:                                               ; preds = %14
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 @dn_dev_delete(%struct.net_device* %29)
  br label %31

31:                                               ; preds = %28, %12
  ret void
}

declare dso_local i8* @rtnl_dereference(i32) #1

declare dso_local i32 @dn_dev_del_ifa(%struct.dn_dev*, i32*, i32) #1

declare dso_local i32 @dn_dev_free_ifa(%struct.dn_ifaddr*) #1

declare dso_local i32 @dn_dev_delete(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
