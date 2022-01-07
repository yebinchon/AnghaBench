; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_output.c_dccp_write_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_output.c_dccp_write_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dccp_sock = type { i32, i32 }
%struct.sk_buff = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"packet discarded due to err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dccp_write_xmit(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.dccp_sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %6)
  store %struct.dccp_sock* %7, %struct.dccp_sock** %3, align 8
  br label %8

8:                                                ; preds = %40, %1
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.sk_buff* @dccp_qpolicy_top(%struct.sock* %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %4, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %12, label %41

12:                                               ; preds = %8
  %13 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %14 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32 @ccid_hc_tx_send_packet(i32 %15, %struct.sock* %16, %struct.sk_buff* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ccid_packet_dequeue_eval(i32 %19)
  switch i32 %20, label %40 [
    i32 128, label %21
    i32 131, label %22
    i32 129, label %31
    i32 130, label %34
  ]

21:                                               ; preds = %12
  br label %41

22:                                               ; preds = %12
  %23 = load %struct.sock*, %struct.sock** %2, align 8
  %24 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %25 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %24, i32 0, i32 0
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @msecs_to_jiffies(i32 %27)
  %29 = add nsw i64 %26, %28
  %30 = call i32 @sk_reset_timer(%struct.sock* %23, i32* %25, i64 %29)
  br label %41

31:                                               ; preds = %12
  %32 = load %struct.sock*, %struct.sock** %2, align 8
  %33 = call i32 @dccp_xmit_packet(%struct.sock* %32)
  br label %40

34:                                               ; preds = %12
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i32 @dccp_qpolicy_drop(%struct.sock* %35, %struct.sk_buff* %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @dccp_pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %34, %12, %31
  br label %8

41:                                               ; preds = %21, %22, %8
  ret void
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @dccp_qpolicy_top(%struct.sock*) #1

declare dso_local i32 @ccid_hc_tx_send_packet(i32, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @ccid_packet_dequeue_eval(i32) #1

declare dso_local i32 @sk_reset_timer(%struct.sock*, i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dccp_xmit_packet(%struct.sock*) #1

declare dso_local i32 @dccp_qpolicy_drop(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
