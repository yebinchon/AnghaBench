; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_queue.c_nf_ip_saveroute.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_queue.c_nf_ip_saveroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_queue_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ip_rt_info = type { i32, i32, i32, i32 }
%struct.iphdr = type { i32, i32, i32 }

@NF_INET_LOCAL_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.nf_queue_entry*)* @nf_ip_saveroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_ip_saveroute(%struct.sk_buff* %0, %struct.nf_queue_entry* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.nf_queue_entry*, align 8
  %5 = alloca %struct.ip_rt_info*, align 8
  %6 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.nf_queue_entry* %1, %struct.nf_queue_entry** %4, align 8
  %7 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %4, align 8
  %8 = call %struct.ip_rt_info* @nf_queue_entry_reroute(%struct.nf_queue_entry* %7)
  store %struct.ip_rt_info* %8, %struct.ip_rt_info** %5, align 8
  %9 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %4, align 8
  %10 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NF_INET_LOCAL_OUT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %16)
  store %struct.iphdr* %17, %struct.iphdr** %6, align 8
  %18 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %19 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ip_rt_info*, %struct.ip_rt_info** %5, align 8
  %22 = getelementptr inbounds %struct.ip_rt_info, %struct.ip_rt_info* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %24 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ip_rt_info*, %struct.ip_rt_info** %5, align 8
  %27 = getelementptr inbounds %struct.ip_rt_info, %struct.ip_rt_info* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %29 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ip_rt_info*, %struct.ip_rt_info** %5, align 8
  %32 = getelementptr inbounds %struct.ip_rt_info, %struct.ip_rt_info* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ip_rt_info*, %struct.ip_rt_info** %5, align 8
  %37 = getelementptr inbounds %struct.ip_rt_info, %struct.ip_rt_info* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %15, %2
  ret void
}

declare dso_local %struct.ip_rt_info* @nf_queue_entry_reroute(%struct.nf_queue_entry*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
