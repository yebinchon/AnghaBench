; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_udp.c___udp6_lib_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_udp.c___udp6_lib_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.sock = type { i32 }
%struct.net = type { i32 }
%struct.udp_table = type { i32, %struct.udp_hslot* }
%struct.udp_hslot = type { i32 }
%struct.sk_buff = type { i32 }

@in6addr_any = common dso_local global %struct.in6_addr zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @__udp6_lib_lookup(%struct.net* %0, %struct.in6_addr* %1, i32 %2, %struct.in6_addr* %3, i32 %4, i32 %5, i32 %6, %struct.udp_table* %7, %struct.sk_buff* %8) #0 {
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.in6_addr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.in6_addr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.udp_table*, align 8
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca i16, align 2
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.udp_hslot*, align 8
  %24 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %11, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %12, align 8
  store i32 %2, i32* %13, align 4
  store %struct.in6_addr* %3, %struct.in6_addr** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.udp_table* %7, %struct.udp_table** %18, align 8
  store %struct.sk_buff* %8, %struct.sk_buff** %19, align 8
  %25 = load i32, i32* %15, align 4
  %26 = call zeroext i16 @ntohs(i32 %25)
  store i16 %26, i16* %20, align 2
  %27 = load %struct.net*, %struct.net** %11, align 8
  %28 = load %struct.in6_addr*, %struct.in6_addr** %14, align 8
  %29 = load i16, i16* %20, align 2
  %30 = call i32 @ipv6_portaddr_hash(%struct.net* %27, %struct.in6_addr* %28, i16 zeroext %29)
  store i32 %30, i32* %21, align 4
  %31 = load i32, i32* %21, align 4
  %32 = load %struct.udp_table*, %struct.udp_table** %18, align 8
  %33 = getelementptr inbounds %struct.udp_table, %struct.udp_table* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %31, %34
  store i32 %35, i32* %22, align 4
  %36 = load %struct.udp_table*, %struct.udp_table** %18, align 8
  %37 = getelementptr inbounds %struct.udp_table, %struct.udp_table* %36, i32 0, i32 1
  %38 = load %struct.udp_hslot*, %struct.udp_hslot** %37, align 8
  %39 = load i32, i32* %22, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %38, i64 %40
  store %struct.udp_hslot* %41, %struct.udp_hslot** %23, align 8
  %42 = load %struct.net*, %struct.net** %11, align 8
  %43 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.in6_addr*, %struct.in6_addr** %14, align 8
  %46 = load i16, i16* %20, align 2
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load %struct.udp_hslot*, %struct.udp_hslot** %23, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %51 = call %struct.sock* @udp6_lib_lookup2(%struct.net* %42, %struct.in6_addr* %43, i32 %44, %struct.in6_addr* %45, i16 zeroext %46, i32 %47, i32 %48, %struct.udp_hslot* %49, %struct.sk_buff* %50)
  store %struct.sock* %51, %struct.sock** %24, align 8
  %52 = load %struct.sock*, %struct.sock** %24, align 8
  %53 = icmp ne %struct.sock* %52, null
  br i1 %53, label %78, label %54

54:                                               ; preds = %9
  %55 = load %struct.net*, %struct.net** %11, align 8
  %56 = load i16, i16* %20, align 2
  %57 = call i32 @ipv6_portaddr_hash(%struct.net* %55, %struct.in6_addr* @in6addr_any, i16 zeroext %56)
  store i32 %57, i32* %21, align 4
  %58 = load i32, i32* %21, align 4
  %59 = load %struct.udp_table*, %struct.udp_table** %18, align 8
  %60 = getelementptr inbounds %struct.udp_table, %struct.udp_table* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %58, %61
  store i32 %62, i32* %22, align 4
  %63 = load %struct.udp_table*, %struct.udp_table** %18, align 8
  %64 = getelementptr inbounds %struct.udp_table, %struct.udp_table* %63, i32 0, i32 1
  %65 = load %struct.udp_hslot*, %struct.udp_hslot** %64, align 8
  %66 = load i32, i32* %22, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %65, i64 %67
  store %struct.udp_hslot* %68, %struct.udp_hslot** %23, align 8
  %69 = load %struct.net*, %struct.net** %11, align 8
  %70 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load i16, i16* %20, align 2
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %17, align 4
  %75 = load %struct.udp_hslot*, %struct.udp_hslot** %23, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %77 = call %struct.sock* @udp6_lib_lookup2(%struct.net* %69, %struct.in6_addr* %70, i32 %71, %struct.in6_addr* @in6addr_any, i16 zeroext %72, i32 %73, i32 %74, %struct.udp_hslot* %75, %struct.sk_buff* %76)
  store %struct.sock* %77, %struct.sock** %24, align 8
  br label %78

78:                                               ; preds = %54, %9
  %79 = load %struct.sock*, %struct.sock** %24, align 8
  %80 = call i64 @IS_ERR(%struct.sock* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store %struct.sock* null, %struct.sock** %10, align 8
  br label %85

83:                                               ; preds = %78
  %84 = load %struct.sock*, %struct.sock** %24, align 8
  store %struct.sock* %84, %struct.sock** %10, align 8
  br label %85

85:                                               ; preds = %83, %82
  %86 = load %struct.sock*, %struct.sock** %10, align 8
  ret %struct.sock* %86
}

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i32 @ipv6_portaddr_hash(%struct.net*, %struct.in6_addr*, i16 zeroext) #1

declare dso_local %struct.sock* @udp6_lib_lookup2(%struct.net*, %struct.in6_addr*, i32, %struct.in6_addr*, i16 zeroext, i32, i32, %struct.udp_hslot*, %struct.sk_buff*) #1

declare dso_local i64 @IS_ERR(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
