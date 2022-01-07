; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_reassembly.c_lowpan_frag_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_reassembly.c_lowpan_frag_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lowpan_frag_queue = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i64, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@INET_FRAG_COMPLETE = common dso_local global i32 0, align 4
@INET_FRAG_LAST_IN = common dso_local global i32 0, align 4
@LOWPAN_DISPATCH_FRAG1 = common dso_local global i64 0, align 8
@INET_FRAG_FIRST_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lowpan_frag_queue*, %struct.sk_buff*, i64)* @lowpan_frag_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lowpan_frag_queue(%struct.lowpan_frag_queue* %0, %struct.sk_buff* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lowpan_frag_queue*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.lowpan_frag_queue* %0, %struct.lowpan_frag_queue** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = call i32 @BUILD_BUG_ON(i32 0)
  %16 = call i32 @BUILD_BUG_ON(i32 0)
  %17 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %5, align 8
  %18 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @INET_FRAG_COMPLETE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %192

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call %struct.TYPE_3__* @lowpan_802154_cb(%struct.sk_buff* %26)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 3
  store i32 %30, i32* %11, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call %struct.TYPE_3__* @lowpan_802154_cb(%struct.sk_buff* %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %35, %38
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %76

42:                                               ; preds = %25
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %5, align 8
  %45 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %64, label %49

49:                                               ; preds = %42
  %50 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %5, align 8
  %51 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @INET_FRAG_LAST_IN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %49
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %5, align 8
  %60 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %58, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57, %42
  br label %192

65:                                               ; preds = %57, %49
  %66 = load i32, i32* @INET_FRAG_LAST_IN, align 4
  %67 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %5, align 8
  %68 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %5, align 8
  %74 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  br label %98

76:                                               ; preds = %25
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %5, align 8
  %79 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %77, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %76
  %84 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %5, align 8
  %85 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @INET_FRAG_LAST_IN, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %192

92:                                               ; preds = %83
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %5, align 8
  %95 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 4
  br label %97

97:                                               ; preds = %92, %76
  br label %98

98:                                               ; preds = %97, %65
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 4
  %101 = load %struct.net_device*, %struct.net_device** %100, align 8
  store %struct.net_device* %101, %struct.net_device** %9, align 8
  %102 = load %struct.net_device*, %struct.net_device** %9, align 8
  %103 = icmp ne %struct.net_device* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 4
  store %struct.net_device* null, %struct.net_device** %106, align 8
  br label %107

107:                                              ; preds = %104, %98
  %108 = call i32 (...) @barrier()
  %109 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %5, align 8
  %110 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 5
  %112 = load %struct.sk_buff*, %struct.sk_buff** %111, align 8
  store %struct.sk_buff* %112, %struct.sk_buff** %8, align 8
  %113 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %5, align 8
  %114 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %113, i32 0, i32 0
  %115 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @inet_frag_queue_insert(%struct.TYPE_4__* %114, %struct.sk_buff* %115, i32 %116, i32 %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %107
  br label %192

122:                                              ; preds = %107
  %123 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %5, align 8
  %127 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 4
  store i32 %125, i32* %128, align 8
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* @LOWPAN_DISPATCH_FRAG1, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %122
  %133 = load i32, i32* @INET_FRAG_FIRST_IN, align 4
  %134 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %5, align 8
  %135 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %133
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %132, %122
  %140 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %5, align 8
  %144 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, %142
  store i32 %147, i32* %145, align 8
  %148 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %5, align 8
  %149 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @add_frag_mem_limit(i32 %151, i32 %154)
  %156 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %5, align 8
  %157 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @INET_FRAG_FIRST_IN, align 4
  %161 = load i32, i32* @INET_FRAG_LAST_IN, align 4
  %162 = or i32 %160, %161
  %163 = icmp eq i32 %159, %162
  br i1 %163, label %164, label %189

164:                                              ; preds = %139
  %165 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %5, align 8
  %166 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %5, align 8
  %170 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %168, %172
  br i1 %173, label %174, label %189

174:                                              ; preds = %164
  %175 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %176 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %14, align 8
  %178 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %179 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %178, i32 0, i32 1
  store i64 0, i64* %179, align 8
  %180 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %5, align 8
  %181 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %182 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %183 = load %struct.net_device*, %struct.net_device** %9, align 8
  %184 = call i32 @lowpan_frag_reasm(%struct.lowpan_frag_queue* %180, %struct.sk_buff* %181, %struct.sk_buff* %182, %struct.net_device* %183)
  store i32 %184, i32* %13, align 4
  %185 = load i64, i64* %14, align 8
  %186 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %187 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %186, i32 0, i32 1
  store i64 %185, i64* %187, align 8
  %188 = load i32, i32* %13, align 4
  store i32 %188, i32* %4, align 4
  br label %195

189:                                              ; preds = %164, %139
  %190 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %191 = call i32 @skb_dst_drop(%struct.sk_buff* %190)
  store i32 -1, i32* %4, align 4
  br label %195

192:                                              ; preds = %121, %91, %64, %24
  %193 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %194 = call i32 @kfree_skb(%struct.sk_buff* %193)
  store i32 -1, i32* %4, align 4
  br label %195

195:                                              ; preds = %192, %189, %174
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.TYPE_3__* @lowpan_802154_cb(%struct.sk_buff*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @inet_frag_queue_insert(%struct.TYPE_4__*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @add_frag_mem_limit(i32, i32) #1

declare dso_local i32 @lowpan_frag_reasm(%struct.lowpan_frag_queue*, %struct.sk_buff*, %struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
