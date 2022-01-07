; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_rtx_queue_purge.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_rtx_queue_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rb_node = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tcp_rtx_queue_purge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_rtx_queue_purge(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 0
  %7 = call %struct.rb_node* @rb_first(i32* %6)
  store %struct.rb_node* %7, %struct.rb_node** %3, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %10 = icmp ne %struct.rb_node* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %13 = call %struct.sk_buff* @rb_to_skb(%struct.rb_node* %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %4, align 8
  %14 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %15 = call %struct.rb_node* @rb_next(%struct.rb_node* %14)
  store %struct.rb_node* %15, %struct.rb_node** %3, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = load %struct.sock*, %struct.sock** %2, align 8
  %18 = call i32 @tcp_rtx_queue_unlink(%struct.sk_buff* %16, %struct.sock* %17)
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @sk_wmem_free_skb(%struct.sock* %19, %struct.sk_buff* %20)
  br label %8

22:                                               ; preds = %8
  ret void
}

declare dso_local %struct.rb_node* @rb_first(i32*) #1

declare dso_local %struct.sk_buff* @rb_to_skb(%struct.rb_node*) #1

declare dso_local %struct.rb_node* @rb_next(%struct.rb_node*) #1

declare dso_local i32 @tcp_rtx_queue_unlink(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @sk_wmem_free_skb(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
