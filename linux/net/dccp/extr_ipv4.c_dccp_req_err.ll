; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_ipv4.c_dccp_req_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_ipv4.c_dccp_req_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.request_sock = type { i32 }
%struct.net = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@LINUX_MIB_OUTOFWINDOWICMPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dccp_req_err(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_sock*, align 8
  %6 = alloca %struct.net*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.request_sock* @inet_reqsk(%struct.sock* %7)
  store %struct.request_sock* %8, %struct.request_sock** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.net* @sock_net(%struct.sock* %9)
  store %struct.net* %10, %struct.net** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %13 = call %struct.TYPE_2__* @dccp_rsk(%struct.request_sock* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %17 = call %struct.TYPE_2__* @dccp_rsk(%struct.request_sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @between48(i32 %11, i32 %15, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load %struct.net*, %struct.net** %6, align 8
  %24 = load i32, i32* @LINUX_MIB_OUTOFWINDOWICMPS, align 4
  %25 = call i32 @__NET_INC_STATS(%struct.net* %23, i32 %24)
  br label %32

26:                                               ; preds = %2
  %27 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %28 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %31 = call i32 @inet_csk_reqsk_queue_drop(i32 %29, %struct.request_sock* %30)
  br label %32

32:                                               ; preds = %26, %22
  %33 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %34 = call i32 @reqsk_put(%struct.request_sock* %33)
  ret void
}

declare dso_local %struct.request_sock* @inet_reqsk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @between48(i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @dccp_rsk(%struct.request_sock*) #1

declare dso_local i32 @__NET_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @inet_csk_reqsk_queue_drop(i32, %struct.request_sock*) #1

declare dso_local i32 @reqsk_put(%struct.request_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
