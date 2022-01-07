; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_lwt_bpf.c_bpf_input.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_lwt_bpf.c_bpf_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dst_entry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.sk_buff*)* }
%struct.bpf_lwt = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@NO_REDIRECT = common dso_local global i32 0, align 4
@BPF_LWT_REROUTE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @bpf_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_input(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.bpf_lwt*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %7)
  store %struct.dst_entry* %8, %struct.dst_entry** %4, align 8
  %9 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %10 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call %struct.bpf_lwt* @bpf_lwt_lwtunnel(%struct.TYPE_4__* %11)
  store %struct.bpf_lwt* %12, %struct.bpf_lwt** %5, align 8
  %13 = load %struct.bpf_lwt*, %struct.bpf_lwt** %5, align 8
  %14 = getelementptr inbounds %struct.bpf_lwt, %struct.bpf_lwt* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = load %struct.bpf_lwt*, %struct.bpf_lwt** %5, align 8
  %21 = getelementptr inbounds %struct.bpf_lwt, %struct.bpf_lwt* %20, i32 0, i32 0
  %22 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %23 = load i32, i32* @NO_REDIRECT, align 4
  %24 = call i32 @run_lwt_bpf(%struct.sk_buff* %19, %struct.TYPE_3__* %21, %struct.dst_entry* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %61

29:                                               ; preds = %18
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @BPF_LWT_REROUTE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = call i32 @bpf_lwt_input_reroute(%struct.sk_buff* %34)
  store i32 %35, i32* %2, align 4
  br label %61

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %39 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %41, align 8
  %43 = icmp ne i32 (%struct.sk_buff*)* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = call i32 @kfree_skb(%struct.sk_buff* %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %61

53:                                               ; preds = %37
  %54 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %55 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %57, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = call i32 %58(%struct.sk_buff* %59)
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %53, %48, %33, %27
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.bpf_lwt* @bpf_lwt_lwtunnel(%struct.TYPE_4__*) #1

declare dso_local i32 @run_lwt_bpf(%struct.sk_buff*, %struct.TYPE_3__*, %struct.dst_entry*, i32) #1

declare dso_local i32 @bpf_lwt_input_reroute(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
