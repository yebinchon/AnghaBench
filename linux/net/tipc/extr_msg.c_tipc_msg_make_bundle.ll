; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_msg.c_tipc_msg_make_bundle.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_msg.c_tipc_msg_make_bundle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@INT_H_SIZE = common dso_local global i32 0, align 4
@MSG_FRAGMENTER = common dso_local global i64 0, align 8
@TUNNEL_PROTOCOL = common dso_local global i64 0, align 8
@BCAST_PROTOCOL = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@MSG_BUNDLER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_msg_make_bundle(%struct.sk_buff** %0, %struct.tipc_msg* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff**, align 8
  %7 = alloca %struct.tipc_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.tipc_msg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff** %0, %struct.sk_buff*** %6, align 8
  store %struct.tipc_msg* %1, %struct.tipc_msg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %15 = call i32 @msg_size(%struct.tipc_msg* %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @INT_H_SIZE, align 4
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %13, align 4
  %19 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %20 = call i64 @msg_user(%struct.tipc_msg* %19)
  %21 = load i64, i64* @MSG_FRAGMENTER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %84

24:                                               ; preds = %4
  %25 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %26 = call i64 @msg_user(%struct.tipc_msg* %25)
  %27 = load i64, i64* @TUNNEL_PROTOCOL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %84

30:                                               ; preds = %24
  %31 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %32 = call i64 @msg_user(%struct.tipc_msg* %31)
  %33 = load i64, i64* @BCAST_PROTOCOL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %84

36:                                               ; preds = %30
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = sdiv i32 %38, 2
  %40 = icmp sgt i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %84

42:                                               ; preds = %36
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @GFP_ATOMIC, align 4
  %45 = call %struct.sk_buff* @tipc_buf_acquire(i32 %43, i32 %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %10, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %84

49:                                               ; preds = %42
  %50 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %51 = load i32, i32* @INT_H_SIZE, align 4
  %52 = call i32 @skb_trim(%struct.sk_buff* %50, i32 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %54 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %53)
  store %struct.tipc_msg* %54, %struct.tipc_msg** %11, align 8
  %55 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %56 = call i32 @msg_prevnode(%struct.tipc_msg* %55)
  %57 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %58 = load i32, i32* @MSG_BUNDLER, align 4
  %59 = load i32, i32* @INT_H_SIZE, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @tipc_msg_init(i32 %56, %struct.tipc_msg* %57, i32 %58, i32 0, i32 %59, i32 %60)
  %62 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %63 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %64 = call i32 @msg_importance(%struct.tipc_msg* %63)
  %65 = call i32 @msg_set_importance(%struct.tipc_msg* %62, i32 %64)
  %66 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %67 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %68 = call i32 @msg_seqno(%struct.tipc_msg* %67)
  %69 = call i32 @msg_set_seqno(%struct.tipc_msg* %66, i32 %68)
  %70 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %71 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %72 = call i32 @msg_ack(%struct.tipc_msg* %71)
  %73 = call i32 @msg_set_ack(%struct.tipc_msg* %70, i32 %72)
  %74 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %75 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %76 = call i32 @msg_bcast_ack(%struct.tipc_msg* %75)
  %77 = call i32 @msg_set_bcast_ack(%struct.tipc_msg* %74, i32 %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %79 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @tipc_msg_bundle(%struct.sk_buff* %78, %struct.tipc_msg* %79, i32 %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %83 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  store %struct.sk_buff* %82, %struct.sk_buff** %83, align 8
  store i32 1, i32* %5, align 4
  br label %84

84:                                               ; preds = %49, %48, %41, %35, %29, %23
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @msg_size(%struct.tipc_msg*) #1

declare dso_local i64 @msg_user(%struct.tipc_msg*) #1

declare dso_local %struct.sk_buff* @tipc_buf_acquire(i32, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @tipc_msg_init(i32, %struct.tipc_msg*, i32, i32, i32, i32) #1

declare dso_local i32 @msg_prevnode(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_importance(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_importance(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_seqno(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_seqno(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_ack(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_ack(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_bcast_ack(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_bcast_ack(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_msg_bundle(%struct.sk_buff*, %struct.tipc_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
