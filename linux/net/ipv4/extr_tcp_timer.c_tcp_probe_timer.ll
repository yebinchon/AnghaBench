; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_tcp_probe_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_tcp_probe_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_connection_sock = type { i32, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_sock = type { i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SOCK_DEAD = common dso_local global i32 0, align 4
@TCP_RTO_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tcp_probe_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_probe_timer(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_connection_sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %9)
  store %struct.inet_connection_sock* %10, %struct.inet_connection_sock** %3, align 8
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = call %struct.sk_buff* @tcp_send_head(%struct.sock* %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %4, align 8
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %13)
  store %struct.tcp_sock* %14, %struct.tcp_sock** %5, align 8
  %15 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %16 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %24 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  br label %93

25:                                               ; preds = %19
  %26 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %27 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.sock*, %struct.sock** %2, align 8
  %32 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %33 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = call i32 @tcp_probe0_base(%struct.sock* %35)
  %37 = call i64 @tcp_model_timeout(%struct.sock* %31, i32 %34, i32 %36)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %40 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %87

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44, %25
  %46 = load %struct.sock*, %struct.sock** %2, align 8
  %47 = call %struct.TYPE_4__* @sock_net(%struct.sock* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %6, align 4
  %51 = load %struct.sock*, %struct.sock** %2, align 8
  %52 = load i32, i32* @SOCK_DEAD, align 4
  %53 = call i64 @sock_flag(%struct.sock* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %45
  %56 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %57 = load i64, i64* @TCP_RTO_MAX, align 8
  %58 = call i64 @inet_csk_rto_backoff(%struct.inet_connection_sock* %56, i64 %57)
  %59 = load i64, i64* @TCP_RTO_MAX, align 8
  %60 = icmp slt i64 %58, %59
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %8, align 4
  %62 = load %struct.sock*, %struct.sock** %2, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @tcp_orphan_retries(%struct.sock* %62, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %55
  %68 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %69 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %87

74:                                               ; preds = %67, %55
  %75 = load %struct.sock*, %struct.sock** %2, align 8
  %76 = call i64 @tcp_out_of_resources(%struct.sock* %75, i32 1)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %93

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79, %45
  %81 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %82 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %73, %43
  %88 = load %struct.sock*, %struct.sock** %2, align 8
  %89 = call i32 @tcp_write_err(%struct.sock* %88)
  br label %93

90:                                               ; preds = %80
  %91 = load %struct.sock*, %struct.sock** %2, align 8
  %92 = call i32 @tcp_send_probe0(%struct.sock* %91)
  br label %93

93:                                               ; preds = %22, %78, %90, %87
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @tcp_send_head(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @tcp_model_timeout(%struct.sock*, i32, i32) #1

declare dso_local i32 @tcp_probe0_base(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @sock_net(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i64 @inet_csk_rto_backoff(%struct.inet_connection_sock*, i64) #1

declare dso_local i32 @tcp_orphan_retries(%struct.sock*, i32) #1

declare dso_local i64 @tcp_out_of_resources(%struct.sock*, i32) #1

declare dso_local i32 @tcp_write_err(%struct.sock*) #1

declare dso_local i32 @tcp_send_probe0(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
