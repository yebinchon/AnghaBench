; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_try_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_try_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@LINUX_MIB_TCPRCVCOALESCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.sk_buff*, i32*)* @tcp_try_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_try_coalesce(%struct.sock* %0, %struct.sk_buff* %1, %struct.sk_buff* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %13 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %15, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %86

22:                                               ; preds = %4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @skb_try_coalesce(%struct.sk_buff* %23, %struct.sk_buff* %24, i32* %25, i32* %10)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %86

29:                                               ; preds = %22
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.sock*, %struct.sock** %6, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 0
  %33 = call i32 @atomic_add(i32 %30, i32* %32)
  %34 = load %struct.sock*, %struct.sock** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @sk_mem_charge(%struct.sock* %34, i32 %35)
  %37 = load %struct.sock*, %struct.sock** %6, align 8
  %38 = call i32 @sock_net(%struct.sock* %37)
  %39 = load i32, i32* @LINUX_MIB_TCPRCVCOALESCE, align 4
  %40 = call i32 @NET_INC_STATS(i32 %38, i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %45)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i64 %44, i64* %47, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %52)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  store i32 %51, i32* %54, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %58
  store i32 %63, i32* %61, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %65 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %64)
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %29
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %70)
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  store i32 1, i32* %72, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %79 = call %struct.TYPE_3__* @skb_hwtstamps(%struct.sk_buff* %78)
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %83 = call %struct.TYPE_3__* @skb_hwtstamps(%struct.sk_buff* %82)
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 4
  br label %85

85:                                               ; preds = %69, %29
  store i32 1, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %28, %21
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_try_coalesce(%struct.sk_buff*, %struct.sk_buff*, i32*, i32*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @sk_mem_charge(%struct.sock*, i32) #1

declare dso_local i32 @NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.TYPE_3__* @skb_hwtstamps(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
