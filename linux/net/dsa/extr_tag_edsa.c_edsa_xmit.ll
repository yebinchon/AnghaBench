; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_tag_edsa.c_edsa_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_tag_edsa.c_edsa_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32* }
%struct.net_device = type { i32 }
%struct.dsa_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@DSA_HLEN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ETH_P_EDSA = common dso_local global i32 0, align 4
@EDSA_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, %struct.net_device*)* @edsa_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @edsa_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.dsa_port*, align 8
  %7 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.dsa_port* @dsa_slave_to_port(%struct.net_device* %8)
  store %struct.dsa_port* %9, %struct.dsa_port** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @ETH_P_8021Q, align 4
  %14 = call i64 @htons(i32 %13)
  %15 = icmp eq i64 %12, %14
  br i1 %15, label %16, label %87

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load i32, i32* @DSA_HLEN, align 4
  %19 = call i64 @skb_cow_head(%struct.sk_buff* %17, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %149

22:                                               ; preds = %16
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* @DSA_HLEN, align 4
  %25 = call i32 @skb_push(%struct.sk_buff* %23, i32 %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @DSA_HLEN, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* @ETH_ALEN, align 4
  %36 = mul nsw i32 2, %35
  %37 = call i32 @memmove(i32* %28, i32* %34, i32 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = mul nsw i32 2, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  store i32* %44, i32** %7, align 8
  %45 = load i32, i32* @ETH_P_EDSA, align 4
  %46 = ashr i32 %45, 8
  %47 = and i32 %46, 255
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @ETH_P_EDSA, align 4
  %51 = and i32 %50, 255
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %51, i32* %53, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 0, i32* %55, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  store i32 0, i32* %57, align 4
  %58 = load %struct.dsa_port*, %struct.dsa_port** %6, align 8
  %59 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 96, %62
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  store i32 %63, i32* %65, align 4
  %66 = load %struct.dsa_port*, %struct.dsa_port** %6, align 8
  %67 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = shl i32 %68, 3
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 5
  store i32 %69, i32* %71, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 6
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 16
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %22
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 5
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 6
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, -17
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %77, %22
  br label %147

87:                                               ; preds = %2
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = load i32, i32* @EDSA_HLEN, align 4
  %90 = call i64 @skb_cow_head(%struct.sk_buff* %88, i32 %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %149

93:                                               ; preds = %87
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = load i32, i32* @EDSA_HLEN, align 4
  %96 = call i32 @skb_push(%struct.sk_buff* %94, i32 %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* @EDSA_HLEN, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* @ETH_ALEN, align 4
  %107 = mul nsw i32 2, %106
  %108 = call i32 @memmove(i32* %99, i32* %105, i32 %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* @ETH_ALEN, align 4
  %113 = mul nsw i32 2, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  store i32* %115, i32** %7, align 8
  %116 = load i32, i32* @ETH_P_EDSA, align 4
  %117 = ashr i32 %116, 8
  %118 = and i32 %117, 255
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @ETH_P_EDSA, align 4
  %122 = and i32 %121, 255
  %123 = load i32*, i32** %7, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  store i32 %122, i32* %124, align 4
  %125 = load i32*, i32** %7, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  store i32 0, i32* %126, align 4
  %127 = load i32*, i32** %7, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 3
  store i32 0, i32* %128, align 4
  %129 = load %struct.dsa_port*, %struct.dsa_port** %6, align 8
  %130 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %129, i32 0, i32 1
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = or i32 64, %133
  %135 = load i32*, i32** %7, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 4
  store i32 %134, i32* %136, align 4
  %137 = load %struct.dsa_port*, %struct.dsa_port** %6, align 8
  %138 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = shl i32 %139, 3
  %141 = load i32*, i32** %7, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 5
  store i32 %140, i32* %142, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 6
  store i32 0, i32* %144, align 4
  %145 = load i32*, i32** %7, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 7
  store i32 0, i32* %146, align 4
  br label %147

147:                                              ; preds = %93, %86
  %148 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %148, %struct.sk_buff** %3, align 8
  br label %149

149:                                              ; preds = %147, %92, %21
  %150 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %150
}

declare dso_local %struct.dsa_port* @dsa_slave_to_port(%struct.net_device*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
