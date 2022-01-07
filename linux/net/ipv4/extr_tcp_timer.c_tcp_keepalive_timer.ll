; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_tcp_keepalive_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_tcp_keepalive_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.timer_list = type { i32 }
%struct.inet_connection_sock = type { i64, i64 }
%struct.tcp_sock = type { i64, i64 }

@sk_timer = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Hmm... keepalive on a LISTEN ???\0A\00", align 1
@TCP_FIN_WAIT2 = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@TCP_TIMEWAIT_LEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SOCK_KEEPOPEN = common dso_local global i32 0, align 4
@TCPF_CLOSE = common dso_local global i32 0, align 4
@TCPF_SYN_SENT = common dso_local global i32 0, align 4
@LINUX_MIB_TCPKEEPALIVE = common dso_local global i32 0, align 4
@TCP_RESOURCE_PROBE_INTERVAL = common dso_local global i32 0, align 4
@sk = common dso_local global %struct.sock* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @tcp_keepalive_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_keepalive_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.inet_connection_sock*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = ptrtoint %struct.sock* %8 to i32
  %10 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %11 = load i32, i32* @sk_timer, align 4
  %12 = call %struct.sock* @from_timer(i32 %9, %struct.timer_list* %10, i32 %11)
  store %struct.sock* %12, %struct.sock** %3, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %13)
  store %struct.inet_connection_sock* %14, %struct.inet_connection_sock** %4, align 8
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %15)
  store %struct.tcp_sock* %16, %struct.tcp_sock** %5, align 8
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = call i32 @bh_lock_sock(%struct.sock* %17)
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = call i64 @sock_owned_by_user(%struct.sock* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = load i32, i32* @HZ, align 4
  %25 = sdiv i32 %24, 20
  %26 = call i32 @inet_csk_reset_keepalive_timer(%struct.sock* %23, i32 %25)
  br label %170

27:                                               ; preds = %1
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @TCP_LISTEN, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %170

35:                                               ; preds = %27
  %36 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %37 = call i32 @tcp_mstamp_refresh(%struct.tcp_sock* %36)
  %38 = load %struct.sock*, %struct.sock** %3, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @TCP_FIN_WAIT2, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %35
  %44 = load %struct.sock*, %struct.sock** %3, align 8
  %45 = load i32, i32* @SOCK_DEAD, align 4
  %46 = call i64 @sock_flag(%struct.sock* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %43
  %49 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %50 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.sock*, %struct.sock** %3, align 8
  %55 = call i32 @tcp_fin_time(%struct.sock* %54)
  %56 = load i32, i32* @TCP_TIMEWAIT_LEN, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.sock*, %struct.sock** %3, align 8
  %62 = load i32, i32* @TCP_FIN_WAIT2, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @tcp_time_wait(%struct.sock* %61, i32 %62, i32 %63)
  br label %170

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65, %48
  %67 = load %struct.sock*, %struct.sock** %3, align 8
  %68 = load i32, i32* @GFP_ATOMIC, align 4
  %69 = call i32 @tcp_send_active_reset(%struct.sock* %67, i32 %68)
  br label %167

70:                                               ; preds = %43, %35
  %71 = load %struct.sock*, %struct.sock** %3, align 8
  %72 = load i32, i32* @SOCK_KEEPOPEN, align 4
  %73 = call i64 @sock_flag(%struct.sock* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load %struct.sock*, %struct.sock** %3, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 1, %78
  %80 = load i32, i32* @TCPF_CLOSE, align 4
  %81 = load i32, i32* @TCPF_SYN_SENT, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75, %70
  br label %170

86:                                               ; preds = %75
  %87 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %88 = call i32 @keepalive_time_when(%struct.tcp_sock* %87)
  store i32 %88, i32* %6, align 4
  %89 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %90 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %86
  %94 = load %struct.sock*, %struct.sock** %3, align 8
  %95 = call i32 @tcp_write_queue_empty(%struct.sock* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93, %86
  br label %163

98:                                               ; preds = %93
  %99 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %100 = call i32 @keepalive_time_elapsed(%struct.tcp_sock* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %103 = call i32 @keepalive_time_when(%struct.tcp_sock* %102)
  %104 = icmp sge i32 %101, %103
  br i1 %104, label %105, label %155

105:                                              ; preds = %98
  %106 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %107 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %113 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @msecs_to_jiffies(i64 %114)
  %116 = icmp sge i32 %111, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %110
  %118 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %119 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %134, label %122

122:                                              ; preds = %117, %110, %105
  %123 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %124 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %122
  %128 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %129 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %132 = call i64 @keepalive_probes(%struct.tcp_sock* %131)
  %133 = icmp sge i64 %130, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %127, %117
  %135 = load %struct.sock*, %struct.sock** %3, align 8
  %136 = load i32, i32* @GFP_ATOMIC, align 4
  %137 = call i32 @tcp_send_active_reset(%struct.sock* %135, i32 %136)
  %138 = load %struct.sock*, %struct.sock** %3, align 8
  %139 = call i32 @tcp_write_err(%struct.sock* %138)
  br label %170

140:                                              ; preds = %127, %122
  %141 = load %struct.sock*, %struct.sock** %3, align 8
  %142 = load i32, i32* @LINUX_MIB_TCPKEEPALIVE, align 4
  %143 = call i64 @tcp_write_wakeup(%struct.sock* %141, i32 %142)
  %144 = icmp sle i64 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %140
  %146 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %147 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %147, align 8
  %150 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %151 = call i32 @keepalive_intvl_when(%struct.tcp_sock* %150)
  store i32 %151, i32* %6, align 4
  br label %154

152:                                              ; preds = %140
  %153 = load i32, i32* @TCP_RESOURCE_PROBE_INTERVAL, align 4
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %152, %145
  br label %160

155:                                              ; preds = %98
  %156 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %157 = call i32 @keepalive_time_when(%struct.tcp_sock* %156)
  %158 = load i32, i32* %6, align 4
  %159 = sub nsw i32 %157, %158
  store i32 %159, i32* %6, align 4
  br label %160

160:                                              ; preds = %155, %154
  %161 = load %struct.sock*, %struct.sock** %3, align 8
  %162 = call i32 @sk_mem_reclaim(%struct.sock* %161)
  br label %163

163:                                              ; preds = %160, %97
  %164 = load %struct.sock*, %struct.sock** %3, align 8
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @inet_csk_reset_keepalive_timer(%struct.sock* %164, i32 %165)
  br label %170

167:                                              ; preds = %66
  %168 = load %struct.sock*, %struct.sock** %3, align 8
  %169 = call i32 @tcp_done(%struct.sock* %168)
  br label %170

170:                                              ; preds = %167, %163, %134, %85, %60, %33, %22
  %171 = load %struct.sock*, %struct.sock** %3, align 8
  %172 = call i32 @bh_unlock_sock(%struct.sock* %171)
  %173 = load %struct.sock*, %struct.sock** %3, align 8
  %174 = call i32 @sock_put(%struct.sock* %173)
  ret void
}

declare dso_local %struct.sock* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @inet_csk_reset_keepalive_timer(%struct.sock*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @tcp_mstamp_refresh(%struct.tcp_sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @tcp_fin_time(%struct.sock*) #1

declare dso_local i32 @tcp_time_wait(%struct.sock*, i32, i32) #1

declare dso_local i32 @tcp_send_active_reset(%struct.sock*, i32) #1

declare dso_local i32 @keepalive_time_when(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_write_queue_empty(%struct.sock*) #1

declare dso_local i32 @keepalive_time_elapsed(%struct.tcp_sock*) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i64 @keepalive_probes(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_write_err(%struct.sock*) #1

declare dso_local i64 @tcp_write_wakeup(%struct.sock*, i32) #1

declare dso_local i32 @keepalive_intvl_when(%struct.tcp_sock*) #1

declare dso_local i32 @sk_mem_reclaim(%struct.sock*) #1

declare dso_local i32 @tcp_done(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
