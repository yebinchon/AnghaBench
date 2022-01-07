; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_napi_get_frags.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_napi_get_frags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.napi_struct = type { %struct.sk_buff* }

@GRO_MAX_HEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @napi_get_frags(%struct.napi_struct* %0) #0 {
  %2 = alloca %struct.napi_struct*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.napi_struct* %0, %struct.napi_struct** %2, align 8
  %4 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %5 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %4, i32 0, i32 0
  %6 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %6, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = icmp ne %struct.sk_buff* %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %1
  %10 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %11 = load i32, i32* @GRO_MAX_HEAD, align 4
  %12 = call %struct.sk_buff* @napi_alloc_skb(%struct.napi_struct* %10, i32 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %3, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %18 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %17, i32 0, i32 0
  store %struct.sk_buff* %16, %struct.sk_buff** %18, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %21 = call i32 @skb_mark_napi_id(%struct.sk_buff* %19, %struct.napi_struct* %20)
  br label %22

22:                                               ; preds = %15, %9
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %24
}

declare dso_local %struct.sk_buff* @napi_alloc_skb(%struct.napi_struct*, i32) #1

declare dso_local i32 @skb_mark_napi_id(%struct.sk_buff*, %struct.napi_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
