; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_sk_dst_store_flow.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_sk_dst_store_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dst_entry = type { i32 }
%struct.flowi6 = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip6_sk_dst_store_flow(%struct.sock* %0, %struct.dst_entry* %1, %struct.flowi6* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.flowi6*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %5, align 8
  store %struct.flowi6* %2, %struct.flowi6** %6, align 8
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %9 = load %struct.flowi6*, %struct.flowi6** %6, align 8
  %10 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %9, i32 0, i32 1
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = call i64 @ipv6_addr_equal(i32* %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %15
  %20 = phi i32* [ %17, %15 ], [ null, %18 ]
  %21 = call i32 @ip6_dst_store(%struct.sock* %7, %struct.dst_entry* %8, i32* %20, i32* null)
  ret void
}

declare dso_local i32 @ip6_dst_store(%struct.sock*, %struct.dst_entry*, i32*, i32*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
