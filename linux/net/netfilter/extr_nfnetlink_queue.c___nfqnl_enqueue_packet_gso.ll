; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_queue.c___nfqnl_enqueue_packet_gso.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_queue.c___nfqnl_enqueue_packet_gso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nfqnl_instance = type { i32 }
%struct.sk_buff = type { i32* }
%struct.nf_queue_entry = type { %struct.sk_buff* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nfqnl_instance*, %struct.sk_buff*, %struct.nf_queue_entry*)* @__nfqnl_enqueue_packet_gso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nfqnl_enqueue_packet_gso(%struct.net* %0, %struct.nfqnl_instance* %1, %struct.sk_buff* %2, %struct.nf_queue_entry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.nfqnl_instance*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.nf_queue_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nf_queue_entry*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.nfqnl_instance* %1, %struct.nfqnl_instance** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.nf_queue_entry* %3, %struct.nf_queue_entry** %9, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = call i32 @nf_bridge_adjust_segmented_data(%struct.sk_buff* %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %4
  %22 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %9, align 8
  %23 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %22, i32 0, i32 0
  %24 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  store %struct.sk_buff* %24, %struct.sk_buff** %12, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %9, align 8
  %27 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %26, i32 0, i32 0
  store %struct.sk_buff* %25, %struct.sk_buff** %27, align 8
  %28 = load %struct.net*, %struct.net** %6, align 8
  %29 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %7, align 8
  %30 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %9, align 8
  %31 = call i32 @__nfqnl_enqueue_packet(%struct.net* %28, %struct.nfqnl_instance* %29, %struct.nf_queue_entry* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %36 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %9, align 8
  %37 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %36, i32 0, i32 0
  store %struct.sk_buff* %35, %struct.sk_buff** %37, align 8
  br label %38

38:                                               ; preds = %34, %21
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %63

40:                                               ; preds = %4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = call i32 @skb_mark_not_on_list(%struct.sk_buff* %41)
  %43 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %9, align 8
  %44 = call %struct.nf_queue_entry* @nf_queue_entry_dup(%struct.nf_queue_entry* %43)
  store %struct.nf_queue_entry* %44, %struct.nf_queue_entry** %11, align 8
  %45 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %11, align 8
  %46 = icmp ne %struct.nf_queue_entry* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %40
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %11, align 8
  %50 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %49, i32 0, i32 0
  store %struct.sk_buff* %48, %struct.sk_buff** %50, align 8
  %51 = load %struct.net*, %struct.net** %6, align 8
  %52 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %7, align 8
  %53 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %11, align 8
  %54 = call i32 @__nfqnl_enqueue_packet(%struct.net* %51, %struct.nfqnl_instance* %52, %struct.nf_queue_entry* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %11, align 8
  %59 = call i32 @free_entry(%struct.nf_queue_entry* %58)
  br label %60

60:                                               ; preds = %57, %47
  br label %61

61:                                               ; preds = %60, %40
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %38
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @nf_bridge_adjust_segmented_data(%struct.sk_buff*) #1

declare dso_local i32 @__nfqnl_enqueue_packet(%struct.net*, %struct.nfqnl_instance*, %struct.nf_queue_entry*) #1

declare dso_local i32 @skb_mark_not_on_list(%struct.sk_buff*) #1

declare dso_local %struct.nf_queue_entry* @nf_queue_entry_dup(%struct.nf_queue_entry*) #1

declare dso_local i32 @free_entry(%struct.nf_queue_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
