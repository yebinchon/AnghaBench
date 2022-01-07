; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_copy_expand.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_copy_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }

@NUMA_NO_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call i32 @skb_alloc_rx_flag(%struct.sk_buff* %24)
  %26 = load i32, i32* @NUMA_NO_NODE, align 4
  %27 = call %struct.sk_buff* @__alloc_skb(i64 %22, i32 %23, i32 %25, i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %10, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = call i32 @skb_headroom(%struct.sk_buff* %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %79

33:                                               ; preds = %4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @skb_reserve(%struct.sk_buff* %34, i32 %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @skb_put(%struct.sk_buff* %37, i64 %40)
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %12, align 4
  br label %52

48:                                               ; preds = %33
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %12, align 4
  %51 = sub nsw i32 %49, %50
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %48, %46
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sub nsw i32 0, %54
  %56 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = call i32 @skb_copy_bits(%struct.sk_buff* %53, i32 %55, i64 %61, i64 %67)
  %69 = call i32 @BUG_ON(i32 %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = call i32 @skb_copy_header(%struct.sk_buff* %70, %struct.sk_buff* %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %11, align 4
  %76 = sub nsw i32 %74, %75
  %77 = call i32 @skb_headers_offset_update(%struct.sk_buff* %73, i32 %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %78, %struct.sk_buff** %5, align 8
  br label %79

79:                                               ; preds = %52, %32
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %80
}

declare dso_local %struct.sk_buff* @__alloc_skb(i64, i32, i32, i32) #1

declare dso_local i32 @skb_alloc_rx_flag(%struct.sk_buff*) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, i64, i64) #1

declare dso_local i32 @skb_copy_header(%struct.sk_buff*, %struct.sk_buff*) #1

declare dso_local i32 @skb_headers_offset_update(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
