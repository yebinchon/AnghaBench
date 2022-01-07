; ModuleID = '/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_endpoint_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_endpoint_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qrtr_endpoint = type { %struct.qrtr_node* }
%struct.qrtr_node = type { i32, i32*, i32 }
%struct.sockaddr_qrtr = type { i32, i32, i32 }
%struct.qrtr_ctrl_pkt = type { i32 }
%struct.sk_buff = type { i32 }

@AF_QIPCRTR = common dso_local global i32 0, align 4
@QRTR_PORT_CTRL = common dso_local global i32 0, align 4
@qrtr_local_nid = common dso_local global i32 0, align 4
@QRTR_TYPE_BYE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qrtr_endpoint_unregister(%struct.qrtr_endpoint* %0) #0 {
  %2 = alloca %struct.qrtr_endpoint*, align 8
  %3 = alloca %struct.qrtr_node*, align 8
  %4 = alloca %struct.sockaddr_qrtr, align 4
  %5 = alloca %struct.sockaddr_qrtr, align 4
  %6 = alloca %struct.qrtr_ctrl_pkt*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.qrtr_endpoint* %0, %struct.qrtr_endpoint** %2, align 8
  %8 = load %struct.qrtr_endpoint*, %struct.qrtr_endpoint** %2, align 8
  %9 = getelementptr inbounds %struct.qrtr_endpoint, %struct.qrtr_endpoint* %8, i32 0, i32 0
  %10 = load %struct.qrtr_node*, %struct.qrtr_node** %9, align 8
  store %struct.qrtr_node* %10, %struct.qrtr_node** %3, align 8
  %11 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %4, i32 0, i32 0
  %12 = load i32, i32* @AF_QIPCRTR, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %4, i32 0, i32 1
  %14 = load %struct.qrtr_node*, %struct.qrtr_node** %3, align 8
  %15 = getelementptr inbounds %struct.qrtr_node, %struct.qrtr_node* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %13, align 4
  %17 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %4, i32 0, i32 2
  %18 = load i32, i32* @QRTR_PORT_CTRL, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %5, i32 0, i32 0
  %20 = load i32, i32* @AF_QIPCRTR, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %5, i32 0, i32 1
  %22 = load i32, i32* @qrtr_local_nid, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %5, i32 0, i32 2
  %24 = load i32, i32* @QRTR_PORT_CTRL, align 4
  store i32 %24, i32* %23, align 4
  %25 = load %struct.qrtr_node*, %struct.qrtr_node** %3, align 8
  %26 = getelementptr inbounds %struct.qrtr_node, %struct.qrtr_node* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.qrtr_node*, %struct.qrtr_node** %3, align 8
  %29 = getelementptr inbounds %struct.qrtr_node, %struct.qrtr_node* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load %struct.qrtr_node*, %struct.qrtr_node** %3, align 8
  %31 = getelementptr inbounds %struct.qrtr_node, %struct.qrtr_node* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = call %struct.sk_buff* @qrtr_alloc_ctrl_packet(%struct.qrtr_ctrl_pkt** %6)
  store %struct.sk_buff* %33, %struct.sk_buff** %7, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %1
  %37 = load i32, i32* @QRTR_TYPE_BYE, align 4
  %38 = call i32 @cpu_to_le32(i32 %37)
  %39 = load %struct.qrtr_ctrl_pkt*, %struct.qrtr_ctrl_pkt** %6, align 8
  %40 = getelementptr inbounds %struct.qrtr_ctrl_pkt, %struct.qrtr_ctrl_pkt* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = load i32, i32* @QRTR_TYPE_BYE, align 4
  %43 = call i32 @qrtr_local_enqueue(i32* null, %struct.sk_buff* %41, i32 %42, %struct.sockaddr_qrtr* %4, %struct.sockaddr_qrtr* %5)
  br label %44

44:                                               ; preds = %36, %1
  %45 = load %struct.qrtr_node*, %struct.qrtr_node** %3, align 8
  %46 = call i32 @qrtr_node_release(%struct.qrtr_node* %45)
  %47 = load %struct.qrtr_endpoint*, %struct.qrtr_endpoint** %2, align 8
  %48 = getelementptr inbounds %struct.qrtr_endpoint, %struct.qrtr_endpoint* %47, i32 0, i32 0
  store %struct.qrtr_node* null, %struct.qrtr_node** %48, align 8
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.sk_buff* @qrtr_alloc_ctrl_packet(%struct.qrtr_ctrl_pkt**) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @qrtr_local_enqueue(i32*, %struct.sk_buff*, i32, %struct.sockaddr_qrtr*, %struct.sockaddr_qrtr*) #1

declare dso_local i32 @qrtr_node_release(%struct.qrtr_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
