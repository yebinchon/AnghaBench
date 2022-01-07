; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_if.c_llc_establish_connection.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_if.c_llc_establish_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.llc_addr = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.llc_sock = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.llc_conn_state_ev = type { i32, i32, i32 }

@EISCONN = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@LLC_CONN_EV_TYPE_PRIM = common dso_local global i32 0, align 4
@LLC_CONN_PRIM = common dso_local global i32 0, align 4
@LLC_PRIM_TYPE_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_establish_connection(%struct.sock* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.llc_addr, align 4
  %11 = alloca %struct.llc_addr, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.llc_sock*, align 8
  %14 = alloca %struct.sock*, align 8
  %15 = alloca %struct.llc_conn_state_ev*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* @EISCONN, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = call %struct.llc_sock* @llc_sk(%struct.sock* %18)
  store %struct.llc_sock* %19, %struct.llc_sock** %13, align 8
  %20 = load %struct.llc_sock*, %struct.llc_sock** %13, align 8
  %21 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.llc_addr, %struct.llc_addr* %10, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %struct.llc_addr, %struct.llc_addr* %11, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.llc_addr, %struct.llc_addr* %11, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @memcpy(i32 %30, i32* %31, i32 4)
  %33 = getelementptr inbounds %struct.llc_addr, %struct.llc_addr* %10, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @memcpy(i32 %34, i32* %35, i32 4)
  %37 = load %struct.llc_sock*, %struct.llc_sock** %13, align 8
  %38 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = call %struct.sock* @llc_lookup_established(%struct.TYPE_4__* %39, %struct.llc_addr* %11, %struct.llc_addr* %10)
  store %struct.sock* %40, %struct.sock** %14, align 8
  %41 = load %struct.sock*, %struct.sock** %14, align 8
  %42 = icmp ne %struct.sock* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %4
  %44 = load %struct.sock*, %struct.sock** %14, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TCP_ESTABLISHED, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %50, %struct.sock** %5, align 8
  br label %83

51:                                               ; preds = %43
  %52 = load %struct.sock*, %struct.sock** %14, align 8
  %53 = call i32 @sock_put(%struct.sock* %52)
  br label %54

54:                                               ; preds = %51
  br label %55

55:                                               ; preds = %54, %4
  %56 = load %struct.sock*, %struct.sock** %5, align 8
  %57 = call i32 @sock_hold(%struct.sock* %56)
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* @GFP_ATOMIC, align 4
  %61 = call %struct.sk_buff* @alloc_skb(i32 0, i32 %60)
  store %struct.sk_buff* %61, %struct.sk_buff** %12, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %63 = icmp ne %struct.sk_buff* %62, null
  br i1 %63, label %64, label %82

64:                                               ; preds = %55
  %65 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %66 = call %struct.llc_conn_state_ev* @llc_conn_ev(%struct.sk_buff* %65)
  store %struct.llc_conn_state_ev* %66, %struct.llc_conn_state_ev** %15, align 8
  %67 = load i32, i32* @LLC_CONN_EV_TYPE_PRIM, align 4
  %68 = load %struct.llc_conn_state_ev*, %struct.llc_conn_state_ev** %15, align 8
  %69 = getelementptr inbounds %struct.llc_conn_state_ev, %struct.llc_conn_state_ev* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @LLC_CONN_PRIM, align 4
  %71 = load %struct.llc_conn_state_ev*, %struct.llc_conn_state_ev** %15, align 8
  %72 = getelementptr inbounds %struct.llc_conn_state_ev, %struct.llc_conn_state_ev* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @LLC_PRIM_TYPE_REQ, align 4
  %74 = load %struct.llc_conn_state_ev*, %struct.llc_conn_state_ev** %15, align 8
  %75 = getelementptr inbounds %struct.llc_conn_state_ev, %struct.llc_conn_state_ev* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %77 = load %struct.sock*, %struct.sock** %5, align 8
  %78 = call i32 @skb_set_owner_w(%struct.sk_buff* %76, %struct.sock* %77)
  %79 = load %struct.sock*, %struct.sock** %5, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %81 = call i32 @llc_conn_state_process(%struct.sock* %79, %struct.sk_buff* %80)
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %64, %55
  br label %83

83:                                               ; preds = %82, %49
  %84 = load %struct.sock*, %struct.sock** %5, align 8
  %85 = call i32 @sock_put(%struct.sock* %84)
  %86 = load i32, i32* %9, align 4
  ret i32 %86
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local %struct.sock* @llc_lookup_established(%struct.TYPE_4__*, %struct.llc_addr*, %struct.llc_addr*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local %struct.llc_conn_state_ev* @llc_conn_ev(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @llc_conn_state_process(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
