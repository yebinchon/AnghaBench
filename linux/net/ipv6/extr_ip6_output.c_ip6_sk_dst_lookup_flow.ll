; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_sk_dst_lookup_flow.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_sk_dst_lookup_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.sock = type { i32 }
%struct.flowi6 = type { i32 }
%struct.in6_addr = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_entry* @ip6_sk_dst_lookup_flow(%struct.sock* %0, %struct.flowi6* %1, %struct.in6_addr* %2, i32 %3) #0 {
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.flowi6*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dst_entry*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.flowi6* %1, %struct.flowi6** %7, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.sock*, %struct.sock** %6, align 8
  %12 = load %struct.sock*, %struct.sock** %6, align 8
  %13 = call %struct.TYPE_2__* @inet6_sk(%struct.sock* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.dst_entry* @sk_dst_check(%struct.sock* %11, i32 %15)
  store %struct.dst_entry* %16, %struct.dst_entry** %10, align 8
  %17 = load %struct.sock*, %struct.sock** %6, align 8
  %18 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %19 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %20 = call %struct.dst_entry* @ip6_sk_dst_check(%struct.sock* %17, %struct.dst_entry* %18, %struct.flowi6* %19)
  store %struct.dst_entry* %20, %struct.dst_entry** %10, align 8
  %21 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %22 = icmp ne %struct.dst_entry* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  store %struct.dst_entry* %24, %struct.dst_entry** %5, align 8
  br label %44

25:                                               ; preds = %4
  %26 = load %struct.sock*, %struct.sock** %6, align 8
  %27 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %28 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %29 = call %struct.dst_entry* @ip6_dst_lookup_flow(%struct.sock* %26, %struct.flowi6* %27, %struct.in6_addr* %28)
  store %struct.dst_entry* %29, %struct.dst_entry** %10, align 8
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %34 = call i32 @IS_ERR(%struct.dst_entry* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load %struct.sock*, %struct.sock** %6, align 8
  %38 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %39 = call i32 @dst_clone(%struct.dst_entry* %38)
  %40 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %41 = call i32 @ip6_sk_dst_store_flow(%struct.sock* %37, i32 %39, %struct.flowi6* %40)
  br label %42

42:                                               ; preds = %36, %32, %25
  %43 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  store %struct.dst_entry* %43, %struct.dst_entry** %5, align 8
  br label %44

44:                                               ; preds = %42, %23
  %45 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  ret %struct.dst_entry* %45
}

declare dso_local %struct.dst_entry* @sk_dst_check(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_2__* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.dst_entry* @ip6_sk_dst_check(%struct.sock*, %struct.dst_entry*, %struct.flowi6*) #1

declare dso_local %struct.dst_entry* @ip6_dst_lookup_flow(%struct.sock*, %struct.flowi6*, %struct.in6_addr*) #1

declare dso_local i32 @IS_ERR(%struct.dst_entry*) #1

declare dso_local i32 @ip6_sk_dst_store_flow(%struct.sock*, i32, %struct.flowi6*) #1

declare dso_local i32 @dst_clone(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
