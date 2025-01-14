; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_if.c_br_mtu_auto_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_if.c_br_mtu_auto_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }

@BROPT_MTU_SET_BY_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_mtu_auto_adjust(%struct.net_bridge* %0) #0 {
  %2 = alloca %struct.net_bridge*, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %2, align 8
  %3 = call i32 (...) @ASSERT_RTNL()
  %4 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %5 = load i32, i32* @BROPT_MTU_SET_BY_USER, align 4
  %6 = call i64 @br_opt_get(%struct.net_bridge* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %19

9:                                                ; preds = %1
  %10 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %11 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %14 = call i32 @br_mtu_min(%struct.net_bridge* %13)
  %15 = call i32 @dev_set_mtu(i32 %12, i32 %14)
  %16 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %17 = load i32, i32* @BROPT_MTU_SET_BY_USER, align 4
  %18 = call i32 @br_opt_toggle(%struct.net_bridge* %16, i32 %17, i32 0)
  br label %19

19:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i64 @br_opt_get(%struct.net_bridge*, i32) #1

declare dso_local i32 @dev_set_mtu(i32, i32) #1

declare dso_local i32 @br_mtu_min(%struct.net_bridge*) #1

declare dso_local i32 @br_opt_toggle(%struct.net_bridge*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
