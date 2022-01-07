; ModuleID = '/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_local_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_local_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qrtr_node = type { i32 }
%struct.sk_buff = type { i64, i32* }
%struct.sockaddr_qrtr = type { i32, i32 }
%struct.qrtr_sock = type { i32 }
%struct.qrtr_cb = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qrtr_node*, %struct.sk_buff*, i32, %struct.sockaddr_qrtr*, %struct.sockaddr_qrtr*)* @qrtr_local_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qrtr_local_enqueue(%struct.qrtr_node* %0, %struct.sk_buff* %1, i32 %2, %struct.sockaddr_qrtr* %3, %struct.sockaddr_qrtr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qrtr_node*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_qrtr*, align 8
  %11 = alloca %struct.sockaddr_qrtr*, align 8
  %12 = alloca %struct.qrtr_sock*, align 8
  %13 = alloca %struct.qrtr_cb*, align 8
  store %struct.qrtr_node* %0, %struct.qrtr_node** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.sockaddr_qrtr* %3, %struct.sockaddr_qrtr** %10, align 8
  store %struct.sockaddr_qrtr* %4, %struct.sockaddr_qrtr** %11, align 8
  %14 = load %struct.sockaddr_qrtr*, %struct.sockaddr_qrtr** %11, align 8
  %15 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.qrtr_sock* @qrtr_port_lookup(i32 %16)
  store %struct.qrtr_sock* %17, %struct.qrtr_sock** %12, align 8
  %18 = load %struct.qrtr_sock*, %struct.qrtr_sock** %12, align 8
  %19 = icmp ne %struct.qrtr_sock* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load %struct.qrtr_sock*, %struct.qrtr_sock** %12, align 8
  %22 = getelementptr inbounds %struct.qrtr_sock, %struct.qrtr_sock* %21, i32 0, i32 0
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %22, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %20, %5
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = call i32 @kfree_skb(%struct.sk_buff* %28)
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %62

32:                                               ; preds = %20
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.qrtr_cb*
  store %struct.qrtr_cb* %36, %struct.qrtr_cb** %13, align 8
  %37 = load %struct.sockaddr_qrtr*, %struct.sockaddr_qrtr** %10, align 8
  %38 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.qrtr_cb*, %struct.qrtr_cb** %13, align 8
  %41 = getelementptr inbounds %struct.qrtr_cb, %struct.qrtr_cb* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sockaddr_qrtr*, %struct.sockaddr_qrtr** %10, align 8
  %43 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.qrtr_cb*, %struct.qrtr_cb** %13, align 8
  %46 = getelementptr inbounds %struct.qrtr_cb, %struct.qrtr_cb* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.qrtr_sock*, %struct.qrtr_sock** %12, align 8
  %48 = getelementptr inbounds %struct.qrtr_sock, %struct.qrtr_sock* %47, i32 0, i32 0
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = call i64 @sock_queue_rcv_skb(i32* %48, %struct.sk_buff* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %32
  %53 = load %struct.qrtr_sock*, %struct.qrtr_sock** %12, align 8
  %54 = call i32 @qrtr_port_put(%struct.qrtr_sock* %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = call i32 @kfree_skb(%struct.sk_buff* %55)
  %57 = load i32, i32* @ENOSPC, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %62

59:                                               ; preds = %32
  %60 = load %struct.qrtr_sock*, %struct.qrtr_sock** %12, align 8
  %61 = call i32 @qrtr_port_put(%struct.qrtr_sock* %60)
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %59, %52, %27
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local %struct.qrtr_sock* @qrtr_port_lookup(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @sock_queue_rcv_skb(i32*, %struct.sk_buff*) #1

declare dso_local i32 @qrtr_port_put(%struct.qrtr_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
