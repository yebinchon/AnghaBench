; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_bcm.c_bcm_send_to_user.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_bcm.c_bcm_send_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_op = type { i32, i32, i32, %struct.sock* }
%struct.sock = type { i32 }
%struct.bcm_msg_head = type { i32, i32 }
%struct.canfd_frame = type { i32, i32 }
%struct.sk_buff = type { i64, i32 }
%struct.sockaddr_can = type { i32, i32 }
%struct.bcm_sock = type { i32 }

@BCM_CAN_FLAGS_MASK = common dso_local global i32 0, align 4
@AF_CAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_op*, %struct.bcm_msg_head*, %struct.canfd_frame*, i32)* @bcm_send_to_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_send_to_user(%struct.bcm_op* %0, %struct.bcm_msg_head* %1, %struct.canfd_frame* %2, i32 %3) #0 {
  %5 = alloca %struct.bcm_op*, align 8
  %6 = alloca %struct.bcm_msg_head*, align 8
  %7 = alloca %struct.canfd_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.canfd_frame*, align 8
  %11 = alloca %struct.sockaddr_can*, align 8
  %12 = alloca %struct.sock*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.bcm_sock*, align 8
  store %struct.bcm_op* %0, %struct.bcm_op** %5, align 8
  store %struct.bcm_msg_head* %1, %struct.bcm_msg_head** %6, align 8
  store %struct.canfd_frame* %2, %struct.canfd_frame** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %17 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %16, i32 0, i32 3
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %12, align 8
  %19 = load %struct.bcm_msg_head*, %struct.bcm_msg_head** %6, align 8
  %20 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %23 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul i32 %21, %24
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = zext i32 %26 to i64
  %28 = add i64 8, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32 (...) @gfp_any()
  %31 = call %struct.sk_buff* @alloc_skb(i32 %29, i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %9, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %4
  br label %102

35:                                               ; preds = %4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %37 = load %struct.bcm_msg_head*, %struct.bcm_msg_head** %6, align 8
  %38 = bitcast %struct.bcm_msg_head* %37 to %struct.canfd_frame*
  %39 = call i32 @skb_put_data(%struct.sk_buff* %36, %struct.canfd_frame* %38, i32 8)
  %40 = load %struct.bcm_msg_head*, %struct.bcm_msg_head** %6, align 8
  %41 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %35
  %45 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %46 = call i64 @skb_tail_pointer(%struct.sk_buff* %45)
  %47 = inttoptr i64 %46 to %struct.canfd_frame*
  store %struct.canfd_frame* %47, %struct.canfd_frame** %10, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %49 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @skb_put_data(%struct.sk_buff* %48, %struct.canfd_frame* %49, i32 %50)
  %52 = load %struct.bcm_msg_head*, %struct.bcm_msg_head** %6, align 8
  %53 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %62

56:                                               ; preds = %44
  %57 = load i32, i32* @BCM_CAN_FLAGS_MASK, align 4
  %58 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %59 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %44
  br label %63

63:                                               ; preds = %62, %35
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %68 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %66, %63
  %73 = call i32 @sock_skb_cb_check_size(i32 8)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.sockaddr_can*
  store %struct.sockaddr_can* %77, %struct.sockaddr_can** %11, align 8
  %78 = load %struct.sockaddr_can*, %struct.sockaddr_can** %11, align 8
  %79 = call i32 @memset(%struct.sockaddr_can* %78, i32 0, i32 8)
  %80 = load i32, i32* @AF_CAN, align 4
  %81 = load %struct.sockaddr_can*, %struct.sockaddr_can** %11, align 8
  %82 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %84 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.sockaddr_can*, %struct.sockaddr_can** %11, align 8
  %87 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.sock*, %struct.sock** %12, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %90 = call i32 @sock_queue_rcv_skb(%struct.sock* %88, %struct.sk_buff* %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %72
  %94 = load %struct.sock*, %struct.sock** %12, align 8
  %95 = call %struct.bcm_sock* @bcm_sk(%struct.sock* %94)
  store %struct.bcm_sock* %95, %struct.bcm_sock** %15, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %97 = call i32 @kfree_skb(%struct.sk_buff* %96)
  %98 = load %struct.bcm_sock*, %struct.bcm_sock** %15, align 8
  %99 = getelementptr inbounds %struct.bcm_sock, %struct.bcm_sock* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %34, %93, %72
  ret void
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @gfp_any(...) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, %struct.canfd_frame*, i32) #1

declare dso_local i64 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @sock_skb_cb_check_size(i32) #1

declare dso_local i32 @memset(%struct.sockaddr_can*, i32, i32) #1

declare dso_local i32 @sock_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.bcm_sock* @bcm_sk(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
