; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.smc_sock = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, i64, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.sock* }
%struct.TYPE_4__ = type { i64 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@SMC_LISTEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@MSEC_PER_SEC = common dso_local global i32 0, align 4
@smc_rx_data_available = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32, i32)* @smc_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_accept(%struct.socket* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.smc_sock*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sock*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.socket*, %struct.socket** %5, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %9, align 8
  %18 = load i32, i32* @wait, align 4
  %19 = load i32, i32* @current, align 4
  %20 = call i32 @DECLARE_WAITQUEUE(i32 %18, i32 %19)
  store i32 0, i32* %13, align 4
  %21 = load %struct.sock*, %struct.sock** %9, align 8
  %22 = call %struct.smc_sock* @smc_sk(%struct.sock* %21)
  store %struct.smc_sock* %22, %struct.smc_sock** %11, align 8
  %23 = load %struct.sock*, %struct.sock** %9, align 8
  %24 = call i32 @sock_hold(%struct.sock* %23)
  %25 = load %struct.sock*, %struct.sock** %9, align 8
  %26 = call i32 @lock_sock(%struct.sock* %25)
  %27 = load %struct.smc_sock*, %struct.smc_sock** %11, align 8
  %28 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SMC_LISTEN, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %13, align 4
  %36 = load %struct.sock*, %struct.sock** %9, align 8
  %37 = call i32 @release_sock(%struct.sock* %36)
  br label %153

38:                                               ; preds = %4
  %39 = load %struct.sock*, %struct.sock** %9, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @O_NONBLOCK, align 4
  %42 = and i32 %40, %41
  %43 = call i64 @sock_rcvtimeo(%struct.sock* %39, i32 %42)
  store i64 %43, i64* %12, align 8
  %44 = load %struct.sock*, %struct.sock** %9, align 8
  %45 = call i32 @sk_sleep(%struct.sock* %44)
  %46 = call i32 @add_wait_queue_exclusive(i32 %45, i32* @wait)
  br label %47

47:                                               ; preds = %75, %38
  %48 = load %struct.sock*, %struct.sock** %9, align 8
  %49 = load %struct.socket*, %struct.socket** %6, align 8
  %50 = call %struct.sock* @smc_accept_dequeue(%struct.sock* %48, %struct.socket* %49)
  store %struct.sock* %50, %struct.sock** %10, align 8
  %51 = icmp ne %struct.sock* %50, null
  %52 = xor i1 %51, true
  br i1 %52, label %53, label %76

53:                                               ; preds = %47
  %54 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %55 = call i32 @set_current_state(i32 %54)
  %56 = load i64, i64* %12, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @EAGAIN, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %13, align 4
  br label %76

61:                                               ; preds = %53
  %62 = load %struct.sock*, %struct.sock** %9, align 8
  %63 = call i32 @release_sock(%struct.sock* %62)
  %64 = load i64, i64* %12, align 8
  %65 = call i64 @schedule_timeout(i64 %64)
  store i64 %65, i64* %12, align 8
  %66 = call i32 (...) @sched_annotate_sleep()
  %67 = load %struct.sock*, %struct.sock** %9, align 8
  %68 = call i32 @lock_sock(%struct.sock* %67)
  %69 = load i32, i32* @current, align 4
  %70 = call i64 @signal_pending(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @sock_intr_errno(i64 %73)
  store i32 %74, i32* %13, align 4
  br label %76

75:                                               ; preds = %61
  br label %47

76:                                               ; preds = %72, %58, %47
  %77 = load i32, i32* @TASK_RUNNING, align 4
  %78 = call i32 @set_current_state(i32 %77)
  %79 = load %struct.sock*, %struct.sock** %9, align 8
  %80 = call i32 @sk_sleep(%struct.sock* %79)
  %81 = call i32 @remove_wait_queue(i32 %80, i32* @wait)
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %76
  %85 = load %struct.sock*, %struct.sock** %10, align 8
  %86 = call i32 @sock_error(%struct.sock* %85)
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %84, %76
  %88 = load %struct.sock*, %struct.sock** %9, align 8
  %89 = call i32 @release_sock(%struct.sock* %88)
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %153

93:                                               ; preds = %87
  %94 = load %struct.smc_sock*, %struct.smc_sock** %11, align 8
  %95 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %152

98:                                               ; preds = %93
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @O_NONBLOCK, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %152, label %103

103:                                              ; preds = %98
  %104 = load %struct.smc_sock*, %struct.smc_sock** %11, align 8
  %105 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @MSEC_PER_SEC, align 4
  %108 = mul nsw i32 %106, %107
  %109 = call i64 @msecs_to_jiffies(i32 %108)
  store i64 %109, i64* %12, align 8
  %110 = load %struct.sock*, %struct.sock** %10, align 8
  %111 = call %struct.smc_sock* @smc_sk(%struct.sock* %110)
  %112 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %134

115:                                              ; preds = %103
  %116 = load %struct.sock*, %struct.sock** %10, align 8
  %117 = call %struct.smc_sock* @smc_sk(%struct.sock* %116)
  %118 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %117, i32 0, i32 2
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load %struct.sock*, %struct.sock** %120, align 8
  store %struct.sock* %121, %struct.sock** %14, align 8
  %122 = load %struct.sock*, %struct.sock** %14, align 8
  %123 = call i32 @lock_sock(%struct.sock* %122)
  %124 = load %struct.sock*, %struct.sock** %14, align 8
  %125 = getelementptr inbounds %struct.sock, %struct.sock* %124, i32 0, i32 0
  %126 = call i64 @skb_queue_empty(i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %115
  %129 = load %struct.sock*, %struct.sock** %14, align 8
  %130 = call i32 @sk_wait_data(%struct.sock* %129, i64* %12, i32* null)
  br label %131

131:                                              ; preds = %128, %115
  %132 = load %struct.sock*, %struct.sock** %14, align 8
  %133 = call i32 @release_sock(%struct.sock* %132)
  br label %151

134:                                              ; preds = %103
  %135 = load %struct.sock*, %struct.sock** %10, align 8
  %136 = call %struct.smc_sock* @smc_sk(%struct.sock* %135)
  %137 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = call i32 @atomic_read(i32* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %134
  %142 = load %struct.sock*, %struct.sock** %10, align 8
  %143 = call i32 @lock_sock(%struct.sock* %142)
  %144 = load %struct.sock*, %struct.sock** %10, align 8
  %145 = call %struct.smc_sock* @smc_sk(%struct.sock* %144)
  %146 = load i32, i32* @smc_rx_data_available, align 4
  %147 = call i32 @smc_rx_wait(%struct.smc_sock* %145, i64* %12, i32 %146)
  %148 = load %struct.sock*, %struct.sock** %10, align 8
  %149 = call i32 @release_sock(%struct.sock* %148)
  br label %150

150:                                              ; preds = %141, %134
  br label %151

151:                                              ; preds = %150, %131
  br label %152

152:                                              ; preds = %151, %98, %93
  br label %153

153:                                              ; preds = %152, %92, %33
  %154 = load %struct.sock*, %struct.sock** %9, align 8
  %155 = call i32 @sock_put(%struct.sock* %154)
  %156 = load i32, i32* %13, align 4
  ret i32 %156
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local %struct.smc_sock* @smc_sk(%struct.sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local i32 @add_wait_queue_exclusive(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local %struct.sock* @smc_accept_dequeue(%struct.sock*, %struct.socket*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @sched_annotate_sleep(...) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @sk_wait_data(%struct.sock*, i64*, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @smc_rx_wait(%struct.smc_sock*, i64*, i32) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
