; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ipv4.c_tcp_req_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ipv4.c_tcp_req_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.request_sock = type { i32 }
%struct.net = type { i32 }
%struct.TYPE_2__ = type { i64 }

@LINUX_MIB_OUTOFWINDOWICMPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_req_err(%struct.sock* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.request_sock*, align 8
  %8 = alloca %struct.net*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.request_sock* @inet_reqsk(%struct.sock* %9)
  store %struct.request_sock* %10, %struct.request_sock** %7, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.net* @sock_net(%struct.sock* %11)
  store %struct.net* %12, %struct.net** %8, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %15 = call %struct.TYPE_2__* @tcp_rsk(%struct.request_sock* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %13, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.net*, %struct.net** %8, align 8
  %21 = load i32, i32* @LINUX_MIB_OUTOFWINDOWICMPS, align 4
  %22 = call i32 @__NET_INC_STATS(%struct.net* %20, i32 %21)
  br label %37

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %28 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %31 = call i32 @inet_csk_reqsk_queue_drop(i32 %29, %struct.request_sock* %30)
  %32 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %33 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @tcp_listendrop(i32 %34)
  br label %36

36:                                               ; preds = %26, %23
  br label %37

37:                                               ; preds = %36, %19
  %38 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %39 = call i32 @reqsk_put(%struct.request_sock* %38)
  ret void
}

declare dso_local %struct.request_sock* @inet_reqsk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @tcp_rsk(%struct.request_sock*) #1

declare dso_local i32 @__NET_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @inet_csk_reqsk_queue_drop(i32, %struct.request_sock*) #1

declare dso_local i32 @tcp_listendrop(i32) #1

declare dso_local i32 @reqsk_put(%struct.request_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
