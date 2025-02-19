; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_kfree_skb_partial.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_kfree_skb_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@skbuff_head_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kfree_skb_partial(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call i32 @skb_release_head_state(%struct.sk_buff* %8)
  %10 = load i32, i32* @skbuff_head_cache, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call i32 @kmem_cache_free(i32 %10, %struct.sk_buff* %11)
  br label %16

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call i32 @__kfree_skb(%struct.sk_buff* %14)
  br label %16

16:                                               ; preds = %13, %7
  ret void
}

declare dso_local i32 @skb_release_head_state(%struct.sk_buff*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.sk_buff*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
