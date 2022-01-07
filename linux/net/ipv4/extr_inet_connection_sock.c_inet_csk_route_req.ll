; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_inet_csk_route_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_inet_csk_route_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.sock = type { i32, i32 }
%struct.flowi4 = type { i32 }
%struct.request_sock = type { i32 }
%struct.inet_request_sock = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net = type { i32 }
%struct.ip_options_rcu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.rtable = type { %struct.dst_entry, i64 }

@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTNOROUTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_entry* @inet_csk_route_req(%struct.sock* %0, %struct.flowi4* %1, %struct.request_sock* %2) #0 {
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.flowi4*, align 8
  %7 = alloca %struct.request_sock*, align 8
  %8 = alloca %struct.inet_request_sock*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.ip_options_rcu*, align 8
  %11 = alloca %struct.rtable*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.flowi4* %1, %struct.flowi4** %6, align 8
  store %struct.request_sock* %2, %struct.request_sock** %7, align 8
  %12 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %13 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %12)
  store %struct.inet_request_sock* %13, %struct.inet_request_sock** %8, align 8
  %14 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %15 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %14, i32 0, i32 7
  %16 = call %struct.net* @read_pnet(i32* %15)
  store %struct.net* %16, %struct.net** %9, align 8
  %17 = call i32 (...) @rcu_read_lock()
  %18 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %19 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.ip_options_rcu* @rcu_dereference(i32 %20)
  store %struct.ip_options_rcu* %21, %struct.ip_options_rcu** %10, align 8
  %22 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %23 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %24 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %27 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sock*, %struct.sock** %5, align 8
  %30 = call i32 @RT_CONN_FLAGS(%struct.sock* %29)
  %31 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %32 = load %struct.sock*, %struct.sock** %5, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = call i32 @inet_sk_flowi_flags(%struct.sock* %35)
  %37 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %10, align 8
  %38 = icmp ne %struct.ip_options_rcu* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %3
  %40 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %10, align 8
  %41 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %10, align 8
  %47 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  br label %54

50:                                               ; preds = %39, %3
  %51 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %52 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  br label %54

54:                                               ; preds = %50, %45
  %55 = phi i32 [ %49, %45 ], [ %53, %50 ]
  %56 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %57 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %60 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %63 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @htons(i32 %64)
  %66 = load %struct.sock*, %struct.sock** %5, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @flowi4_init_output(%struct.flowi4* %22, i32 %25, i32 %28, i32 %30, i32 %31, i32 %34, i32 %36, i32 %55, i32 %58, i32 %61, i32 %65, i32 %68)
  %70 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %71 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %72 = call i32 @flowi4_to_flowi(%struct.flowi4* %71)
  %73 = call i32 @security_req_classify_flow(%struct.request_sock* %70, i32 %72)
  %74 = load %struct.net*, %struct.net** %9, align 8
  %75 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %76 = load %struct.sock*, %struct.sock** %5, align 8
  %77 = call %struct.rtable* @ip_route_output_flow(%struct.net* %74, %struct.flowi4* %75, %struct.sock* %76)
  store %struct.rtable* %77, %struct.rtable** %11, align 8
  %78 = load %struct.rtable*, %struct.rtable** %11, align 8
  %79 = call i64 @IS_ERR(%struct.rtable* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %54
  br label %104

82:                                               ; preds = %54
  %83 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %10, align 8
  %84 = icmp ne %struct.ip_options_rcu* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %10, align 8
  %87 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.rtable*, %struct.rtable** %11, align 8
  %93 = getelementptr inbounds %struct.rtable, %struct.rtable* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %101

97:                                               ; preds = %91, %85, %82
  %98 = call i32 (...) @rcu_read_unlock()
  %99 = load %struct.rtable*, %struct.rtable** %11, align 8
  %100 = getelementptr inbounds %struct.rtable, %struct.rtable* %99, i32 0, i32 0
  store %struct.dst_entry* %100, %struct.dst_entry** %4, align 8
  br label %109

101:                                              ; preds = %96
  %102 = load %struct.rtable*, %struct.rtable** %11, align 8
  %103 = call i32 @ip_rt_put(%struct.rtable* %102)
  br label %104

104:                                              ; preds = %101, %81
  %105 = call i32 (...) @rcu_read_unlock()
  %106 = load %struct.net*, %struct.net** %9, align 8
  %107 = load i32, i32* @IPSTATS_MIB_OUTNOROUTES, align 4
  %108 = call i32 @__IP_INC_STATS(%struct.net* %106, i32 %107)
  store %struct.dst_entry* null, %struct.dst_entry** %4, align 8
  br label %109

109:                                              ; preds = %104, %97
  %110 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  ret %struct.dst_entry* %110
}

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local %struct.net* @read_pnet(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ip_options_rcu* @rcu_dereference(i32) #1

declare dso_local i32 @flowi4_init_output(%struct.flowi4*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RT_CONN_FLAGS(%struct.sock*) #1

declare dso_local i32 @inet_sk_flowi_flags(%struct.sock*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @security_req_classify_flow(%struct.request_sock*, i32) #1

declare dso_local i32 @flowi4_to_flowi(%struct.flowi4*) #1

declare dso_local %struct.rtable* @ip_route_output_flow(%struct.net*, %struct.flowi4*, %struct.sock*) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local i32 @__IP_INC_STATS(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
