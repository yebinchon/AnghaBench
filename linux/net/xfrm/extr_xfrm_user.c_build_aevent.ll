; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_build_aevent.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_build_aevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_state = type { i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.km_event = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.xfrm_aevent_id = type { i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.nlmsghdr = type { i32 }

@XFRM_MSG_NEWAE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@XFRMA_REPLAY_ESN_VAL = common dso_local global i32 0, align 4
@XFRMA_REPLAY_VAL = common dso_local global i32 0, align 4
@XFRMA_LTIME_VAL = common dso_local global i32 0, align 4
@XFRMA_PAD = common dso_local global i32 0, align 4
@XFRM_AE_RTHR = common dso_local global i32 0, align 4
@XFRMA_REPLAY_THRESH = common dso_local global i32 0, align 4
@XFRM_AE_ETHR = common dso_local global i32 0, align 4
@XFRMA_ETIMER_THRESH = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xfrm_state*, %struct.km_event*)* @build_aevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_aevent(%struct.sk_buff* %0, %struct.xfrm_state* %1, %struct.km_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xfrm_state*, align 8
  %7 = alloca %struct.km_event*, align 8
  %8 = alloca %struct.xfrm_aevent_id*, align 8
  %9 = alloca %struct.nlmsghdr*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.xfrm_state* %1, %struct.xfrm_state** %6, align 8
  store %struct.km_event* %2, %struct.km_event** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = load %struct.km_event*, %struct.km_event** %7, align 8
  %13 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.km_event*, %struct.km_event** %7, align 8
  %16 = getelementptr inbounds %struct.km_event, %struct.km_event* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @XFRM_MSG_NEWAE, align 4
  %19 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %11, i32 %14, i32 %17, i32 %18, i32 28, i32 0)
  store %struct.nlmsghdr* %19, %struct.nlmsghdr** %9, align 8
  %20 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %21 = icmp eq %struct.nlmsghdr* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EMSGSIZE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %177

25:                                               ; preds = %3
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %27 = call %struct.xfrm_aevent_id* @nlmsg_data(%struct.nlmsghdr* %26)
  store %struct.xfrm_aevent_id* %27, %struct.xfrm_aevent_id** %8, align 8
  %28 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %8, align 8
  %29 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %28, i32 0, i32 3
  %30 = call i32 @memset(%struct.TYPE_8__* %29, i32 0, i32 16)
  %31 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %8, align 8
  %32 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %35 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = call i32 @memcpy(i32* %33, i32* %36, i32 4)
  %38 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %39 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %38, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %8, align 8
  %43 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %46 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %8, align 8
  %50 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %53 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %52, i32 0, i32 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %8, align 8
  %57 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  %59 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %8, align 8
  %60 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %59, i32 0, i32 2
  %61 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %62 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %61, i32 0, i32 7
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = call i32 @memcpy(i32* %60, i32* %63, i32 4)
  %65 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %66 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %8, align 8
  %70 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.km_event*, %struct.km_event** %7, align 8
  %72 = getelementptr inbounds %struct.km_event, %struct.km_event* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %8, align 8
  %76 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %78 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %77, i32 0, i32 6
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %25
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = load i32, i32* @XFRMA_REPLAY_ESN_VAL, align 4
  %84 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %85 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %84, i32 0, i32 6
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @xfrm_replay_state_esn_len(i32* %86)
  %88 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %89 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %88, i32 0, i32 6
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @nla_put(%struct.sk_buff* %82, i32 %83, i32 %87, i32* %90)
  store i32 %91, i32* %10, align 4
  br label %98

92:                                               ; preds = %25
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = load i32, i32* @XFRMA_REPLAY_VAL, align 4
  %95 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %96 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %95, i32 0, i32 5
  %97 = call i32 @nla_put(%struct.sk_buff* %93, i32 %94, i32 4, i32* %96)
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %92, %81
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %172

102:                                              ; preds = %98
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = load i32, i32* @XFRMA_LTIME_VAL, align 4
  %105 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %106 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %105, i32 0, i32 4
  %107 = load i32, i32* @XFRMA_PAD, align 4
  %108 = call i32 @nla_put_64bit(%struct.sk_buff* %103, i32 %104, i32 4, i32* %106, i32 %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  br label %172

112:                                              ; preds = %102
  %113 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %8, align 8
  %114 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @XFRM_AE_RTHR, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %112
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = load i32, i32* @XFRMA_REPLAY_THRESH, align 4
  %122 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %123 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @nla_put_u32(%struct.sk_buff* %120, i32 %121, i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %119
  br label %172

129:                                              ; preds = %119
  br label %130

130:                                              ; preds = %129, %112
  %131 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %8, align 8
  %132 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @XFRM_AE_ETHR, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %130
  %138 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %139 = load i32, i32* @XFRMA_ETIMER_THRESH, align 4
  %140 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %141 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %142, 10
  %144 = load i32, i32* @HZ, align 4
  %145 = sdiv i32 %143, %144
  %146 = call i32 @nla_put_u32(%struct.sk_buff* %138, i32 %139, i32 %145)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %137
  br label %172

150:                                              ; preds = %137
  br label %151

151:                                              ; preds = %150, %130
  %152 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %153 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %154 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %153, i32 0, i32 3
  %155 = call i32 @xfrm_mark_put(%struct.sk_buff* %152, i32* %154)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %172

159:                                              ; preds = %151
  %160 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %161 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %162 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @xfrm_if_id_put(%struct.sk_buff* %160, i32 %163)
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  br label %172

168:                                              ; preds = %159
  %169 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %170 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %171 = call i32 @nlmsg_end(%struct.sk_buff* %169, %struct.nlmsghdr* %170)
  store i32 0, i32* %4, align 4
  br label %177

172:                                              ; preds = %167, %158, %149, %128, %111, %101
  %173 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %174 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %175 = call i32 @nlmsg_cancel(%struct.sk_buff* %173, %struct.nlmsghdr* %174)
  %176 = load i32, i32* %10, align 4
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %172, %168, %22
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.xfrm_aevent_id* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @xfrm_replay_state_esn_len(i32*) #1

declare dso_local i32 @nla_put_64bit(%struct.sk_buff*, i32, i32, i32*, i32) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @xfrm_mark_put(%struct.sk_buff*, i32*) #1

declare dso_local i32 @xfrm_if_id_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
