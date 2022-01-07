; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_inet_csk_route_child_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_inet_csk_route_child_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.sock = type { i32, i32 }
%struct.request_sock = type { i32 }
%struct.inet_request_sock = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net = type { i32 }
%struct.inet_sock = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.flowi4 }
%struct.flowi4 = type { i32 }
%struct.ip_options_rcu = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i64 }
%struct.rtable = type { %struct.dst_entry, i64 }

@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTNOROUTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_entry* @inet_csk_route_child_sock(%struct.sock* %0, %struct.sock* %1, %struct.request_sock* %2) #0 {
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.request_sock*, align 8
  %8 = alloca %struct.inet_request_sock*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.inet_sock*, align 8
  %11 = alloca %struct.ip_options_rcu*, align 8
  %12 = alloca %struct.flowi4*, align 8
  %13 = alloca %struct.rtable*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.request_sock* %2, %struct.request_sock** %7, align 8
  %14 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %15 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %14)
  store %struct.inet_request_sock* %15, %struct.inet_request_sock** %8, align 8
  %16 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %17 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %16, i32 0, i32 7
  %18 = call %struct.net* @read_pnet(i32* %17)
  store %struct.net* %18, %struct.net** %9, align 8
  %19 = load %struct.sock*, %struct.sock** %6, align 8
  %20 = call %struct.inet_sock* @inet_sk(%struct.sock* %19)
  store %struct.inet_sock* %20, %struct.inet_sock** %10, align 8
  %21 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %22 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.ip_options_rcu* @rcu_dereference(i32 %23)
  store %struct.ip_options_rcu* %24, %struct.ip_options_rcu** %11, align 8
  %25 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %26 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store %struct.flowi4* %29, %struct.flowi4** %12, align 8
  %30 = load %struct.flowi4*, %struct.flowi4** %12, align 8
  %31 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %32 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %35 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sock*, %struct.sock** %5, align 8
  %38 = call i32 @RT_CONN_FLAGS(%struct.sock* %37)
  %39 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %40 = load %struct.sock*, %struct.sock** %5, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sock*, %struct.sock** %5, align 8
  %44 = call i32 @inet_sk_flowi_flags(%struct.sock* %43)
  %45 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %11, align 8
  %46 = icmp ne %struct.ip_options_rcu* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %3
  %48 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %11, align 8
  %49 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %11, align 8
  %55 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  br label %62

58:                                               ; preds = %47, %3
  %59 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %60 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = phi i32 [ %57, %53 ], [ %61, %58 ]
  %64 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %65 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %68 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %71 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @htons(i32 %72)
  %74 = load %struct.sock*, %struct.sock** %5, align 8
  %75 = getelementptr inbounds %struct.sock, %struct.sock* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @flowi4_init_output(%struct.flowi4* %30, i32 %33, i32 %36, i32 %38, i32 %39, i32 %42, i32 %44, i32 %63, i32 %66, i32 %69, i32 %73, i32 %76)
  %78 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %79 = load %struct.flowi4*, %struct.flowi4** %12, align 8
  %80 = call i32 @flowi4_to_flowi(%struct.flowi4* %79)
  %81 = call i32 @security_req_classify_flow(%struct.request_sock* %78, i32 %80)
  %82 = load %struct.net*, %struct.net** %9, align 8
  %83 = load %struct.flowi4*, %struct.flowi4** %12, align 8
  %84 = load %struct.sock*, %struct.sock** %5, align 8
  %85 = call %struct.rtable* @ip_route_output_flow(%struct.net* %82, %struct.flowi4* %83, %struct.sock* %84)
  store %struct.rtable* %85, %struct.rtable** %13, align 8
  %86 = load %struct.rtable*, %struct.rtable** %13, align 8
  %87 = call i64 @IS_ERR(%struct.rtable* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %62
  br label %111

90:                                               ; preds = %62
  %91 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %11, align 8
  %92 = icmp ne %struct.ip_options_rcu* %91, null
  br i1 %92, label %93, label %105

93:                                               ; preds = %90
  %94 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %11, align 8
  %95 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load %struct.rtable*, %struct.rtable** %13, align 8
  %101 = getelementptr inbounds %struct.rtable, %struct.rtable* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %108

105:                                              ; preds = %99, %93, %90
  %106 = load %struct.rtable*, %struct.rtable** %13, align 8
  %107 = getelementptr inbounds %struct.rtable, %struct.rtable* %106, i32 0, i32 0
  store %struct.dst_entry* %107, %struct.dst_entry** %4, align 8
  br label %115

108:                                              ; preds = %104
  %109 = load %struct.rtable*, %struct.rtable** %13, align 8
  %110 = call i32 @ip_rt_put(%struct.rtable* %109)
  br label %111

111:                                              ; preds = %108, %89
  %112 = load %struct.net*, %struct.net** %9, align 8
  %113 = load i32, i32* @IPSTATS_MIB_OUTNOROUTES, align 4
  %114 = call i32 @__IP_INC_STATS(%struct.net* %112, i32 %113)
  store %struct.dst_entry* null, %struct.dst_entry** %4, align 8
  br label %115

115:                                              ; preds = %111, %105
  %116 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  ret %struct.dst_entry* %116
}

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local %struct.net* @read_pnet(i32*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.ip_options_rcu* @rcu_dereference(i32) #1

declare dso_local i32 @flowi4_init_output(%struct.flowi4*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RT_CONN_FLAGS(%struct.sock*) #1

declare dso_local i32 @inet_sk_flowi_flags(%struct.sock*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @security_req_classify_flow(%struct.request_sock*, i32) #1

declare dso_local i32 @flowi4_to_flowi(%struct.flowi4*) #1

declare dso_local %struct.rtable* @ip_route_output_flow(%struct.net*, %struct.flowi4*, %struct.sock*) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local i32 @__IP_INC_STATS(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
