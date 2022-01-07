; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_input.c_sctp_add_backlog.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_input.c_sctp_add_backlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sctp_chunk = type { %struct.sctp_ep_common*, %struct.sctp_transport* }
%struct.sctp_ep_common = type { i64 }
%struct.sctp_transport = type { i32 }
%struct.TYPE_2__ = type { %struct.sctp_chunk* }

@SCTP_EP_TYPE_ASSOCIATION = common dso_local global i64 0, align 8
@SCTP_EP_TYPE_SOCKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @sctp_add_backlog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_add_backlog(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca %struct.sctp_transport*, align 8
  %7 = alloca %struct.sctp_ep_common*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.TYPE_2__* @SCTP_INPUT_CB(%struct.sk_buff* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  store %struct.sctp_chunk* %12, %struct.sctp_chunk** %5, align 8
  %13 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %14 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %13, i32 0, i32 1
  %15 = load %struct.sctp_transport*, %struct.sctp_transport** %14, align 8
  store %struct.sctp_transport* %15, %struct.sctp_transport** %6, align 8
  %16 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %17 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %16, i32 0, i32 0
  %18 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %17, align 8
  store %struct.sctp_ep_common* %18, %struct.sctp_ep_common** %7, align 8
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @READ_ONCE(i32 %23)
  %25 = call i32 @sk_add_backlog(%struct.sock* %19, %struct.sk_buff* %20, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %2
  %29 = load i64, i64* @SCTP_EP_TYPE_ASSOCIATION, align 8
  %30 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %7, align 8
  %31 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %36 = call i32 @sctp_transport_hold(%struct.sctp_transport* %35)
  br label %50

37:                                               ; preds = %28
  %38 = load i64, i64* @SCTP_EP_TYPE_SOCKET, align 8
  %39 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %7, align 8
  %40 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %7, align 8
  %45 = call i32 @sctp_ep(%struct.sctp_ep_common* %44)
  %46 = call i32 @sctp_endpoint_hold(i32 %45)
  br label %49

47:                                               ; preds = %37
  %48 = call i32 (...) @BUG()
  br label %49

49:                                               ; preds = %47, %43
  br label %50

50:                                               ; preds = %49, %34
  br label %51

51:                                               ; preds = %50, %2
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_2__* @SCTP_INPUT_CB(%struct.sk_buff*) #1

declare dso_local i32 @sk_add_backlog(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @sctp_transport_hold(%struct.sctp_transport*) #1

declare dso_local i32 @sctp_endpoint_hold(i32) #1

declare dso_local i32 @sctp_ep(%struct.sctp_ep_common*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
