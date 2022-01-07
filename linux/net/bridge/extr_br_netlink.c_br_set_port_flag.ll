; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_set_port_flag.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_set_port_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i64 }
%struct.nlattr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge_port*, %struct.nlattr**, i32, i64)* @br_set_port_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_set_port_flag(%struct.net_bridge_port* %0, %struct.nlattr** %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_bridge_port*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %6, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %14
  %16 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %17 = icmp ne %struct.nlattr* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %53

19:                                               ; preds = %4
  %20 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = call i64 @nla_get_u8(%struct.nlattr* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %29 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = or i64 %30, %31
  store i64 %32, i64* %10, align 8
  br label %40

33:                                               ; preds = %19
  %34 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %35 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = xor i64 %37, -1
  %39 = and i64 %36, %38
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %33, %27
  %41 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @br_switchdev_set_port_flag(%struct.net_bridge_port* %41, i64 %42, i64 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %5, align 4
  br label %53

49:                                               ; preds = %40
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %52 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %49, %47, %18
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @br_switchdev_set_port_flag(%struct.net_bridge_port*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
