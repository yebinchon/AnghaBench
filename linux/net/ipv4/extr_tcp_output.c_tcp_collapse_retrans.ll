; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_collapse_retrans.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_collapse_retrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_sock = type { %struct.sk_buff* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@TCPCB_EVER_RETRANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @tcp_collapse_retrans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_collapse_retrans(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcp_sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %9)
  store %struct.tcp_sock* %10, %struct.tcp_sock** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.sk_buff* @skb_rb_next(%struct.sk_buff* %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call i32 @tcp_skb_pcount(%struct.sk_buff* %16)
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = call i32 @tcp_skb_pcount(%struct.sk_buff* %20)
  %22 = icmp ne i32 %21, 1
  br label %23

23:                                               ; preds = %19, %2
  %24 = phi i1 [ true, %2 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i32 @skb_availroom(%struct.sk_buff* %31)
  %33 = icmp sle i32 %30, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @skb_put(%struct.sk_buff* %36, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @skb_copy_bits(%struct.sk_buff* %35, i32 0, i32 %38, i32 %39)
  br label %49

41:                                               ; preds = %29
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @tcp_skb_shift(%struct.sk_buff* %42, %struct.sk_buff* %43, i32 1, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %112

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %34
  br label %50

50:                                               ; preds = %49, %23
  %51 = load %struct.sock*, %struct.sock** %4, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call i32 @tcp_highest_sack_replace(%struct.sock* %51, %struct.sk_buff* %52, %struct.sk_buff* %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %65
  store i32 %70, i32* %68, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %71)
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @TCPCB_EVER_RETRANS, align 4
  %76 = and i32 %74, %75
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %77)
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %76
  store i32 %81, i32* %79, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %83 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %82)
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %86)
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %90 = call i32 @tcp_clear_retrans_hints_partial(%struct.tcp_sock* %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %92 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %93 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %92, i32 0, i32 0
  %94 = load %struct.sk_buff*, %struct.sk_buff** %93, align 8
  %95 = icmp eq %struct.sk_buff* %91, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %50
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %99 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %98, i32 0, i32 0
  store %struct.sk_buff* %97, %struct.sk_buff** %99, align 8
  br label %100

100:                                              ; preds = %96, %50
  %101 = load %struct.sock*, %struct.sock** %4, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %104 = call i32 @tcp_skb_pcount(%struct.sk_buff* %103)
  %105 = call i32 @tcp_adjust_pcount(%struct.sock* %101, %struct.sk_buff* %102, i32 %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %108 = call i32 @tcp_skb_collapse_tstamp(%struct.sk_buff* %106, %struct.sk_buff* %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %110 = load %struct.sock*, %struct.sock** %4, align 8
  %111 = call i32 @tcp_rtx_queue_unlink_and_free(%struct.sk_buff* %109, %struct.sock* %110)
  store i32 1, i32* %3, align 4
  br label %112

112:                                              ; preds = %100, %47
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_rb_next(%struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @tcp_skb_pcount(%struct.sk_buff*) #1

declare dso_local i32 @skb_availroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @tcp_skb_shift(%struct.sk_buff*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @tcp_highest_sack_replace(%struct.sock*, %struct.sk_buff*, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @tcp_clear_retrans_hints_partial(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_adjust_pcount(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @tcp_skb_collapse_tstamp(%struct.sk_buff*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_rtx_queue_unlink_and_free(%struct.sk_buff*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
