; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_device.c_send_hsr_supervision_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_device.c_send_hsr_supervision_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsr_port = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32, %struct.TYPE_5__*, i32, i8* }
%struct.hsr_tag = type { i8*, i8* }
%struct.hsr_sup_tag = type { i32, i64, i8* }
%struct.hsr_sup_payload = type { i32 }

@ETH_P_HSR = common dso_local global i32 0, align 4
@ETH_P_PRP = common dso_local global i32 0, align 4
@TC_PRIO_CONTROL = common dso_local global i32 0, align 4
@HSR_V1_SUP_LSDUSIZE = common dso_local global i32 0, align 4
@ETH_ZLEN = common dso_local global i64 0, align 8
@HSR_HLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"HSR: Could not send supervision frame\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsr_port*, i64, i64)* @send_hsr_supervision_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_hsr_supervision_frame(%struct.hsr_port* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.hsr_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hsr_tag*, align 8
  %11 = alloca %struct.hsr_sup_tag*, align 8
  %12 = alloca %struct.hsr_sup_payload*, align 8
  %13 = alloca i64, align 8
  store %struct.hsr_port* %0, %struct.hsr_port** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.hsr_port*, %struct.hsr_port** %4, align 8
  %15 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = call i32 @LL_RESERVED_SPACE(%struct.TYPE_5__* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.hsr_port*, %struct.hsr_port** %4, align 8
  %19 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 44, %24
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %25, %27
  %29 = trunc i64 %28 to i32
  %30 = call %struct.sk_buff* @dev_alloc_skb(i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %7, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %3
  br label %210

34:                                               ; preds = %3
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @skb_reserve(%struct.sk_buff* %35, i32 %36)
  %38 = load %struct.hsr_port*, %struct.hsr_port** %4, align 8
  %39 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %42, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* @ETH_P_HSR, align 4
  br label %49

47:                                               ; preds = %34
  %48 = load i32, i32* @ETH_P_PRP, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = call i8* @htons(i32 %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* @TC_PRIO_CONTROL, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %49
  %64 = load i32, i32* @ETH_P_HSR, align 4
  br label %67

65:                                               ; preds = %49
  %66 = load i32, i32* @ETH_P_PRP, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = load %struct.hsr_port*, %struct.hsr_port** %4, align 8
  %70 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @dev_hard_header(%struct.sk_buff* %57, %struct.TYPE_5__* %60, i32 %68, i32 %73, i32 %78, i32 %81)
  %83 = icmp sle i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %67
  br label %206

85:                                               ; preds = %67
  %86 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %87 = call i32 @skb_reset_mac_header(%struct.sk_buff* %86)
  %88 = load i64, i64* %6, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %92 = call i8* @skb_put(%struct.sk_buff* %91, i32 16)
  %93 = bitcast i8* %92 to %struct.hsr_tag*
  store %struct.hsr_tag* %93, %struct.hsr_tag** %10, align 8
  %94 = load i32, i32* @ETH_P_PRP, align 4
  %95 = call i8* @htons(i32 %94)
  %96 = load %struct.hsr_tag*, %struct.hsr_tag** %10, align 8
  %97 = getelementptr inbounds %struct.hsr_tag, %struct.hsr_tag* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load %struct.hsr_tag*, %struct.hsr_tag** %10, align 8
  %99 = load i32, i32* @HSR_V1_SUP_LSDUSIZE, align 4
  %100 = call i32 @set_hsr_tag_LSDU_size(%struct.hsr_tag* %98, i32 %99)
  br label %101

101:                                              ; preds = %90, %85
  %102 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %103 = call i8* @skb_put(%struct.sk_buff* %102, i32 24)
  %104 = bitcast i8* %103 to %struct.hsr_sup_tag*
  store %struct.hsr_sup_tag* %104, %struct.hsr_sup_tag** %11, align 8
  %105 = load %struct.hsr_sup_tag*, %struct.hsr_sup_tag** %11, align 8
  %106 = load i64, i64* %6, align 8
  %107 = icmp ne i64 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 0, i32 15
  %110 = call i32 @set_hsr_stag_path(%struct.hsr_sup_tag* %105, i32 %109)
  %111 = load %struct.hsr_sup_tag*, %struct.hsr_sup_tag** %11, align 8
  %112 = load i64, i64* %6, align 8
  %113 = call i32 @set_hsr_stag_HSR_ver(%struct.hsr_sup_tag* %111, i64 %112)
  %114 = load %struct.hsr_port*, %struct.hsr_port** %4, align 8
  %115 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %114, i32 0, i32 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64, i64* %13, align 8
  %119 = call i32 @spin_lock_irqsave(i32* %117, i64 %118)
  %120 = load i64, i64* %6, align 8
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %122, label %151

122:                                              ; preds = %101
  %123 = load %struct.hsr_port*, %struct.hsr_port** %4, align 8
  %124 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @htons(i32 %127)
  %129 = load %struct.hsr_sup_tag*, %struct.hsr_sup_tag** %11, align 8
  %130 = getelementptr inbounds %struct.hsr_sup_tag, %struct.hsr_sup_tag* %129, i32 0, i32 2
  store i8* %128, i8** %130, align 8
  %131 = load %struct.hsr_port*, %struct.hsr_port** %4, align 8
  %132 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %131, i32 0, i32 1
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @htons(i32 %135)
  %137 = load %struct.hsr_tag*, %struct.hsr_tag** %10, align 8
  %138 = getelementptr inbounds %struct.hsr_tag, %struct.hsr_tag* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  %139 = load %struct.hsr_port*, %struct.hsr_port** %4, align 8
  %140 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %139, i32 0, i32 1
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  %145 = load %struct.hsr_port*, %struct.hsr_port** %4, align 8
  %146 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %145, i32 0, i32 1
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  br label %166

151:                                              ; preds = %101
  %152 = load %struct.hsr_port*, %struct.hsr_port** %4, align 8
  %153 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %152, i32 0, i32 1
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i8* @htons(i32 %156)
  %158 = load %struct.hsr_sup_tag*, %struct.hsr_sup_tag** %11, align 8
  %159 = getelementptr inbounds %struct.hsr_sup_tag, %struct.hsr_sup_tag* %158, i32 0, i32 2
  store i8* %157, i8** %159, align 8
  %160 = load %struct.hsr_port*, %struct.hsr_port** %4, align 8
  %161 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %160, i32 0, i32 1
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %151, %122
  %167 = load %struct.hsr_port*, %struct.hsr_port** %4, align 8
  %168 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %167, i32 0, i32 1
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i64, i64* %13, align 8
  %172 = call i32 @spin_unlock_irqrestore(i32* %170, i64 %171)
  %173 = load i64, i64* %5, align 8
  %174 = load %struct.hsr_sup_tag*, %struct.hsr_sup_tag** %11, align 8
  %175 = getelementptr inbounds %struct.hsr_sup_tag, %struct.hsr_sup_tag* %174, i32 0, i32 1
  store i64 %173, i64* %175, align 8
  %176 = load i64, i64* %6, align 8
  %177 = icmp ne i64 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i64 4, i64 12
  %180 = trunc i64 %179 to i32
  %181 = load %struct.hsr_sup_tag*, %struct.hsr_sup_tag** %11, align 8
  %182 = getelementptr inbounds %struct.hsr_sup_tag, %struct.hsr_sup_tag* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  %183 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %184 = call i8* @skb_put(%struct.sk_buff* %183, i32 4)
  %185 = bitcast i8* %184 to %struct.hsr_sup_payload*
  store %struct.hsr_sup_payload* %185, %struct.hsr_sup_payload** %12, align 8
  %186 = load %struct.hsr_sup_payload*, %struct.hsr_sup_payload** %12, align 8
  %187 = getelementptr inbounds %struct.hsr_sup_payload, %struct.hsr_sup_payload* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.hsr_port*, %struct.hsr_port** %4, align 8
  %190 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %189, i32 0, i32 0
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @ether_addr_copy(i32 %188, i32 %193)
  %195 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %196 = load i64, i64* @ETH_ZLEN, align 8
  %197 = load i64, i64* @HSR_HLEN, align 8
  %198 = add nsw i64 %196, %197
  %199 = call i64 @skb_put_padto(%struct.sk_buff* %195, i64 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %166
  br label %210

202:                                              ; preds = %166
  %203 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %204 = load %struct.hsr_port*, %struct.hsr_port** %4, align 8
  %205 = call i32 @hsr_forward_skb(%struct.sk_buff* %203, %struct.hsr_port* %204)
  br label %210

206:                                              ; preds = %84
  %207 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %208 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %209 = call i32 @kfree_skb(%struct.sk_buff* %208)
  br label %210

210:                                              ; preds = %206, %202, %201, %33
  ret void
}

declare dso_local i32 @LL_RESERVED_SPACE(%struct.TYPE_5__*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @dev_hard_header(%struct.sk_buff*, %struct.TYPE_5__*, i32, i32, i32, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @set_hsr_tag_LSDU_size(%struct.hsr_tag*, i32) #1

declare dso_local i32 @set_hsr_stag_path(%struct.hsr_sup_tag*, i32) #1

declare dso_local i32 @set_hsr_stag_HSR_ver(%struct.hsr_sup_tag*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i64 @skb_put_padto(%struct.sk_buff*, i64) #1

declare dso_local i32 @hsr_forward_skb(%struct.sk_buff*, %struct.hsr_port*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
