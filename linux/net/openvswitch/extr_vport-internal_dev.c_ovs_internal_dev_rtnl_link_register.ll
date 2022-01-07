; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-internal_dev.c_ovs_internal_dev_rtnl_link_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-internal_dev.c_ovs_internal_dev_rtnl_link_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@internal_dev_link_ops = common dso_local global i32 0, align 4
@ovs_internal_vport_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_internal_dev_rtnl_link_register() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @rtnl_link_register(i32* @internal_dev_link_ops)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* %1, align 4
  br label %16

8:                                                ; preds = %0
  %9 = call i32 @ovs_vport_ops_register(i32* @ovs_internal_vport_ops)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @rtnl_link_unregister(i32* @internal_dev_link_ops)
  br label %14

14:                                               ; preds = %12, %8
  %15 = load i32, i32* %2, align 4
  store i32 %15, i32* %1, align 4
  br label %16

16:                                               ; preds = %14, %6
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i32 @rtnl_link_register(i32*) #1

declare dso_local i32 @ovs_vport_ops_register(i32*) #1

declare dso_local i32 @rtnl_link_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
