; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_update_pmtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_update_pmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net = type { i32 }
%struct.ipv6hdr = type { i32, i32 }
%struct.dst_entry = type { i32 }
%struct.flowi6 = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip6_update_pmtu(%struct.sk_buff* %0, %struct.net* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ipv6hdr*, align 8
  %14 = alloca %struct.dst_entry*, align 8
  %15 = alloca %struct.flowi6, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.net* %1, %struct.net** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %19, %struct.ipv6hdr** %13, align 8
  %20 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %15, i32 0, i32 0
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %15, i32 0, i32 1
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %15, i32 0, i32 2
  %25 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %26 = call i32 @ip6_flowinfo(%struct.ipv6hdr* %25)
  store i32 %26, i32* %24, align 4
  %27 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %15, i32 0, i32 3
  %28 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %29 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %27, align 4
  %31 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %15, i32 0, i32 4
  %32 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %33 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %31, align 4
  %35 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %15, i32 0, i32 5
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %6
  %39 = load i32, i32* %11, align 4
  br label %46

40:                                               ; preds = %6
  %41 = load %struct.net*, %struct.net** %8, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @IP6_REPLY_MARK(%struct.net* %41, i32 %44)
  br label %46

46:                                               ; preds = %40, %38
  %47 = phi i32 [ %39, %38 ], [ %45, %40 ]
  store i32 %47, i32* %35, align 4
  %48 = load %struct.net*, %struct.net** %8, align 8
  %49 = call %struct.dst_entry* @ip6_route_output(%struct.net* %48, i32* null, %struct.flowi6* %15)
  store %struct.dst_entry* %49, %struct.dst_entry** %14, align 8
  %50 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %51 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %46
  %55 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %56 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @ntohl(i32 %57)
  %59 = call i32 @__ip6_rt_update_pmtu(%struct.dst_entry* %55, i32* null, %struct.ipv6hdr* %56, i32 %58)
  br label %60

60:                                               ; preds = %54, %46
  %61 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %62 = call i32 @dst_release(%struct.dst_entry* %61)
  ret void
}

declare dso_local i32 @ip6_flowinfo(%struct.ipv6hdr*) #1

declare dso_local i32 @IP6_REPLY_MARK(%struct.net*, i32) #1

declare dso_local %struct.dst_entry* @ip6_route_output(%struct.net*, i32*, %struct.flowi6*) #1

declare dso_local i32 @__ip6_rt_update_pmtu(%struct.dst_entry*, i32*, %struct.ipv6hdr*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
