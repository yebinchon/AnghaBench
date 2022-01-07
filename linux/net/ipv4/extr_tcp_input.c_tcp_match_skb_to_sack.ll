; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_match_skb_to_sack.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_match_skb_to_sack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@TCP_FRAG_IN_RTX_QUEUE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32, i32)* @tcp_match_skb_to_sack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_match_skb_to_sack(%struct.sock* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @after(i32 %15, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @before(i32 %23, i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %22, %4
  %32 = phi i1 [ false, %4 ], [ %30, %22 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = call i32 @tcp_skb_pcount(%struct.sk_buff* %34)
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %134

37:                                               ; preds = %31
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %134, label %40

40:                                               ; preds = %37
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @after(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %134

48:                                               ; preds = %40
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = call i32 @tcp_skb_mss(%struct.sk_buff* %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @after(i32 %51, i32 %55)
  %57 = icmp ne i64 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %48
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sub i32 %63, %67
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %72, %62
  br label %89

75:                                               ; preds = %48
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %77)
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sub i32 %76, %80
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %136

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %88, %74
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ugt i32 %90, %91
  br i1 %92, label %93, label %111

93:                                               ; preds = %89
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = udiv i32 %94, %95
  %97 = load i32, i32* %13, align 4
  %98 = mul i32 %96, %97
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %14, align 4
  %108 = add i32 %107, %106
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %105, %101, %93
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %12, align 4
  br label %111

111:                                              ; preds = %109, %89
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp uge i32 %112, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  store i32 0, i32* %5, align 4
  br label %136

121:                                              ; preds = %117, %111
  %122 = load %struct.sock*, %struct.sock** %6, align 8
  %123 = load i32, i32* @TCP_FRAG_IN_RTX_QUEUE, align 4
  %124 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* @GFP_ATOMIC, align 4
  %128 = call i32 @tcp_fragment(%struct.sock* %122, i32 %123, %struct.sk_buff* %124, i32 %125, i32 %126, i32 %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %121
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %5, align 4
  br label %136

133:                                              ; preds = %121
  br label %134

134:                                              ; preds = %133, %40, %37, %31
  %135 = load i32, i32* %11, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %134, %131, %120, %85
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i64 @after(i32, i32) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @before(i32, i32) #1

declare dso_local i32 @tcp_skb_pcount(%struct.sk_buff*) #1

declare dso_local i32 @tcp_skb_mss(%struct.sk_buff*) #1

declare dso_local i32 @tcp_fragment(%struct.sock*, i32, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
