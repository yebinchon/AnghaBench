; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_x25_link.c_x25_transmit_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_x25_link.c_x25_transmit_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.x25_neigh = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x25_transmit_link(%struct.sk_buff* %0, %struct.x25_neigh* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.x25_neigh*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.x25_neigh* %1, %struct.x25_neigh** %4, align 8
  %5 = load %struct.x25_neigh*, %struct.x25_neigh** %4, align 8
  %6 = getelementptr inbounds %struct.x25_neigh, %struct.x25_neigh* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %26 [
    i32 131, label %8
    i32 130, label %17
    i32 129, label %17
    i32 128, label %22
  ]

8:                                                ; preds = %2
  %9 = load %struct.x25_neigh*, %struct.x25_neigh** %4, align 8
  %10 = getelementptr inbounds %struct.x25_neigh, %struct.x25_neigh* %9, i32 0, i32 1
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call i32 @skb_queue_tail(i32* %10, %struct.sk_buff* %11)
  %13 = load %struct.x25_neigh*, %struct.x25_neigh** %4, align 8
  %14 = getelementptr inbounds %struct.x25_neigh, %struct.x25_neigh* %13, i32 0, i32 0
  store i32 130, i32* %14, align 4
  %15 = load %struct.x25_neigh*, %struct.x25_neigh** %4, align 8
  %16 = call i32 @x25_establish_link(%struct.x25_neigh* %15)
  br label %26

17:                                               ; preds = %2, %2
  %18 = load %struct.x25_neigh*, %struct.x25_neigh** %4, align 8
  %19 = getelementptr inbounds %struct.x25_neigh, %struct.x25_neigh* %18, i32 0, i32 1
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = call i32 @skb_queue_tail(i32* %19, %struct.sk_buff* %20)
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = load %struct.x25_neigh*, %struct.x25_neigh** %4, align 8
  %25 = call i32 @x25_send_frame(%struct.sk_buff* %23, %struct.x25_neigh* %24)
  br label %26

26:                                               ; preds = %2, %22, %17, %8
  ret void
}

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @x25_establish_link(%struct.x25_neigh*) #1

declare dso_local i32 @x25_send_frame(%struct.sk_buff*, %struct.x25_neigh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
