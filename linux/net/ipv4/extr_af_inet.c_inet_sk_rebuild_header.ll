; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c_inet_sk_rebuild_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c_inet_sk_rebuild_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, i32, i64, i32, i32 }
%struct.inet_sock = type { i32, i32, i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.flowi4 }
%struct.flowi4 = type { i32 }
%struct.rtable = type { i32 }
%struct.ip_options_rcu = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@TCP_SYN_SENT = common dso_local global i64 0, align 8
@SOCK_BINDADDR_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_sk_rebuild_header(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.inet_sock*, align 8
  %5 = alloca %struct.rtable*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_options_rcu*, align 8
  %8 = alloca %struct.flowi4*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.inet_sock* @inet_sk(%struct.sock* %10)
  store %struct.inet_sock* %11, %struct.inet_sock** %4, align 8
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call i64 @__sk_dst_check(%struct.sock* %12, i32 0)
  %14 = inttoptr i64 %13 to %struct.rtable*
  store %struct.rtable* %14, %struct.rtable** %5, align 8
  %15 = load %struct.rtable*, %struct.rtable** %5, align 8
  %16 = icmp ne %struct.rtable* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %114

18:                                               ; preds = %1
  %19 = call i32 (...) @rcu_read_lock()
  %20 = load %struct.inet_sock*, %struct.inet_sock** %4, align 8
  %21 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.ip_options_rcu* @rcu_dereference(i32 %22)
  store %struct.ip_options_rcu* %23, %struct.ip_options_rcu** %7, align 8
  %24 = load %struct.inet_sock*, %struct.inet_sock** %4, align 8
  %25 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %7, align 8
  %28 = icmp ne %struct.ip_options_rcu* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %18
  %30 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %7, align 8
  %31 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %7, align 8
  %37 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %35, %29, %18
  %41 = call i32 (...) @rcu_read_unlock()
  %42 = load %struct.inet_sock*, %struct.inet_sock** %4, align 8
  %43 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  store %struct.flowi4* %46, %struct.flowi4** %8, align 8
  %47 = load %struct.sock*, %struct.sock** %3, align 8
  %48 = call %struct.TYPE_13__* @sock_net(%struct.sock* %47)
  %49 = load %struct.flowi4*, %struct.flowi4** %8, align 8
  %50 = load %struct.sock*, %struct.sock** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.inet_sock*, %struct.inet_sock** %4, align 8
  %53 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.inet_sock*, %struct.inet_sock** %4, align 8
  %56 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.inet_sock*, %struct.inet_sock** %4, align 8
  %59 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sock*, %struct.sock** %3, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sock*, %struct.sock** %3, align 8
  %65 = call i32 @RT_CONN_FLAGS(%struct.sock* %64)
  %66 = load %struct.sock*, %struct.sock** %3, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.rtable* @ip_route_output_ports(%struct.TYPE_13__* %48, %struct.flowi4* %49, %struct.sock* %50, i32 %51, i32 %54, i32 %57, i32 %60, i32 %63, i32 %65, i32 %68)
  store %struct.rtable* %69, %struct.rtable** %5, align 8
  %70 = load %struct.rtable*, %struct.rtable** %5, align 8
  %71 = call i32 @IS_ERR(%struct.rtable* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  %74 = load %struct.sock*, %struct.sock** %3, align 8
  %75 = load %struct.rtable*, %struct.rtable** %5, align 8
  %76 = getelementptr inbounds %struct.rtable, %struct.rtable* %75, i32 0, i32 0
  %77 = call i32 @sk_setup_caps(%struct.sock* %74, i32* %76)
  br label %112

78:                                               ; preds = %40
  %79 = load %struct.rtable*, %struct.rtable** %5, align 8
  %80 = call i32 @PTR_ERR(%struct.rtable* %79)
  store i32 %80, i32* %9, align 4
  %81 = load %struct.sock*, %struct.sock** %3, align 8
  %82 = getelementptr inbounds %struct.sock, %struct.sock* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load %struct.sock*, %struct.sock** %3, align 8
  %84 = call %struct.TYPE_13__* @sock_net(%struct.sock* %83)
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %78
  %90 = load %struct.sock*, %struct.sock** %3, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @TCP_SYN_SENT, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %106, label %95

95:                                               ; preds = %89
  %96 = load %struct.sock*, %struct.sock** %3, align 8
  %97 = getelementptr inbounds %struct.sock, %struct.sock* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @SOCK_BINDADDR_LOCK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %95
  %103 = load %struct.sock*, %struct.sock** %3, align 8
  %104 = call i32 @inet_sk_reselect_saddr(%struct.sock* %103)
  store i32 %104, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %102, %95, %89, %78
  %107 = load i32, i32* %9, align 4
  %108 = sub nsw i32 0, %107
  %109 = load %struct.sock*, %struct.sock** %3, align 8
  %110 = getelementptr inbounds %struct.sock, %struct.sock* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %106, %102
  br label %112

112:                                              ; preds = %111, %73
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %112, %17
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i64 @__sk_dst_check(%struct.sock*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ip_options_rcu* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.rtable* @ip_route_output_ports(%struct.TYPE_13__*, %struct.flowi4*, %struct.sock*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_13__* @sock_net(%struct.sock*) #1

declare dso_local i32 @RT_CONN_FLAGS(%struct.sock*) #1

declare dso_local i32 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @sk_setup_caps(%struct.sock*, i32*) #1

declare dso_local i32 @PTR_ERR(%struct.rtable*) #1

declare dso_local i32 @inet_sk_reselect_saddr(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
