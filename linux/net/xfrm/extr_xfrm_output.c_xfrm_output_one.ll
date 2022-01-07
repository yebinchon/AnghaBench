; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_output.c_xfrm_output_one.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_output.c_xfrm_output_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i32 }
%struct.dst_entry = type { %struct.xfrm_state* }
%struct.xfrm_state = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32 (%struct.xfrm_state*, %struct.sk_buff*)* }
%struct.TYPE_11__ = type { i32 (%struct.xfrm_state*, %struct.sk_buff*)* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 (%struct.xfrm_state*, %struct.sk_buff*)* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.net = type { i32 }

@LINUX_MIB_XFRMOUTERROR = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMOUTSTATEMODEERROR = common dso_local global i32 0, align 4
@XFRM_STATE_VALID = common dso_local global i64 0, align 8
@LINUX_MIB_XFRMOUTSTATEINVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMOUTSTATEEXPIRED = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMOUTSTATESEQERROR = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMOUTSTATEPROTOERROR = common dso_local global i32 0, align 4
@XFRM_MODE_FLAG_TUNNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @xfrm_output_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_output_one(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dst_entry*, align 8
  %7 = alloca %struct.xfrm_state*, align 8
  %8 = alloca %struct.net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %9)
  store %struct.dst_entry* %10, %struct.dst_entry** %6, align 8
  %11 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %12 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %11, i32 0, i32 0
  %13 = load %struct.xfrm_state*, %struct.xfrm_state** %12, align 8
  store %struct.xfrm_state* %13, %struct.xfrm_state** %7, align 8
  %14 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %15 = call %struct.net* @xs_net(%struct.xfrm_state* %14)
  store %struct.net* %15, %struct.net** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %150

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %187, %19
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @xfrm_skb_check_space(%struct.sk_buff* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.net*, %struct.net** %8, align 8
  %27 = load i32, i32* @LINUX_MIB_XFRMOUTERROR, align 4
  %28 = call i32 @XFRM_INC_STATS(%struct.net* %26, i32 %27)
  br label %194

29:                                               ; preds = %20
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %34 = call i32 @xfrm_smark_get(i32 %32, %struct.xfrm_state* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i32 @xfrm_outer_mode_output(%struct.xfrm_state* %37, %struct.sk_buff* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %29
  %43 = load %struct.net*, %struct.net** %8, align 8
  %44 = load i32, i32* @LINUX_MIB_XFRMOUTSTATEMODEERROR, align 4
  %45 = call i32 @XFRM_INC_STATS(%struct.net* %43, i32 %44)
  br label %194

46:                                               ; preds = %29
  %47 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %48 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %47, i32 0, i32 0
  %49 = call i32 @spin_lock_bh(i32* %48)
  %50 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %51 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @XFRM_STATE_VALID, align 8
  %55 = icmp ne i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %46
  %60 = load %struct.net*, %struct.net** %8, align 8
  %61 = load i32, i32* @LINUX_MIB_XFRMOUTSTATEINVALID, align 4
  %62 = call i32 @XFRM_INC_STATS(%struct.net* %60, i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %190

65:                                               ; preds = %46
  %66 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %67 = call i32 @xfrm_state_check_expire(%struct.xfrm_state* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.net*, %struct.net** %8, align 8
  %72 = load i32, i32* @LINUX_MIB_XFRMOUTSTATEEXPIRED, align 4
  %73 = call i32 @XFRM_INC_STATS(%struct.net* %71, i32 %72)
  br label %190

74:                                               ; preds = %65
  %75 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %76 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %75, i32 0, i32 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32 (%struct.xfrm_state*, %struct.sk_buff*)*, i32 (%struct.xfrm_state*, %struct.sk_buff*)** %78, align 8
  %80 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = call i32 %79(%struct.xfrm_state* %80, %struct.sk_buff* %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %74
  %86 = load %struct.net*, %struct.net** %8, align 8
  %87 = load i32, i32* @LINUX_MIB_XFRMOUTSTATESEQERROR, align 4
  %88 = call i32 @XFRM_INC_STATS(%struct.net* %86, i32 %87)
  br label %190

89:                                               ; preds = %74
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %94 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %92
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %95, align 4
  %100 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %101 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  %105 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %106 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %105, i32 0, i32 0
  %107 = call i32 @spin_unlock_bh(i32* %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %109 = call i32 @skb_dst_force(%struct.sk_buff* %108)
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %110)
  %112 = icmp ne %struct.dst_entry* %111, null
  br i1 %112, label %119, label %113

113:                                              ; preds = %89
  %114 = load %struct.net*, %struct.net** %8, align 8
  %115 = load i32, i32* @LINUX_MIB_XFRMOUTERROR, align 4
  %116 = call i32 @XFRM_INC_STATS(%struct.net* %114, i32 %115)
  %117 = load i32, i32* @EHOSTUNREACH, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  br label %194

119:                                              ; preds = %89
  %120 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %121 = call i64 @xfrm_offload(%struct.sk_buff* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %119
  %124 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %125 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %124, i32 0, i32 2
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32 (%struct.xfrm_state*, %struct.sk_buff*)*, i32 (%struct.xfrm_state*, %struct.sk_buff*)** %127, align 8
  %129 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %131 = call i32 %128(%struct.xfrm_state* %129, %struct.sk_buff* %130)
  br label %149

132:                                              ; preds = %119
  %133 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 0
  store i64 0, i64* %134, align 8
  %135 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %136 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %135, i32 0, i32 1
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32 (%struct.xfrm_state*, %struct.sk_buff*)*, i32 (%struct.xfrm_state*, %struct.sk_buff*)** %138, align 8
  %140 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = call i32 %139(%struct.xfrm_state* %140, %struct.sk_buff* %141)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @EINPROGRESS, align 4
  %145 = sub nsw i32 0, %144
  %146 = icmp eq i32 %143, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %132
  br label %197

148:                                              ; preds = %132
  br label %149

149:                                              ; preds = %148, %123
  br label %150

150:                                              ; preds = %149, %18
  %151 = load i32, i32* %5, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load %struct.net*, %struct.net** %8, align 8
  %155 = load i32, i32* @LINUX_MIB_XFRMOUTSTATEPROTOERROR, align 4
  %156 = call i32 @XFRM_INC_STATS(%struct.net* %154, i32 %155)
  br label %194

157:                                              ; preds = %150
  %158 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %159 = call %struct.dst_entry* @skb_dst_pop(%struct.sk_buff* %158)
  store %struct.dst_entry* %159, %struct.dst_entry** %6, align 8
  %160 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %161 = icmp ne %struct.dst_entry* %160, null
  br i1 %161, label %168, label %162

162:                                              ; preds = %157
  %163 = load %struct.net*, %struct.net** %8, align 8
  %164 = load i32, i32* @LINUX_MIB_XFRMOUTERROR, align 4
  %165 = call i32 @XFRM_INC_STATS(%struct.net* %163, i32 %164)
  %166 = load i32, i32* @EHOSTUNREACH, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %5, align 4
  br label %194

168:                                              ; preds = %157
  %169 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %170 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %171 = call i32 @skb_dst_set(%struct.sk_buff* %169, %struct.dst_entry* %170)
  %172 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %173 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %172, i32 0, i32 0
  %174 = load %struct.xfrm_state*, %struct.xfrm_state** %173, align 8
  store %struct.xfrm_state* %174, %struct.xfrm_state** %7, align 8
  br label %175

175:                                              ; preds = %168
  %176 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %177 = icmp ne %struct.xfrm_state* %176, null
  br i1 %177, label %178, label %187

178:                                              ; preds = %175
  %179 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %180 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %179, i32 0, i32 6
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @XFRM_MODE_FLAG_TUNNEL, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  %186 = xor i1 %185, true
  br label %187

187:                                              ; preds = %178, %175
  %188 = phi i1 [ false, %175 ], [ %186, %178 ]
  br i1 %188, label %20, label %189

189:                                              ; preds = %187
  store i32 0, i32* %3, align 4
  br label %199

190:                                              ; preds = %85, %70, %59
  %191 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %192 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %191, i32 0, i32 0
  %193 = call i32 @spin_unlock_bh(i32* %192)
  br label %194

194:                                              ; preds = %190, %162, %153, %113, %42, %25
  %195 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %196 = call i32 @kfree_skb(%struct.sk_buff* %195)
  br label %197

197:                                              ; preds = %194, %147
  %198 = load i32, i32* %5, align 4
  store i32 %198, i32* %3, align 4
  br label %199

199:                                              ; preds = %197, %189
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.net* @xs_net(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_skb_check_space(%struct.sk_buff*) #1

declare dso_local i32 @XFRM_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @xfrm_smark_get(i32, %struct.xfrm_state*) #1

declare dso_local i32 @xfrm_outer_mode_output(%struct.xfrm_state*, %struct.sk_buff*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xfrm_state_check_expire(%struct.xfrm_state*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @skb_dst_force(%struct.sk_buff*) #1

declare dso_local i64 @xfrm_offload(%struct.sk_buff*) #1

declare dso_local %struct.dst_entry* @skb_dst_pop(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
