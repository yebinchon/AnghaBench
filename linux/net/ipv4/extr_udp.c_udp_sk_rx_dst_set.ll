; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_sk_rx_dst_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_sk_rx_dst_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dst_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_sk_rx_dst_set(%struct.sock* %0, %struct.dst_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.dst_entry*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %5, align 8
  %7 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %8 = call i64 @dst_hold_safe(%struct.dst_entry* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %14 = call %struct.dst_entry* @xchg(i32* %12, %struct.dst_entry* %13)
  store %struct.dst_entry* %14, %struct.dst_entry** %6, align 8
  %15 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %16 = call i32 @dst_release(%struct.dst_entry* %15)
  %17 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %18 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %19 = icmp ne %struct.dst_entry* %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %10
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i64 @dst_hold_safe(%struct.dst_entry*) #1

declare dso_local %struct.dst_entry* @xchg(i32*, %struct.dst_entry*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
