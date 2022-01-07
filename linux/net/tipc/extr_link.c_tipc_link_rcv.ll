; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { i64, i64, i64, i32, i32, %struct.TYPE_2__, i32, i64, %struct.sk_buff_head }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@LINK_PROTOCOL = common dso_local global i64 0, align 8
@TIPC_MAX_LINK_WIN = common dso_local global i64 0, align 8
@LINK_ESTABLISHING = common dso_local global i64 0, align 8
@TIPC_LINK_UP_EVT = common dso_local global i32 0, align 4
@TUNNEL_PROTOCOL = common dso_local global i64 0, align 8
@TIPC_MIN_LINK_WIN = common dso_local global i64 0, align 8
@TIPC_LINK_SND_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_link_rcv(%struct.tipc_link* %0, %struct.sk_buff* %1, %struct.sk_buff_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tipc_link*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  %8 = alloca %struct.sk_buff_head*, align 8
  %9 = alloca %struct.tipc_msg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.tipc_link* %0, %struct.tipc_link** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %7, align 8
  %14 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %15 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %14, i32 0, i32 8
  store %struct.sk_buff_head* %15, %struct.sk_buff_head** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %16)
  store %struct.tipc_msg* %17, %struct.tipc_msg** %9, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %19 = call i64 @msg_user(%struct.tipc_msg* %18)
  %20 = load i64, i64* @LINK_PROTOCOL, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %29 = call i32 @tipc_link_proto_rcv(%struct.tipc_link* %26, %struct.sk_buff* %27, %struct.sk_buff_head* %28)
  store i32 %29, i32* %4, align 4
  br label %205

30:                                               ; preds = %3
  %31 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %32 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %31, i32 0, i32 7
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %192, %30
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %34)
  store %struct.tipc_msg* %35, %struct.tipc_msg** %9, align 8
  %36 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %37 = call i64 @msg_seqno(%struct.tipc_msg* %36)
  store i64 %37, i64* %10, align 8
  %38 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %39 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @TIPC_MAX_LINK_WIN, align 8
  %43 = add nsw i64 %41, %42
  store i64 %43, i64* %12, align 8
  %44 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %45 = call i32 @link_is_up(%struct.tipc_link* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %33
  %52 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %53 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @LINK_ESTABLISHING, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @TIPC_LINK_UP_EVT, align 4
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %57, %51
  br label %201

60:                                               ; preds = %33
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i64 @less(i64 %61, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %12, align 8
  %68 = call i64 @more(i64 %66, i64 %67)
  %69 = icmp ne i64 %68, 0
  br label %70

70:                                               ; preds = %65, %60
  %71 = phi i1 [ true, %60 ], [ %69, %65 ]
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %77 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %201

81:                                               ; preds = %70
  %82 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %83 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %84 = call i32 @msg_ack(%struct.tipc_msg* %83)
  %85 = call i32 @tipc_link_release_pkts(%struct.tipc_link* %82, i32 %84)
  %86 = call i64 @likely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %81
  %89 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %90 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %91 = call i32 @tipc_link_advance_backlog(%struct.tipc_link* %89, %struct.sk_buff_head* %90)
  %92 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %93 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %92, i32 0, i32 6
  %94 = call i32 @skb_queue_empty(i32* %93)
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %88
  %101 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %102 = call i32 @link_prepare_wakeup(%struct.tipc_link* %101)
  br label %103

103:                                              ; preds = %100, %88
  br label %104

104:                                              ; preds = %103, %81
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* %11, align 8
  %107 = icmp ne i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i64 @unlikely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %104
  %112 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %113 = load i64, i64* %10, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %115 = call i32 @__tipc_skb_queue_sorted(%struct.sk_buff_head* %112, i64 %113, %struct.sk_buff* %114)
  %116 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %117 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %118 = call i32 @tipc_link_build_nack_msg(%struct.tipc_link* %116, %struct.sk_buff_head* %117)
  %119 = load i32, i32* %13, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %13, align 4
  br label %199

121:                                              ; preds = %104
  %122 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %123 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  %126 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %127 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %132 = call i64 @msg_user(%struct.tipc_msg* %131)
  %133 = load i64, i64* @TUNNEL_PROTOCOL, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i64 @unlikely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %121
  %139 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %141 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %142 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @tipc_link_tnl_rcv(%struct.tipc_link* %139, %struct.sk_buff* %140, i32 %143)
  %145 = load i32, i32* %13, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %13, align 4
  br label %167

147:                                              ; preds = %121
  %148 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %150 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %151 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @tipc_data_input(%struct.tipc_link* %148, %struct.sk_buff* %149, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %166, label %155

155:                                              ; preds = %147
  %156 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %157 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %158 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %159 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %162 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %161, i32 0, i32 3
  %163 = call i32 @tipc_link_input(%struct.tipc_link* %156, %struct.sk_buff* %157, i32 %160, i32* %162)
  %164 = load i32, i32* %13, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %13, align 4
  br label %166

166:                                              ; preds = %155, %147
  br label %167

167:                                              ; preds = %166, %138
  %168 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %169 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, 1
  store i64 %171, i64* %169, align 8
  %172 = load i64, i64* @TIPC_MIN_LINK_WIN, align 8
  %173 = icmp sge i64 %171, %172
  %174 = zext i1 %173 to i32
  %175 = call i64 @unlikely(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %167
  %178 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %179 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %180 = call i32 @tipc_link_build_state_msg(%struct.tipc_link* %178, %struct.sk_buff_head* %179)
  %181 = load i32, i32* %13, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %13, align 4
  br label %183

183:                                              ; preds = %177, %167
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* @TIPC_LINK_SND_STATE, align 4
  %186 = xor i32 %185, -1
  %187 = and i32 %184, %186
  %188 = call i64 @unlikely(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %183
  br label %199

191:                                              ; preds = %183
  br label %192

192:                                              ; preds = %191
  %193 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %194 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %195 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = call %struct.sk_buff* @__tipc_skb_dequeue(%struct.sk_buff_head* %193, i64 %196)
  store %struct.sk_buff* %197, %struct.sk_buff** %6, align 8
  %198 = icmp ne %struct.sk_buff* %197, null
  br i1 %198, label %33, label %199

199:                                              ; preds = %192, %190, %111
  %200 = load i32, i32* %13, align 4
  store i32 %200, i32* %4, align 4
  br label %205

201:                                              ; preds = %75, %59
  %202 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %203 = call i32 @kfree_skb(%struct.sk_buff* %202)
  %204 = load i32, i32* %13, align 4
  store i32 %204, i32* %4, align 4
  br label %205

205:                                              ; preds = %201, %199, %25
  %206 = load i32, i32* %4, align 4
  ret i32 %206
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @msg_user(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_link_proto_rcv(%struct.tipc_link*, %struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local i64 @msg_seqno(%struct.tipc_msg*) #1

declare dso_local i32 @link_is_up(%struct.tipc_link*) #1

declare dso_local i64 @less(i64, i64) #1

declare dso_local i64 @more(i64, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @tipc_link_release_pkts(%struct.tipc_link*, i32) #1

declare dso_local i32 @msg_ack(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_link_advance_backlog(%struct.tipc_link*, %struct.sk_buff_head*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @link_prepare_wakeup(%struct.tipc_link*) #1

declare dso_local i32 @__tipc_skb_queue_sorted(%struct.sk_buff_head*, i64, %struct.sk_buff*) #1

declare dso_local i32 @tipc_link_build_nack_msg(%struct.tipc_link*, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_link_tnl_rcv(%struct.tipc_link*, %struct.sk_buff*, i32) #1

declare dso_local i32 @tipc_data_input(%struct.tipc_link*, %struct.sk_buff*, i32) #1

declare dso_local i32 @tipc_link_input(%struct.tipc_link*, %struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @tipc_link_build_state_msg(%struct.tipc_link*, %struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @__tipc_skb_dequeue(%struct.sk_buff_head*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
