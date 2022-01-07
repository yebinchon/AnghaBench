; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_gre_offload.c_gre_gro_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_gre_offload.c_gre_gro_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.gre_base_hdr = type { i32, i32 }
%struct.packet_offload = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.sk_buff*, i32)* }
%struct.TYPE_4__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@SKB_GSO_GRE = common dso_local global i32 0, align 4
@GRE_KEY = common dso_local global i32 0, align 4
@GRE_HEADER_SECTION = common dso_local global i64 0, align 8
@GRE_CSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @gre_gro_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gre_gro_complete(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gre_base_hdr*, align 8
  %6 = alloca %struct.packet_offload*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = inttoptr i64 %15 to %struct.gre_base_hdr*
  store %struct.gre_base_hdr* %16, %struct.gre_base_hdr** %5, align 8
  store i32 8, i32* %7, align 4
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* @SKB_GSO_GRE, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %5, align 8
  %26 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %5, align 8
  %29 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @GRE_KEY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load i64, i64* @GRE_HEADER_SECTION, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %34, %2
  %41 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %5, align 8
  %42 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @GRE_CSUM, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load i64, i64* @GRE_HEADER_SECTION, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %47, %40
  %54 = call i32 (...) @rcu_read_lock()
  %55 = load i32, i32* %9, align 4
  %56 = call %struct.packet_offload* @gro_find_complete_by_type(i32 %55)
  store %struct.packet_offload* %56, %struct.packet_offload** %6, align 8
  %57 = load %struct.packet_offload*, %struct.packet_offload** %6, align 8
  %58 = icmp ne %struct.packet_offload* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load %struct.packet_offload*, %struct.packet_offload** %6, align 8
  %61 = getelementptr inbounds %struct.packet_offload, %struct.packet_offload* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32 (%struct.sk_buff*, i32)*, i32 (%struct.sk_buff*, i32)** %62, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %7, align 4
  %67 = add i32 %65, %66
  %68 = call i32 %63(%struct.sk_buff* %64, i32 %67)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %59, %53
  %70 = call i32 (...) @rcu_read_unlock()
  %71 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %7, align 4
  %74 = add i32 %72, %73
  %75 = call i32 @skb_set_inner_mac_header(%struct.sk_buff* %71, i32 %74)
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.packet_offload* @gro_find_complete_by_type(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @skb_set_inner_mac_header(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
