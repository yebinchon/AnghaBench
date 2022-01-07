; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_fragment.c_ip_check_defrag.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_fragment.c_ip_check_defrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.iphdr = type { i32, i32, i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @ip_check_defrag(%struct.net* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iphdr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @ETH_P_IP, align 4
  %15 = call i64 @htons(i32 %14)
  %16 = icmp ne i64 %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %18, %struct.sk_buff** %4, align 8
  br label %104

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call i32 @skb_network_offset(%struct.sk_buff* %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @skb_copy_bits(%struct.sk_buff* %22, i32 %23, %struct.iphdr* %8, i32 12)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %27, %struct.sk_buff** %4, align 8
  br label %104

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 5
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %8, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 4
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %28
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %37, %struct.sk_buff** %4, align 8
  br label %104

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %8, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ntohs(i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %45, %46
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %10, align 4
  %51 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %52, 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49, %38
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %56, %struct.sk_buff** %4, align 8
  br label %104

57:                                               ; preds = %49
  %58 = call i64 @ip_is_fragment(%struct.iphdr* %8)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %102

60:                                               ; preds = %57
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = load i32, i32* @GFP_ATOMIC, align 4
  %63 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %61, i32 %62)
  store %struct.sk_buff* %63, %struct.sk_buff** %6, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = icmp ne %struct.sk_buff* %64, null
  br i1 %65, label %66, label %101

66:                                               ; preds = %60
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %8, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %70, 4
  %72 = add nsw i32 %68, %71
  %73 = call i32 @pskb_may_pull(%struct.sk_buff* %67, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %66
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = call i32 @kfree_skb(%struct.sk_buff* %76)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %104

78:                                               ; preds = %66
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %80, %81
  %83 = call i64 @pskb_trim_rcsum(%struct.sk_buff* %79, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %87 = call i32 @kfree_skb(%struct.sk_buff* %86)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %104

88:                                               ; preds = %78
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = call i32 @IPCB(%struct.sk_buff* %89)
  %91 = call i32 @memset(i32 %90, i32 0, i32 4)
  %92 = load %struct.net*, %struct.net** %5, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i64 @ip_defrag(%struct.net* %92, %struct.sk_buff* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %104

98:                                               ; preds = %88
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = call i32 @skb_clear_hash(%struct.sk_buff* %99)
  br label %101

101:                                              ; preds = %98, %60
  br label %102

102:                                              ; preds = %101, %57
  %103 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %103, %struct.sk_buff** %4, align 8
  br label %104

104:                                              ; preds = %102, %97, %85, %75, %55, %36, %26, %17
  %105 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %105
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, %struct.iphdr*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @ip_is_fragment(%struct.iphdr*) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @pskb_trim_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @IPCB(%struct.sk_buff*) #1

declare dso_local i64 @ip_defrag(%struct.net*, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_clear_hash(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
