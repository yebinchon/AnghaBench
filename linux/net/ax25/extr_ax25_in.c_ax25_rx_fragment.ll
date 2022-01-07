; ModuleID = '/home/carl/AnghaBench/linux/net/ax25/extr_ax25_in.c_ax25_rx_fragment.c'
source_filename = "/home/carl/AnghaBench/linux/net/ax25/extr_ax25_in.c_ax25_rx_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32*, i64, i32 }

@AX25_SEG_FIRST = common dso_local global i32 0, align 4
@AX25_SEG_REM = common dso_local global i32 0, align 4
@AX25_MAX_HEADER_LEN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.sk_buff*)* @ax25_rx_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax25_rx_fragment(%struct.TYPE_6__* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %119

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AX25_SEG_FIRST, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %118, label %20

20:                                               ; preds = %12
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AX25_SEG_REM, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %24, %30
  br i1 %31, label %32, label %117

32:                                               ; preds = %20
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AX25_SEG_REM, align 4
  %38 = and i32 %36, %37
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @skb_pull(%struct.sk_buff* %41, i32 1)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call i32 @skb_queue_tail(i32* %51, %struct.sk_buff* %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %116

58:                                               ; preds = %32
  %59 = load i64, i64* @AX25_MAX_HEADER_LEN, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = load i32, i32* @GFP_ATOMIC, align 4
  %65 = call %struct.sk_buff* @alloc_skb(i64 %63, i32 %64)
  store %struct.sk_buff* %65, %struct.sk_buff** %6, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = icmp ne %struct.sk_buff* %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %58
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = call i32 @skb_queue_purge(i32* %70)
  store i32 1, i32* %3, align 4
  br label %152

72:                                               ; preds = %58
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = load i64, i64* @AX25_MAX_HEADER_LEN, align 8
  %75 = call i32 @skb_reserve(%struct.sk_buff* %73, i64 %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = call i32 @skb_reset_network_header(%struct.sk_buff* %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = call i32 @skb_reset_transport_header(%struct.sk_buff* %85)
  br label %87

87:                                               ; preds = %92, %72
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = call %struct.sk_buff* @skb_dequeue(i32* %89)
  store %struct.sk_buff* %90, %struct.sk_buff** %7, align 8
  %91 = icmp ne %struct.sk_buff* %90, null
  br i1 %91, label %92, label %105

92:                                               ; preds = %87
  %93 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @skb_put(%struct.sk_buff* %94, i64 %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %93, i32 %98, i64 %101)
  %103 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %104 = call i32 @kfree_skb(%struct.sk_buff* %103)
  br label %87

105:                                              ; preds = %87
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  store i64 0, i64* %107, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = call i64 @ax25_rx_iframe(%struct.TYPE_6__* %108, %struct.sk_buff* %109)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %114 = call i32 @kfree_skb(%struct.sk_buff* %113)
  br label %115

115:                                              ; preds = %112, %105
  br label %116

116:                                              ; preds = %115, %32
  store i32 1, i32* %3, align 4
  br label %152

117:                                              ; preds = %20
  br label %118

118:                                              ; preds = %117, %12
  br label %151

119:                                              ; preds = %2
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @AX25_SEG_FIRST, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %150

127:                                              ; preds = %119
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = call i32 @skb_queue_purge(i32* %129)
  %131 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @AX25_SEG_REM, align 4
  %136 = and i32 %134, %135
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %140 = call i32 @skb_pull(%struct.sk_buff* %139, i32 1)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  store i64 %143, i64* %145, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %149 = call i32 @skb_queue_tail(i32* %147, %struct.sk_buff* %148)
  store i32 1, i32* %3, align 4
  br label %152

150:                                              ; preds = %119
  br label %151

151:                                              ; preds = %150, %118
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %151, %127, %116, %68
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @ax25_rx_iframe(%struct.TYPE_6__*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
