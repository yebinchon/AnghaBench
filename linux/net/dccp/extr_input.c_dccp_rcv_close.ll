; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_input.c_dccp_rcv_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_input.c_dccp_rcv_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@DCCP_ROLE_CLIENT = common dso_local global i32 0, align 4
@DCCP_RESET_CODE_CLOSED = common dso_local global i32 0, align 4
@SOCK_WAKE_WAITD = common dso_local global i32 0, align 4
@POLL_HUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @dccp_rcv_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_rcv_close(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %35 [
    i32 132, label %9
    i32 128, label %18
    i32 133, label %18
    i32 131, label %24
    i32 130, label %24
    i32 129, label %30
  ]

9:                                                ; preds = %2
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.TYPE_2__* @dccp_sk(%struct.sock* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DCCP_ROLE_CLIENT, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %35

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %2, %2, %17
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = load i32, i32* @DCCP_RESET_CODE_CLOSED, align 4
  %21 = call i32 @dccp_send_reset(%struct.sock* %19, i32 %20)
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = call i32 @dccp_done(%struct.sock* %22)
  br label %35

24:                                               ; preds = %2, %2
  store i32 1, i32* %5, align 4
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @dccp_fin(%struct.sock* %25, %struct.sk_buff* %26)
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = call i32 @dccp_set_state(%struct.sock* %28, i32 129)
  br label %30

30:                                               ; preds = %2, %24
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = load i32, i32* @SOCK_WAKE_WAITD, align 4
  %33 = load i32, i32* @POLL_HUP, align 4
  %34 = call i32 @sk_wake_async(%struct.sock* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %2, %18, %16
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.TYPE_2__* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @dccp_send_reset(%struct.sock*, i32) #1

declare dso_local i32 @dccp_done(%struct.sock*) #1

declare dso_local i32 @dccp_fin(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @sk_wake_async(%struct.sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
