; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_datagram.c_ip6_datagram_dst_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_datagram.c_ip6_datagram_dst_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.sock*)* }
%struct.ip6_flowlabel = type { %struct.ipv6_txoptions* }
%struct.ipv6_txoptions = type { i32 }
%struct.in6_addr = type { i32 }
%struct.dst_entry = type { %struct.ipv6_txoptions* }
%struct.inet_sock = type { i32 }
%struct.ipv6_pinfo = type { i32, i32, i32, i64 }
%struct.flowi6 = type { i32 }

@IPV6_FLOWLABEL_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LOOPBACK4_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_datagram_dst_update(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip6_flowlabel*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.in6_addr, align 4
  %9 = alloca %struct.ipv6_txoptions*, align 8
  %10 = alloca %struct.dst_entry*, align 8
  %11 = alloca %struct.inet_sock*, align 8
  %12 = alloca %struct.ipv6_pinfo*, align 8
  %13 = alloca %struct.flowi6, align 4
  %14 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ip6_flowlabel* null, %struct.ip6_flowlabel** %6, align 8
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call %struct.inet_sock* @inet_sk(%struct.sock* %15)
  store %struct.inet_sock* %16, %struct.inet_sock** %11, align 8
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %17)
  store %struct.ipv6_pinfo* %18, %struct.ipv6_pinfo** %12, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %12, align 8
  %20 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %2
  %24 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %12, align 8
  %25 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IPV6_FLOWLABEL_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %23
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %12, align 8
  %33 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.ip6_flowlabel* @fl6_sock_lookup(%struct.sock* %31, i32 %34)
  store %struct.ip6_flowlabel* %35, %struct.ip6_flowlabel** %6, align 8
  %36 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %6, align 8
  %37 = call i64 @IS_ERR(%struct.ip6_flowlabel* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %126

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %23, %2
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = call i32 @ip6_datagram_flow_key_init(%struct.flowi6* %13, %struct.sock* %44)
  %46 = call i32 (...) @rcu_read_lock()
  %47 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %6, align 8
  %48 = icmp ne %struct.ip6_flowlabel* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %6, align 8
  %51 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %50, i32 0, i32 0
  %52 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %51, align 8
  br label %58

53:                                               ; preds = %43
  %54 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %12, align 8
  %55 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.ipv6_txoptions* @rcu_dereference(i32 %56)
  br label %58

58:                                               ; preds = %53, %49
  %59 = phi %struct.ipv6_txoptions* [ %52, %49 ], [ %57, %53 ]
  store %struct.ipv6_txoptions* %59, %struct.ipv6_txoptions** %9, align 8
  %60 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %9, align 8
  %61 = call %struct.in6_addr* @fl6_update_dst(%struct.flowi6* %13, %struct.ipv6_txoptions* %60, %struct.in6_addr* %8)
  store %struct.in6_addr* %61, %struct.in6_addr** %7, align 8
  %62 = call i32 (...) @rcu_read_unlock()
  %63 = load %struct.sock*, %struct.sock** %4, align 8
  %64 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %65 = call %struct.ip6_flowlabel* @ip6_dst_lookup_flow(%struct.sock* %63, %struct.flowi6* %13, %struct.in6_addr* %64)
  %66 = bitcast %struct.ip6_flowlabel* %65 to %struct.dst_entry*
  store %struct.dst_entry* %66, %struct.dst_entry** %10, align 8
  %67 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %68 = bitcast %struct.dst_entry* %67 to %struct.ip6_flowlabel*
  %69 = call i64 @IS_ERR(%struct.ip6_flowlabel* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %58
  %72 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %73 = bitcast %struct.dst_entry* %72 to %struct.ip6_flowlabel*
  %74 = call i32 @PTR_ERR(%struct.ip6_flowlabel* %73)
  store i32 %74, i32* %14, align 4
  br label %122

75:                                               ; preds = %58
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %117

78:                                               ; preds = %75
  %79 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %12, align 8
  %80 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %79, i32 0, i32 1
  %81 = call i64 @ipv6_addr_any(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %13, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %12, align 8
  %87 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %83, %78
  %89 = load %struct.sock*, %struct.sock** %4, align 8
  %90 = getelementptr inbounds %struct.sock, %struct.sock* %89, i32 0, i32 1
  %91 = call i64 @ipv6_addr_any(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %13, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.sock*, %struct.sock** %4, align 8
  %97 = getelementptr inbounds %struct.sock, %struct.sock* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @LOOPBACK4_IPV6, align 4
  %99 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %100 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load %struct.sock*, %struct.sock** %4, align 8
  %102 = getelementptr inbounds %struct.sock, %struct.sock* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %104, align 8
  %106 = icmp ne i32 (%struct.sock*)* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %93
  %108 = load %struct.sock*, %struct.sock** %4, align 8
  %109 = getelementptr inbounds %struct.sock, %struct.sock* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %111, align 8
  %113 = load %struct.sock*, %struct.sock** %4, align 8
  %114 = call i32 %112(%struct.sock* %113)
  br label %115

115:                                              ; preds = %107, %93
  br label %116

116:                                              ; preds = %115, %88
  br label %117

117:                                              ; preds = %116, %75
  %118 = load %struct.sock*, %struct.sock** %4, align 8
  %119 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %120 = bitcast %struct.dst_entry* %119 to %struct.ip6_flowlabel*
  %121 = call i32 @ip6_sk_dst_store_flow(%struct.sock* %118, %struct.ip6_flowlabel* %120, %struct.flowi6* %13)
  br label %122

122:                                              ; preds = %117, %71
  %123 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %6, align 8
  %124 = call i32 @fl6_sock_release(%struct.ip6_flowlabel* %123)
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %122, %39
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.ip6_flowlabel* @fl6_sock_lookup(%struct.sock*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ip6_flowlabel*) #1

declare dso_local i32 @ip6_datagram_flow_key_init(%struct.flowi6*, %struct.sock*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ipv6_txoptions* @rcu_dereference(i32) #1

declare dso_local %struct.in6_addr* @fl6_update_dst(%struct.flowi6*, %struct.ipv6_txoptions*, %struct.in6_addr*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.ip6_flowlabel* @ip6_dst_lookup_flow(%struct.sock*, %struct.flowi6*, %struct.in6_addr*) #1

declare dso_local i32 @PTR_ERR(%struct.ip6_flowlabel*) #1

declare dso_local i64 @ipv6_addr_any(i32*) #1

declare dso_local i32 @ip6_sk_dst_store_flow(%struct.sock*, %struct.ip6_flowlabel*, %struct.flowi6*) #1

declare dso_local i32 @fl6_sock_release(%struct.ip6_flowlabel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
