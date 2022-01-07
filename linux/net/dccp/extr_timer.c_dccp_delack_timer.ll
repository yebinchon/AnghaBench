; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_timer.c_dccp_delack_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_timer.c_dccp_delack_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_connection_sock = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.TYPE_3__ = type { %struct.sock }
%struct.sock = type { i64 }
%struct.timer_list = type { i32 }

@icsk_delack_timer = common dso_local global i32 0, align 4
@LINUX_MIB_DELAYEDACKLOCKED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TCP_DELACK_MIN = common dso_local global i64 0, align 8
@DCCP_CLOSED = common dso_local global i64 0, align 8
@ICSK_ACK_TIMER = common dso_local global i32 0, align 4
@TCP_ATO_MIN = common dso_local global i32 0, align 4
@LINUX_MIB_DELAYEDACKS = common dso_local global i32 0, align 4
@icsk = common dso_local global %struct.inet_connection_sock* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @dccp_delack_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dccp_delack_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.inet_connection_sock*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %6 = ptrtoint %struct.inet_connection_sock* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @icsk_delack_timer, align 4
  %9 = call %struct.inet_connection_sock* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.inet_connection_sock* %9, %struct.inet_connection_sock** %3, align 8
  %10 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %11 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.sock* %12, %struct.sock** %4, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call i32 @bh_lock_sock(%struct.sock* %13)
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call i64 @sock_owned_by_user(%struct.sock* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %1
  %19 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %20 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = call i32 @sock_net(%struct.sock* %22)
  %24 = load i32, i32* @LINUX_MIB_DELAYEDACKLOCKED, align 4
  %25 = call i32 @__NET_INC_STATS(i32 %23, i32 %24)
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %28 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %27, i32 0, i32 2
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i64, i64* @TCP_DELACK_MIN, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @sk_reset_timer(%struct.sock* %26, i32* %28, i64 %31)
  br label %108

33:                                               ; preds = %1
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DCCP_CLOSED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %33
  %40 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %41 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ICSK_ACK_TIMER, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39, %33
  br label %108

48:                                               ; preds = %39
  %49 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %50 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @jiffies, align 8
  %54 = call i64 @time_after(i64 %52, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %48
  %57 = load %struct.sock*, %struct.sock** %4, align 8
  %58 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %59 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %58, i32 0, i32 2
  %60 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %61 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @sk_reset_timer(%struct.sock* %57, i32* %59, i64 %63)
  br label %108

65:                                               ; preds = %48
  %66 = load i32, i32* @ICSK_ACK_TIMER, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %69 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %67
  store i32 %72, i32* %70, align 4
  %73 = load %struct.sock*, %struct.sock** %4, align 8
  %74 = call i64 @inet_csk_ack_scheduled(%struct.sock* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %107

76:                                               ; preds = %65
  %77 = load %struct.sock*, %struct.sock** %4, align 8
  %78 = call i32 @inet_csk_in_pingpong_mode(%struct.sock* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %76
  %81 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %82 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = shl i32 %84, 1
  %86 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %87 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @min(i32 %85, i32 %88)
  %90 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %91 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 8
  br label %100

93:                                               ; preds = %76
  %94 = load %struct.sock*, %struct.sock** %4, align 8
  %95 = call i32 @inet_csk_exit_pingpong_mode(%struct.sock* %94)
  %96 = load i32, i32* @TCP_ATO_MIN, align 4
  %97 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %98 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 8
  br label %100

100:                                              ; preds = %93, %80
  %101 = load %struct.sock*, %struct.sock** %4, align 8
  %102 = call i32 @dccp_send_ack(%struct.sock* %101)
  %103 = load %struct.sock*, %struct.sock** %4, align 8
  %104 = call i32 @sock_net(%struct.sock* %103)
  %105 = load i32, i32* @LINUX_MIB_DELAYEDACKS, align 4
  %106 = call i32 @__NET_INC_STATS(i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %100, %65
  br label %108

108:                                              ; preds = %107, %56, %47, %18
  %109 = load %struct.sock*, %struct.sock** %4, align 8
  %110 = call i32 @bh_unlock_sock(%struct.sock* %109)
  %111 = load %struct.sock*, %struct.sock** %4, align 8
  %112 = call i32 @sock_put(%struct.sock* %111)
  ret void
}

declare dso_local %struct.inet_connection_sock* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @__NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @sk_reset_timer(%struct.sock*, i32*, i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @inet_csk_ack_scheduled(%struct.sock*) #1

declare dso_local i32 @inet_csk_in_pingpong_mode(%struct.sock*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @inet_csk_exit_pingpong_mode(%struct.sock*) #1

declare dso_local i32 @dccp_send_ack(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
