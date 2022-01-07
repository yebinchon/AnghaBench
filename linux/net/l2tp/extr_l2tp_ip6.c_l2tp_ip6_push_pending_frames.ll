; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ip6.c_l2tp_ip6_push_pending_frames.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ip6.c_l2tp_ip6_push_pending_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @l2tp_ip6_push_pending_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_ip6_push_pending_frames(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  store i64* null, i64** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0
  %8 = call %struct.sk_buff* @skb_peek(i32* %7)
  store %struct.sk_buff* %8, %struct.sk_buff** %3, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = icmp eq %struct.sk_buff* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call i64 @skb_transport_header(%struct.sk_buff* %13)
  %15 = inttoptr i64 %14 to i64*
  store i64* %15, i64** %4, align 8
  %16 = load i64*, i64** %4, align 8
  store i64 0, i64* %16, align 8
  %17 = load %struct.sock*, %struct.sock** %2, align 8
  %18 = call i32 @ip6_push_pending_frames(%struct.sock* %17)
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %12, %11
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @ip6_push_pending_frames(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
