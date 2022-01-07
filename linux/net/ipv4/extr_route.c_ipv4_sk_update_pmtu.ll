; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ipv4_sk_update_pmtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ipv4_sk_update_pmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.sock = type { i32 }
%struct.iphdr = type { i32 }
%struct.flowi4 = type { i32 }
%struct.rtable = type { %struct.dst_entry }
%struct.dst_entry = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.dst_entry*, i32)* }
%struct.net = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipv4_sk_update_pmtu(%struct.sk_buff* %0, %struct.sock* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca %struct.flowi4, align 4
  %9 = alloca %struct.rtable*, align 8
  %10 = alloca %struct.dst_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.iphdr*
  store %struct.iphdr* %16, %struct.iphdr** %7, align 8
  store %struct.dst_entry* null, %struct.dst_entry** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = call %struct.net* @sock_net(%struct.sock* %17)
  store %struct.net* %18, %struct.net** %12, align 8
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = call i32 @bh_lock_sock(%struct.sock* %19)
  %21 = load %struct.sock*, %struct.sock** %5, align 8
  %22 = call i32 @ip_sk_accept_pmtu(%struct.sock* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %106

25:                                               ; preds = %3
  %26 = load %struct.sock*, %struct.sock** %5, align 8
  %27 = call %struct.dst_entry* @sk_dst_get(%struct.sock* %26)
  store %struct.dst_entry* %27, %struct.dst_entry** %10, align 8
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = call i64 @sock_owned_by_user(%struct.sock* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %33 = icmp ne %struct.dst_entry* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %31, %25
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = load %struct.sock*, %struct.sock** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @__ipv4_sk_update_pmtu(%struct.sk_buff* %35, %struct.sock* %36, i32 %37)
  br label %106

39:                                               ; preds = %31
  %40 = load %struct.net*, %struct.net** %12, align 8
  %41 = load %struct.sock*, %struct.sock** %5, align 8
  %42 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %43 = call i32 @__build_flow_key(%struct.net* %40, %struct.flowi4* %8, %struct.sock* %41, %struct.iphdr* %42, i32 0, i32 0, i32 0, i32 0, i32 0)
  %44 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %45 = bitcast %struct.dst_entry* %44 to %struct.rtable*
  store %struct.rtable* %45, %struct.rtable** %9, align 8
  %46 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %47 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %39
  %51 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %52 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (%struct.dst_entry*, i32)*, i32 (%struct.dst_entry*, i32)** %54, align 8
  %56 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %57 = call i32 %55(%struct.dst_entry* %56, i32 0)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %50
  %60 = load %struct.sock*, %struct.sock** %5, align 8
  %61 = call %struct.net* @sock_net(%struct.sock* %60)
  %62 = load %struct.sock*, %struct.sock** %5, align 8
  %63 = call %struct.rtable* @ip_route_output_flow(%struct.net* %61, %struct.flowi4* %8, %struct.sock* %62)
  store %struct.rtable* %63, %struct.rtable** %9, align 8
  %64 = load %struct.rtable*, %struct.rtable** %9, align 8
  %65 = call i64 @IS_ERR(%struct.rtable* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %106

68:                                               ; preds = %59
  store i32 1, i32* %11, align 4
  br label %69

69:                                               ; preds = %68, %50, %39
  %70 = load %struct.rtable*, %struct.rtable** %9, align 8
  %71 = getelementptr inbounds %struct.rtable, %struct.rtable* %70, i32 0, i32 0
  %72 = call i64 @xfrm_dst_path(%struct.dst_entry* %71)
  %73 = inttoptr i64 %72 to %struct.rtable*
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @__ip_rt_update_pmtu(%struct.rtable* %73, %struct.flowi4* %8, i32 %74)
  %76 = load %struct.rtable*, %struct.rtable** %9, align 8
  %77 = getelementptr inbounds %struct.rtable, %struct.rtable* %76, i32 0, i32 0
  %78 = call i32 @dst_check(%struct.dst_entry* %77, i32 0)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %97, label %80

80:                                               ; preds = %69
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load %struct.rtable*, %struct.rtable** %9, align 8
  %85 = getelementptr inbounds %struct.rtable, %struct.rtable* %84, i32 0, i32 0
  %86 = call i32 @dst_release(%struct.dst_entry* %85)
  br label %87

87:                                               ; preds = %83, %80
  %88 = load %struct.sock*, %struct.sock** %5, align 8
  %89 = call %struct.net* @sock_net(%struct.sock* %88)
  %90 = load %struct.sock*, %struct.sock** %5, align 8
  %91 = call %struct.rtable* @ip_route_output_flow(%struct.net* %89, %struct.flowi4* %8, %struct.sock* %90)
  store %struct.rtable* %91, %struct.rtable** %9, align 8
  %92 = load %struct.rtable*, %struct.rtable** %9, align 8
  %93 = call i64 @IS_ERR(%struct.rtable* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %106

96:                                               ; preds = %87
  store i32 1, i32* %11, align 4
  br label %97

97:                                               ; preds = %96, %69
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load %struct.sock*, %struct.sock** %5, align 8
  %102 = load %struct.rtable*, %struct.rtable** %9, align 8
  %103 = getelementptr inbounds %struct.rtable, %struct.rtable* %102, i32 0, i32 0
  %104 = call i32 @sk_dst_set(%struct.sock* %101, %struct.dst_entry* %103)
  br label %105

105:                                              ; preds = %100, %97
  br label %106

106:                                              ; preds = %105, %95, %67, %34, %24
  %107 = load %struct.sock*, %struct.sock** %5, align 8
  %108 = call i32 @bh_unlock_sock(%struct.sock* %107)
  %109 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %110 = call i32 @dst_release(%struct.dst_entry* %109)
  ret void
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @ip_sk_accept_pmtu(%struct.sock*) #1

declare dso_local %struct.dst_entry* @sk_dst_get(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @__ipv4_sk_update_pmtu(%struct.sk_buff*, %struct.sock*, i32) #1

declare dso_local i32 @__build_flow_key(%struct.net*, %struct.flowi4*, %struct.sock*, %struct.iphdr*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.rtable* @ip_route_output_flow(%struct.net*, %struct.flowi4*, %struct.sock*) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @__ip_rt_update_pmtu(%struct.rtable*, %struct.flowi4*, i32) #1

declare dso_local i64 @xfrm_dst_path(%struct.dst_entry*) #1

declare dso_local i32 @dst_check(%struct.dst_entry*, i32) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i32 @sk_dst_set(%struct.sock*, %struct.dst_entry*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
