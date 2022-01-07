; ModuleID = '/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_port_remove.c'
source_filename = "/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_port_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qrtr_sock = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.qrtr_ctrl_pkt = type { %struct.TYPE_3__, i8* }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.sk_buff = type { i32 }
%struct.sockaddr_qrtr = type { i32, i32, i32 }

@AF_QIPCRTR = common dso_local global i32 0, align 4
@QRTR_NODE_BCAST = common dso_local global i32 0, align 4
@QRTR_PORT_CTRL = common dso_local global i32 0, align 4
@QRTR_TYPE_DEL_CLIENT = common dso_local global i32 0, align 4
@qrtr_port_lock = common dso_local global i32 0, align 4
@qrtr_ports = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qrtr_sock*)* @qrtr_port_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qrtr_port_remove(%struct.qrtr_sock* %0) #0 {
  %2 = alloca %struct.qrtr_sock*, align 8
  %3 = alloca %struct.qrtr_ctrl_pkt*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_qrtr, align 4
  store %struct.qrtr_sock* %0, %struct.qrtr_sock** %2, align 8
  %7 = load %struct.qrtr_sock*, %struct.qrtr_sock** %2, align 8
  %8 = getelementptr inbounds %struct.qrtr_sock, %struct.qrtr_sock* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @AF_QIPCRTR, align 4
  %12 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %6, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @QRTR_NODE_BCAST, align 4
  %14 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %6, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @QRTR_PORT_CTRL, align 4
  %16 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %6, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = call %struct.sk_buff* @qrtr_alloc_ctrl_packet(%struct.qrtr_ctrl_pkt** %3)
  store %struct.sk_buff* %17, %struct.sk_buff** %4, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %20, label %50

20:                                               ; preds = %1
  %21 = load i32, i32* @QRTR_TYPE_DEL_CLIENT, align 4
  %22 = call i8* @cpu_to_le32(i32 %21)
  %23 = load %struct.qrtr_ctrl_pkt*, %struct.qrtr_ctrl_pkt** %3, align 8
  %24 = getelementptr inbounds %struct.qrtr_ctrl_pkt, %struct.qrtr_ctrl_pkt* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.qrtr_sock*, %struct.qrtr_sock** %2, align 8
  %26 = getelementptr inbounds %struct.qrtr_sock, %struct.qrtr_sock* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @cpu_to_le32(i32 %28)
  %30 = load %struct.qrtr_ctrl_pkt*, %struct.qrtr_ctrl_pkt** %3, align 8
  %31 = getelementptr inbounds %struct.qrtr_ctrl_pkt, %struct.qrtr_ctrl_pkt* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i8* %29, i8** %32, align 8
  %33 = load %struct.qrtr_sock*, %struct.qrtr_sock** %2, align 8
  %34 = getelementptr inbounds %struct.qrtr_sock, %struct.qrtr_sock* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @cpu_to_le32(i32 %36)
  %38 = load %struct.qrtr_ctrl_pkt*, %struct.qrtr_ctrl_pkt** %3, align 8
  %39 = getelementptr inbounds %struct.qrtr_ctrl_pkt, %struct.qrtr_ctrl_pkt* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load %struct.qrtr_sock*, %struct.qrtr_sock** %2, align 8
  %43 = getelementptr inbounds %struct.qrtr_sock, %struct.qrtr_sock* %42, i32 0, i32 0
  %44 = call i32 @skb_set_owner_w(%struct.sk_buff* %41, i32* %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load i32, i32* @QRTR_TYPE_DEL_CLIENT, align 4
  %47 = load %struct.qrtr_sock*, %struct.qrtr_sock** %2, align 8
  %48 = getelementptr inbounds %struct.qrtr_sock, %struct.qrtr_sock* %47, i32 0, i32 1
  %49 = call i32 @qrtr_bcast_enqueue(i32* null, %struct.sk_buff* %45, i32 %46, %struct.TYPE_4__* %48, %struct.sockaddr_qrtr* %6)
  br label %50

50:                                               ; preds = %20, %1
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @QRTR_PORT_CTRL, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %50
  %56 = load %struct.qrtr_sock*, %struct.qrtr_sock** %2, align 8
  %57 = getelementptr inbounds %struct.qrtr_sock, %struct.qrtr_sock* %56, i32 0, i32 0
  %58 = call i32 @__sock_put(i32* %57)
  %59 = call i32 @mutex_lock(i32* @qrtr_port_lock)
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @idr_remove(i32* @qrtr_ports, i32 %60)
  %62 = call i32 @mutex_unlock(i32* @qrtr_port_lock)
  ret void
}

declare dso_local %struct.sk_buff* @qrtr_alloc_ctrl_packet(%struct.qrtr_ctrl_pkt**) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, i32*) #1

declare dso_local i32 @qrtr_bcast_enqueue(i32*, %struct.sk_buff*, i32, %struct.TYPE_4__*, %struct.sockaddr_qrtr*) #1

declare dso_local i32 @__sock_put(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
