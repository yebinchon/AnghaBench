; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_bc_nack_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_bc_nack_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.tipc_msg = type { i32 }

@STATE_MSG = common dso_local global i32 0, align 4
@BC_NACK_SND_SUPPRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_link_bc_nack_rcv(%struct.tipc_link* %0, %struct.sk_buff* %1, %struct.sk_buff_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tipc_link*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  %8 = alloca %struct.tipc_msg*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.tipc_link* %0, %struct.tipc_link** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %16)
  store %struct.tipc_msg* %17, %struct.tipc_msg** %8, align 8
  %18 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %19 = call i64 @msg_destnode(%struct.tipc_msg* %18)
  store i64 %19, i64* %9, align 8
  %20 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %21 = call i32 @msg_type(%struct.tipc_msg* %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %23 = call i64 @msg_bcast_ack(%struct.tipc_msg* %22)
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %12, align 8
  %26 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %27 = call i64 @msg_bcgap_to(%struct.tipc_msg* %26)
  store i64 %27, i64* %13, align 8
  %28 = load i64, i64* %13, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call i32 @kfree_skb(%struct.sk_buff* %30)
  %32 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %33 = call i32 @tipc_link_is_up(%struct.tipc_link* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %3
  %36 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %37 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35, %3
  store i32 0, i32* %4, align 4
  br label %91

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @STATE_MSG, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %91

46:                                               ; preds = %41
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %49 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @tipc_own_addr(i32 %50)
  %52 = icmp eq i64 %47, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %46
  %54 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %57 = call i32 @tipc_link_bc_ack_rcv(%struct.tipc_link* %54, i64 %55, %struct.sk_buff_head* %56)
  %58 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %59 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %65 = call i32 @tipc_link_bc_retrans(i32 %60, %struct.tipc_link* %61, i64 %62, i64 %63, %struct.sk_buff_head* %64)
  store i32 %65, i32* %15, align 4
  %66 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %67 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %15, align 4
  store i32 %71, i32* %4, align 4
  br label %91

72:                                               ; preds = %46
  %73 = load i64, i64* %14, align 8
  %74 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %75 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @more(i64 %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %72
  %80 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %81 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %12, align 8
  %84 = call i32 @less(i32 %82, i64 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* @BC_NACK_SND_SUPPRESS, align 4
  %88 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %89 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %79, %72
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %53, %45, %40
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @msg_destnode(%struct.tipc_msg*) #1

declare dso_local i32 @msg_type(%struct.tipc_msg*) #1

declare dso_local i64 @msg_bcast_ack(%struct.tipc_msg*) #1

declare dso_local i64 @msg_bcgap_to(%struct.tipc_msg*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @tipc_link_is_up(%struct.tipc_link*) #1

declare dso_local i64 @tipc_own_addr(i32) #1

declare dso_local i32 @tipc_link_bc_ack_rcv(%struct.tipc_link*, i64, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_link_bc_retrans(i32, %struct.tipc_link*, i64, i64, %struct.sk_buff_head*) #1

declare dso_local i64 @more(i64, i32) #1

declare dso_local i32 @less(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
