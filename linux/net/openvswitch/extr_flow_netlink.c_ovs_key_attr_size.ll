; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_ovs_key_attr_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_ovs_key_attr_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OVS_KEY_ATTR_TUNNEL_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ovs_key_attr_size() #0 {
  %1 = load i32, i32* @OVS_KEY_ATTR_TUNNEL_INFO, align 4
  %2 = icmp ne i32 %1, 29
  %3 = zext i1 %2 to i32
  %4 = call i32 @BUILD_BUG_ON(i32 %3)
  %5 = call i64 @nla_total_size(i32 4)
  %6 = call i64 @nla_total_size(i32 0)
  %7 = add i64 %5, %6
  %8 = call i64 (...) @ovs_tun_key_attr_size()
  %9 = add i64 %7, %8
  %10 = call i64 @nla_total_size(i32 4)
  %11 = add i64 %9, %10
  %12 = call i64 @nla_total_size(i32 4)
  %13 = add i64 %11, %12
  %14 = call i64 @nla_total_size(i32 4)
  %15 = add i64 %13, %14
  %16 = call i64 @nla_total_size(i32 4)
  %17 = add i64 %15, %16
  %18 = call i64 @nla_total_size(i32 4)
  %19 = add i64 %17, %18
  %20 = call i64 @nla_total_size(i32 2)
  %21 = add i64 %19, %20
  %22 = call i64 @nla_total_size(i32 4)
  %23 = add i64 %21, %22
  %24 = call i64 @nla_total_size(i32 16)
  %25 = add i64 %23, %24
  %26 = call i64 @nla_total_size(i32 40)
  %27 = add i64 %25, %26
  %28 = call i64 @nla_total_size(i32 0)
  %29 = add i64 %27, %28
  %30 = call i64 (...) @ovs_nsh_key_attr_size()
  %31 = add i64 %29, %30
  %32 = call i64 @nla_total_size(i32 12)
  %33 = add i64 %31, %32
  %34 = call i64 @nla_total_size(i32 2)
  %35 = add i64 %33, %34
  %36 = call i64 @nla_total_size(i32 4)
  %37 = add i64 %35, %36
  %38 = call i64 @nla_total_size(i32 0)
  %39 = add i64 %37, %38
  %40 = call i64 @nla_total_size(i32 2)
  %41 = add i64 %39, %40
  %42 = call i64 @nla_total_size(i32 40)
  %43 = add i64 %41, %42
  %44 = call i64 @nla_total_size(i32 2)
  %45 = add i64 %43, %44
  %46 = call i64 @nla_total_size(i32 28)
  %47 = add i64 %45, %46
  ret i64 %47
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @nla_total_size(i32) #1

declare dso_local i64 @ovs_tun_key_attr_size(...) #1

declare dso_local i64 @ovs_nsh_key_attr_size(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
