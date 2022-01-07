; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_route_output_flags_noref.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_route_output_flags_noref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.net = type { i32 }
%struct.sock = type { i64 }
%struct.flowi6 = type { i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@IPV6_ADDR_MULTICAST = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@LOOPBACK_IFINDEX = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_DST_NOREF = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_IFACE = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_HAS_SADDR = common dso_local global i32 0, align 4
@ip6_pol_route_output = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_entry* @ip6_route_output_flags_noref(%struct.net* %0, %struct.sock* %1, %struct.flowi6* %2, i32 %3) #0 {
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.flowi6*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dst_entry*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sock* %1, %struct.sock** %7, align 8
  store %struct.flowi6* %2, %struct.flowi6** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %13 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %12, i32 0, i32 1
  %14 = call i32 @ipv6_addr_type(i32* %13)
  %15 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %16 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %4
  %21 = load %struct.net*, %struct.net** %6, align 8
  %22 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %23 = call %struct.dst_entry* @l3mdev_link_scope_lookup(%struct.net* %21, %struct.flowi6* %22)
  store %struct.dst_entry* %23, %struct.dst_entry** %11, align 8
  %24 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %25 = icmp ne %struct.dst_entry* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  store %struct.dst_entry* %27, %struct.dst_entry** %5, align 8
  br label %88

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %4
  %30 = load i32, i32* @LOOPBACK_IFINDEX, align 4
  %31 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %32 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @RT6_LOOKUP_F_DST_NOREF, align 4
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  %36 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %37 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %36, i32 0, i32 2
  %38 = call i32 @ipv6_addr_any(i32* %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.sock*, %struct.sock** %7, align 8
  %40 = icmp ne %struct.sock* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %29
  %42 = load %struct.sock*, %struct.sock** %7, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %41, %29
  %47 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %48 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %47, i32 0, i32 1
  %49 = call i64 @rt6_need_strict(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %53 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56, %46, %41
  %60 = load i32, i32* @RT6_LOOKUP_F_IFACE, align 4
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %59, %56, %51
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @RT6_LOOKUP_F_HAS_SADDR, align 4
  %68 = load i32, i32* %9, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %82

70:                                               ; preds = %63
  %71 = load %struct.sock*, %struct.sock** %7, align 8
  %72 = icmp ne %struct.sock* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load %struct.sock*, %struct.sock** %7, align 8
  %75 = call %struct.TYPE_2__* @inet6_sk(%struct.sock* %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @rt6_srcprefs2flags(i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %73, %70
  br label %82

82:                                               ; preds = %81, %66
  %83 = load %struct.net*, %struct.net** %6, align 8
  %84 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @ip6_pol_route_output, align 4
  %87 = call %struct.dst_entry* @fib6_rule_lookup(%struct.net* %83, %struct.flowi6* %84, i32* null, i32 %85, i32 %86)
  store %struct.dst_entry* %87, %struct.dst_entry** %5, align 8
  br label %88

88:                                               ; preds = %82, %26
  %89 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  ret %struct.dst_entry* %89
}

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local %struct.dst_entry* @l3mdev_link_scope_lookup(%struct.net*, %struct.flowi6*) #1

declare dso_local i32 @ipv6_addr_any(i32*) #1

declare dso_local i64 @rt6_need_strict(i32*) #1

declare dso_local i32 @rt6_srcprefs2flags(i32) #1

declare dso_local %struct.TYPE_2__* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.dst_entry* @fib6_rule_lookup(%struct.net*, %struct.flowi6*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
