; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_test_lwt_bpf.c___do_push_ll_and_redirect.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_test_lwt_bpf.c___do_push_ll_and_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i32 }
%struct.ethhdr = type { i32, i32, i32 }

@SRC_MAC = common dso_local global i32 0, align 4
@DST_MAC = common dso_local global i32 0, align 4
@DST_IFINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"skb_change_head() failed: %d\0A\00", align 1
@ETH_P_IP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"skb_store_bytes() failed: %d\0A\00", align 1
@BPF_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.__sk_buff*)* @__do_push_ll_and_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__do_push_ll_and_redirect(%struct.__sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.__sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ethhdr, align 4
  store %struct.__sk_buff* %0, %struct.__sk_buff** %3, align 8
  %9 = load i32, i32* @SRC_MAC, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @DST_MAC, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @DST_IFINDEX, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %13 = call i32 @bpf_skb_change_head(%struct.__sk_buff* %12, i32 14, i32 0)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i32, i32* @ETH_P_IP, align 4
  %21 = call i32 @__constant_htons(i32 %20)
  %22 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %8, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %8, i32 0, i32 1
  %24 = call i32 @memcpy(i32* %23, i32* %4, i32 6)
  %25 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %8, i32 0, i32 0
  %26 = call i32 @memcpy(i32* %25, i32* %5, i32 6)
  %27 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %28 = call i32 @bpf_skb_store_bytes(%struct.__sk_buff* %27, i32 0, %struct.ethhdr* %8, i32 12, i32 0)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @BPF_DROP, align 4
  store i32 %34, i32* %2, align 4
  br label %38

35:                                               ; preds = %19
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @bpf_redirect(i32 %36, i32 0)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @bpf_skb_change_head(%struct.__sk_buff*, i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @__constant_htons(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bpf_skb_store_bytes(%struct.__sk_buff*, i32, %struct.ethhdr*, i32, i32) #1

declare dso_local i32 @bpf_redirect(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
