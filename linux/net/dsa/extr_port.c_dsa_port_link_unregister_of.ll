; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_link_unregister_of.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_link_unregister_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_port = type { i32, i32, %struct.dsa_switch* }
%struct.dsa_switch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsa_port_link_unregister_of(%struct.dsa_port* %0) #0 {
  %2 = alloca %struct.dsa_port*, align 8
  %3 = alloca %struct.dsa_switch*, align 8
  store %struct.dsa_port* %0, %struct.dsa_port** %2, align 8
  %4 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %5 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %4, i32 0, i32 2
  %6 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  store %struct.dsa_switch* %6, %struct.dsa_switch** %3, align 8
  %7 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %8 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %1
  %14 = call i32 (...) @rtnl_lock()
  %15 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %16 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @phylink_disconnect_phy(i32 %17)
  %19 = call i32 (...) @rtnl_unlock()
  %20 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %21 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @phylink_destroy(i32 %22)
  br label %38

24:                                               ; preds = %1
  %25 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %26 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @of_phy_is_fixed_link(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %32 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @of_phy_deregister_fixed_link(i32 %33)
  br label %38

35:                                               ; preds = %24
  %36 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %37 = call i32 @dsa_port_setup_phy_of(%struct.dsa_port* %36, i32 0)
  br label %38

38:                                               ; preds = %13, %35, %30
  ret void
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @phylink_disconnect_phy(i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @phylink_destroy(i32) #1

declare dso_local i64 @of_phy_is_fixed_link(i32) #1

declare dso_local i32 @of_phy_deregister_fixed_link(i32) #1

declare dso_local i32 @dsa_port_setup_phy_of(%struct.dsa_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
