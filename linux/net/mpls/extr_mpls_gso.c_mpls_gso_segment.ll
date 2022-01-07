; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_mpls_gso.c_mpls_gso_segment.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_mpls_gso.c_mpls_gso_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, %struct.sk_buff*, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, i32)* @mpls_gso_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @mpls_gso_segment(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.sk_buff* @ERR_PTR(i32 %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = call i32 @skb_reset_network_header(%struct.sk_buff* %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = call i32 @skb_inner_network_header(%struct.sk_buff* %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = call i32 @skb_network_header(%struct.sk_buff* %24)
  %26 = sub i32 %23, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @pskb_may_pull(%struct.sk_buff* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %102

36:                                               ; preds = %2
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %9, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @__skb_pull(%struct.sk_buff* %45, i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %51 = call i32 @skb_reset_mac_header(%struct.sk_buff* %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %7, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call %struct.sk_buff* @skb_mac_gso_segment(%struct.sk_buff* %59, i32 %60)
  store %struct.sk_buff* %61, %struct.sk_buff** %5, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = call i64 @IS_ERR_OR_NULL(%struct.sk_buff* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %36
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @skb_gso_error_unwind(%struct.sk_buff* %66, i32 %67, i32 %68, i64 %69, i64 %70)
  br label %102

72:                                               ; preds = %36
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %73, %struct.sk_buff** %3, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = zext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %96, %72
  %80 = load i64, i64* %8, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %87 = call i32 @skb_reset_inner_network_header(%struct.sk_buff* %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @__skb_push(%struct.sk_buff* %88, i32 %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %92 = call i32 @skb_reset_mac_header(%struct.sk_buff* %91)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @skb_set_network_header(%struct.sk_buff* %93, i64 %94)
  br label %96

96:                                               ; preds = %79
  %97 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 2
  %99 = load %struct.sk_buff*, %struct.sk_buff** %98, align 8
  store %struct.sk_buff* %99, %struct.sk_buff** %3, align 8
  %100 = icmp ne %struct.sk_buff* %99, null
  br i1 %100, label %79, label %101

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101, %65, %35
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %103
}

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_inner_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_mac_gso_segment(%struct.sk_buff*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.sk_buff*) #1

declare dso_local i32 @skb_gso_error_unwind(%struct.sk_buff*, i32, i32, i64, i64) #1

declare dso_local i32 @skb_reset_inner_network_header(%struct.sk_buff*) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
