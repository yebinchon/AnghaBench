; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_chan_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_chan_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64, i64, i32, i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.l2cap_chan*)* }
%struct.msghdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sk_buff_head = type { i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@L2CAP_CHAN_CONN_LESS = common dso_local global i64 0, align 8
@BT_CONNECTED = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@L2CAP_EV_DATA_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"bad state %1.1x\00", align 1
@EBADFD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2cap_chan_send(%struct.l2cap_chan* %0, %struct.msghdr* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.l2cap_chan*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff_head, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %12 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOTCONN, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %196

18:                                               ; preds = %3
  %19 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %20 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @L2CAP_CHAN_CONN_LESS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %18
  %25 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %26 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call %struct.sk_buff* @l2cap_create_connless_pdu(%struct.l2cap_chan* %25, %struct.msghdr* %26, i64 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %8, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = call i64 @IS_ERR(%struct.sk_buff* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = call i32 @PTR_ERR(%struct.sk_buff* %33)
  store i32 %34, i32* %4, align 4
  br label %196

35:                                               ; preds = %24
  %36 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %37 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BT_CONNECTED, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = call i32 @kfree_skb(%struct.sk_buff* %42)
  %44 = load i32, i32* @ENOTCONN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %196

46:                                               ; preds = %35
  %47 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = call i32 @l2cap_do_send(%struct.l2cap_chan* %47, %struct.sk_buff* %48)
  %50 = load i64, i64* %7, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %196

52:                                               ; preds = %18
  %53 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %54 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %187 [
    i32 129, label %56
    i32 131, label %106
    i32 130, label %143
    i32 128, label %143
  ]

56:                                               ; preds = %52
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %59 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ugt i64 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @EMSGSIZE, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %196

65:                                               ; preds = %56
  %66 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %10)
  %67 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %68 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @l2cap_segment_le_sdu(%struct.l2cap_chan* %67, %struct.sk_buff_head* %10, %struct.msghdr* %68, i64 %69)
  store i32 %70, i32* %9, align 4
  %71 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %72 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @BT_CONNECTED, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %65
  %77 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %10)
  %78 = load i32, i32* @ENOTCONN, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %76, %65
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %4, align 4
  br label %196

85:                                               ; preds = %80
  %86 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %87 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %86, i32 0, i32 6
  %88 = call i32 @skb_queue_splice_tail_init(%struct.sk_buff_head* %10, i32* %87)
  %89 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %90 = call i32 @l2cap_le_flowctl_send(%struct.l2cap_chan* %89)
  %91 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %92 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %85
  %96 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %97 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %96, i32 0, i32 4
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32 (%struct.l2cap_chan*)*, i32 (%struct.l2cap_chan*)** %99, align 8
  %101 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %102 = call i32 %100(%struct.l2cap_chan* %101)
  br label %103

103:                                              ; preds = %95, %85
  %104 = load i64, i64* %7, align 8
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %9, align 4
  br label %194

106:                                              ; preds = %52
  %107 = load i64, i64* %7, align 8
  %108 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %109 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp ugt i64 %107, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i32, i32* @EMSGSIZE, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %196

115:                                              ; preds = %106
  %116 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %117 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %118 = load i64, i64* %7, align 8
  %119 = call %struct.sk_buff* @l2cap_create_basic_pdu(%struct.l2cap_chan* %116, %struct.msghdr* %117, i64 %118)
  store %struct.sk_buff* %119, %struct.sk_buff** %8, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %121 = call i64 @IS_ERR(%struct.sk_buff* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %115
  %124 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %125 = call i32 @PTR_ERR(%struct.sk_buff* %124)
  store i32 %125, i32* %4, align 4
  br label %196

126:                                              ; preds = %115
  %127 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %128 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @BT_CONNECTED, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %126
  %133 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %134 = call i32 @kfree_skb(%struct.sk_buff* %133)
  %135 = load i32, i32* @ENOTCONN, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  br label %196

137:                                              ; preds = %126
  %138 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %140 = call i32 @l2cap_do_send(%struct.l2cap_chan* %138, %struct.sk_buff* %139)
  %141 = load i64, i64* %7, align 8
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %9, align 4
  br label %194

143:                                              ; preds = %52, %52
  %144 = load i64, i64* %7, align 8
  %145 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %146 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp ugt i64 %144, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load i32, i32* @EMSGSIZE, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %9, align 4
  br label %194

152:                                              ; preds = %143
  %153 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %10)
  %154 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %155 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %156 = load i64, i64* %7, align 8
  %157 = call i32 @l2cap_segment_sdu(%struct.l2cap_chan* %154, %struct.sk_buff_head* %10, %struct.msghdr* %155, i64 %156)
  store i32 %157, i32* %9, align 4
  %158 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %159 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @BT_CONNECTED, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %152
  %164 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %10)
  %165 = load i32, i32* @ENOTCONN, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %9, align 4
  br label %167

167:                                              ; preds = %163, %152
  %168 = load i32, i32* %9, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  br label %194

171:                                              ; preds = %167
  %172 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %173 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 130
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %178 = load i32, i32* @L2CAP_EV_DATA_REQUEST, align 4
  %179 = call i32 @l2cap_tx(%struct.l2cap_chan* %177, i32* null, %struct.sk_buff_head* %10, i32 %178)
  br label %183

180:                                              ; preds = %171
  %181 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %182 = call i32 @l2cap_streaming_send(%struct.l2cap_chan* %181, %struct.sk_buff_head* %10)
  br label %183

183:                                              ; preds = %180, %176
  %184 = load i64, i64* %7, align 8
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %9, align 4
  %186 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %10)
  br label %194

187:                                              ; preds = %52
  %188 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %189 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %190)
  %192 = load i32, i32* @EBADFD, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %9, align 4
  br label %194

194:                                              ; preds = %187, %183, %170, %149, %137, %103
  %195 = load i32, i32* %9, align 4
  store i32 %195, i32* %4, align 4
  br label %196

196:                                              ; preds = %194, %132, %123, %112, %83, %62, %46, %41, %32, %15
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local %struct.sk_buff* @l2cap_create_connless_pdu(%struct.l2cap_chan*, %struct.msghdr*, i64) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @l2cap_do_send(%struct.l2cap_chan*, %struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @l2cap_segment_le_sdu(%struct.l2cap_chan*, %struct.sk_buff_head*, %struct.msghdr*, i64) #1

declare dso_local i32 @__skb_queue_purge(%struct.sk_buff_head*) #1

declare dso_local i32 @skb_queue_splice_tail_init(%struct.sk_buff_head*, i32*) #1

declare dso_local i32 @l2cap_le_flowctl_send(%struct.l2cap_chan*) #1

declare dso_local %struct.sk_buff* @l2cap_create_basic_pdu(%struct.l2cap_chan*, %struct.msghdr*, i64) #1

declare dso_local i32 @l2cap_segment_sdu(%struct.l2cap_chan*, %struct.sk_buff_head*, %struct.msghdr*, i64) #1

declare dso_local i32 @l2cap_tx(%struct.l2cap_chan*, i32*, %struct.sk_buff_head*, i32) #1

declare dso_local i32 @l2cap_streaming_send(%struct.l2cap_chan*, %struct.sk_buff_head*) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
