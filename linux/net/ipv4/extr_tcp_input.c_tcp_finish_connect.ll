; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_finish_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_finish_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_sock = type { i64, i32, %struct.TYPE_5__, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.inet_connection_sock = type { %struct.TYPE_4__*, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32 (%struct.sock*, %struct.sk_buff*)* }
%struct.TYPE_6__ = type { i8* }

@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@tcp_jiffies32 = common dso_local global i8* null, align 8
@BPF_SOCK_OPS_ACTIVE_ESTABLISHED_CB = common dso_local global i32 0, align 4
@SOCK_KEEPOPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_finish_connect(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca %struct.inet_connection_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %7)
  store %struct.tcp_sock* %8, %struct.tcp_sock** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %9)
  store %struct.inet_connection_sock* %10, %struct.inet_connection_sock** %6, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = load i32, i32* @TCP_ESTABLISHED, align 4
  %13 = call i32 @tcp_set_state(%struct.sock* %11, i32 %12)
  %14 = load i8*, i8** @tcp_jiffies32, align 8
  %15 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %16 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i8* %14, i8** %17, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %2
  %21 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %22 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (%struct.sock*, %struct.sk_buff*)*, i32 (%struct.sock*, %struct.sk_buff*)** %24, align 8
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i32 %25(%struct.sock* %26, %struct.sk_buff* %27)
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i32 @security_inet_conn_established(%struct.sock* %29, %struct.sk_buff* %30)
  %32 = load %struct.sock*, %struct.sock** %3, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 @sk_mark_napi_id(%struct.sock* %32, %struct.sk_buff* %33)
  br label %35

35:                                               ; preds = %20, %2
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = load i32, i32* @BPF_SOCK_OPS_ACTIVE_ESTABLISHED_CB, align 4
  %38 = call i32 @tcp_init_transfer(%struct.sock* %36, i32 %37)
  %39 = load i8*, i8** @tcp_jiffies32, align 8
  %40 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %41 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load %struct.sock*, %struct.sock** %3, align 8
  %43 = load i32, i32* @SOCK_KEEPOPEN, align 4
  %44 = call i64 @sock_flag(%struct.sock* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load %struct.sock*, %struct.sock** %3, align 8
  %48 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %49 = call i32 @keepalive_time_when(%struct.tcp_sock* %48)
  %50 = call i32 @inet_csk_reset_keepalive_timer(%struct.sock* %47, i32 %49)
  br label %51

51:                                               ; preds = %46, %35
  %52 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %53 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %59 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %60 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @__tcp_fast_path_on(%struct.tcp_sock* %58, i32 %61)
  br label %66

63:                                               ; preds = %51
  %64 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %65 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %63, %57
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @tcp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @security_inet_conn_established(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sk_mark_napi_id(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_init_transfer(%struct.sock*, i32) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @inet_csk_reset_keepalive_timer(%struct.sock*, i32) #1

declare dso_local i32 @keepalive_time_when(%struct.tcp_sock*) #1

declare dso_local i32 @__tcp_fast_path_on(%struct.tcp_sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
