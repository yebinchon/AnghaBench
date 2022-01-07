; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c_ip_push_pending_frames.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c_ip_push_pending_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.flowi4 = type { i32 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_push_pending_frames(%struct.sock* %0, %struct.flowi4* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.flowi4*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.flowi4* %1, %struct.flowi4** %5, align 8
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %9 = call %struct.sk_buff* @ip_finish_skb(%struct.sock* %7, %struct.flowi4* %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %18

13:                                               ; preds = %2
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call i32 @sock_net(%struct.sock* %14)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call i32 @ip_send_skb(i32 %15, %struct.sk_buff* %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %13, %12
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local %struct.sk_buff* @ip_finish_skb(%struct.sock*, %struct.flowi4*) #1

declare dso_local i32 @ip_send_skb(i32, %struct.sk_buff*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
