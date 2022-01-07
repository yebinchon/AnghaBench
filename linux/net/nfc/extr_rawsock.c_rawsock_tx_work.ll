; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_rawsock.c_rawsock_tx_work.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_rawsock.c_rawsock_tx_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.sock = type { i32, i32 }
%struct.nfc_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.nfc_dev* }

@.str = private unnamed_addr constant [21 x i8] c"sk=%p target_idx=%u\0A\00", align 1
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@rawsock_data_exchange_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @rawsock_tx_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rawsock_tx_work(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.nfc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %8 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %9 = call %struct.sock* @to_rawsock_sk(%struct.work_struct* %8)
  store %struct.sock* %9, %struct.sock** %3, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.TYPE_2__* @nfc_rawsock(%struct.sock* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.nfc_dev*, %struct.nfc_dev** %12, align 8
  store %struct.nfc_dev* %13, %struct.nfc_dev** %4, align 8
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = call %struct.TYPE_2__* @nfc_rawsock(%struct.sock* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.sock* %18, i32 %19)
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SEND_SHUTDOWN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = call i32 @rawsock_write_queue_purge(%struct.sock* %28)
  br label %50

30:                                               ; preds = %1
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 1
  %33 = call %struct.sk_buff* @skb_dequeue(i32* %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %6, align 8
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = call i32 @sock_hold(%struct.sock* %34)
  %36 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = load i32, i32* @rawsock_data_exchange_complete, align 4
  %40 = load %struct.sock*, %struct.sock** %3, align 8
  %41 = call i32 @nfc_data_exchange(%struct.nfc_dev* %36, i32 %37, %struct.sk_buff* %38, i32 %39, %struct.sock* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %30
  %45 = load %struct.sock*, %struct.sock** %3, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @rawsock_report_error(%struct.sock* %45, i32 %46)
  %48 = load %struct.sock*, %struct.sock** %3, align 8
  %49 = call i32 @sock_put(%struct.sock* %48)
  br label %50

50:                                               ; preds = %27, %44, %30
  ret void
}

declare dso_local %struct.sock* @to_rawsock_sk(%struct.work_struct*) #1

declare dso_local %struct.TYPE_2__* @nfc_rawsock(%struct.sock*) #1

declare dso_local i32 @pr_debug(i8*, %struct.sock*, i32) #1

declare dso_local i32 @rawsock_write_queue_purge(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @nfc_data_exchange(%struct.nfc_dev*, i32, %struct.sk_buff*, i32, %struct.sock*) #1

declare dso_local i32 @rawsock_report_error(%struct.sock*, i32) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
