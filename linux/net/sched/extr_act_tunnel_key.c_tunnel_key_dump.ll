; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_tunnel_key.c_tunnel_key_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_tunnel_key.c_tunnel_key_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_tunnel_key = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tcf_tunnel_key_params = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key }
%struct.ip_tunnel_key = type { i32, i32, i32, i64, i32 }
%struct.tc_tunnel_key = type { i64, i32, i32, i32, i32 }
%struct.tcf_t = type { i32 }

@TCA_TUNNEL_KEY_PARMS = common dso_local global i32 0, align 4
@TCA_TUNNEL_KEY_ACT_SET = common dso_local global i64 0, align 8
@TUNNEL_KEY = common dso_local global i32 0, align 4
@TCA_TUNNEL_KEY_ENC_KEY_ID = common dso_local global i32 0, align 4
@TCA_TUNNEL_KEY_ENC_DST_PORT = common dso_local global i32 0, align 4
@TCA_TUNNEL_KEY_NO_CSUM = common dso_local global i32 0, align 4
@TUNNEL_CSUM = common dso_local global i32 0, align 4
@TCA_TUNNEL_KEY_ENC_TOS = common dso_local global i32 0, align 4
@TCA_TUNNEL_KEY_ENC_TTL = common dso_local global i32 0, align 4
@TCA_TUNNEL_KEY_TM = common dso_local global i32 0, align 4
@TCA_TUNNEL_KEY_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* @tunnel_key_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tunnel_key_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcf_tunnel_key*, align 8
  %12 = alloca %struct.tcf_tunnel_key_params*, align 8
  %13 = alloca %struct.tc_tunnel_key, align 8
  %14 = alloca %struct.tcf_t, align 4
  %15 = alloca %struct.ip_tunnel_info*, align 8
  %16 = alloca %struct.ip_tunnel_key*, align 8
  %17 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i8* @skb_tail_pointer(%struct.sk_buff* %18)
  store i8* %19, i8** %10, align 8
  %20 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %21 = call %struct.tcf_tunnel_key* @to_tunnel_key(%struct.tc_action* %20)
  store %struct.tcf_tunnel_key* %21, %struct.tcf_tunnel_key** %11, align 8
  %22 = getelementptr inbounds %struct.tc_tunnel_key, %struct.tc_tunnel_key* %13, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.tc_tunnel_key, %struct.tc_tunnel_key* %13, i32 0, i32 1
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.tc_tunnel_key, %struct.tc_tunnel_key* %13, i32 0, i32 2
  %25 = load %struct.tcf_tunnel_key*, %struct.tcf_tunnel_key** %11, align 8
  %26 = getelementptr inbounds %struct.tcf_tunnel_key, %struct.tcf_tunnel_key* %25, i32 0, i32 4
  %27 = call i32 @atomic_read(i32* %26)
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %24, align 4
  %30 = getelementptr inbounds %struct.tc_tunnel_key, %struct.tc_tunnel_key* %13, i32 0, i32 3
  %31 = load %struct.tcf_tunnel_key*, %struct.tcf_tunnel_key** %11, align 8
  %32 = getelementptr inbounds %struct.tcf_tunnel_key, %struct.tcf_tunnel_key* %31, i32 0, i32 5
  %33 = call i32 @refcount_read(i32* %32)
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %30, align 8
  %36 = getelementptr inbounds %struct.tc_tunnel_key, %struct.tc_tunnel_key* %13, i32 0, i32 4
  %37 = load %struct.tcf_tunnel_key*, %struct.tcf_tunnel_key** %11, align 8
  %38 = getelementptr inbounds %struct.tcf_tunnel_key, %struct.tcf_tunnel_key* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %36, align 4
  %40 = load %struct.tcf_tunnel_key*, %struct.tcf_tunnel_key** %11, align 8
  %41 = getelementptr inbounds %struct.tcf_tunnel_key, %struct.tcf_tunnel_key* %40, i32 0, i32 0
  %42 = call i32 @spin_lock_bh(i32* %41)
  %43 = load %struct.tcf_tunnel_key*, %struct.tcf_tunnel_key** %11, align 8
  %44 = getelementptr inbounds %struct.tcf_tunnel_key, %struct.tcf_tunnel_key* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tcf_tunnel_key*, %struct.tcf_tunnel_key** %11, align 8
  %47 = getelementptr inbounds %struct.tcf_tunnel_key, %struct.tcf_tunnel_key* %46, i32 0, i32 0
  %48 = call i32 @lockdep_is_held(i32* %47)
  %49 = call %struct.tcf_tunnel_key_params* @rcu_dereference_protected(i32 %45, i32 %48)
  store %struct.tcf_tunnel_key_params* %49, %struct.tcf_tunnel_key_params** %12, align 8
  %50 = load %struct.tcf_tunnel_key*, %struct.tcf_tunnel_key** %11, align 8
  %51 = getelementptr inbounds %struct.tcf_tunnel_key, %struct.tcf_tunnel_key* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.tc_tunnel_key, %struct.tc_tunnel_key* %13, i32 0, i32 1
  store i32 %52, i32* %53, align 8
  %54 = load %struct.tcf_tunnel_key_params*, %struct.tcf_tunnel_key_params** %12, align 8
  %55 = getelementptr inbounds %struct.tcf_tunnel_key_params, %struct.tcf_tunnel_key_params* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.tc_tunnel_key, %struct.tc_tunnel_key* %13, i32 0, i32 0
  store i64 %56, i64* %57, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = load i32, i32* @TCA_TUNNEL_KEY_PARMS, align 4
  %60 = call i64 @nla_put(%struct.sk_buff* %58, i32 %59, i32 24, %struct.tc_tunnel_key* %13)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %4
  br label %180

63:                                               ; preds = %4
  %64 = load %struct.tcf_tunnel_key_params*, %struct.tcf_tunnel_key_params** %12, align 8
  %65 = getelementptr inbounds %struct.tcf_tunnel_key_params, %struct.tcf_tunnel_key_params* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TCA_TUNNEL_KEY_ACT_SET, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %163

69:                                               ; preds = %63
  %70 = load %struct.tcf_tunnel_key_params*, %struct.tcf_tunnel_key_params** %12, align 8
  %71 = getelementptr inbounds %struct.tcf_tunnel_key_params, %struct.tcf_tunnel_key_params* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store %struct.ip_tunnel_info* %74, %struct.ip_tunnel_info** %15, align 8
  %75 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %15, align 8
  %76 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %75, i32 0, i32 0
  store %struct.ip_tunnel_key* %76, %struct.ip_tunnel_key** %16, align 8
  %77 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %16, align 8
  %78 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @tunnel_id_to_key32(i32 %79)
  store i32 %80, i32* %17, align 4
  %81 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %16, align 8
  %82 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @TUNNEL_KEY, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %69
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = load i32, i32* @TCA_TUNNEL_KEY_ENC_KEY_ID, align 4
  %90 = load i32, i32* %17, align 4
  %91 = call i64 @nla_put_be32(%struct.sk_buff* %88, i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %133, label %93

93:                                               ; preds = %87, %69
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = load %struct.tcf_tunnel_key_params*, %struct.tcf_tunnel_key_params** %12, align 8
  %96 = getelementptr inbounds %struct.tcf_tunnel_key_params, %struct.tcf_tunnel_key_params* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = call i64 @tunnel_key_dump_addresses(%struct.sk_buff* %94, %struct.ip_tunnel_info* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %133, label %102

102:                                              ; preds = %93
  %103 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %16, align 8
  %104 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %109 = load i32, i32* @TCA_TUNNEL_KEY_ENC_DST_PORT, align 4
  %110 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %16, align 8
  %111 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @nla_put_be16(%struct.sk_buff* %108, i32 %109, i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %133, label %115

115:                                              ; preds = %107, %102
  %116 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %117 = load i32, i32* @TCA_TUNNEL_KEY_NO_CSUM, align 4
  %118 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %16, align 8
  %119 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @TUNNEL_CSUM, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = call i64 @nla_put_u8(%struct.sk_buff* %116, i32 %117, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %115
  %129 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %130 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %15, align 8
  %131 = call i64 @tunnel_key_opts_dump(%struct.sk_buff* %129, %struct.ip_tunnel_info* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128, %115, %107, %93, %87
  br label %180

134:                                              ; preds = %128
  %135 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %16, align 8
  %136 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %141 = load i32, i32* @TCA_TUNNEL_KEY_ENC_TOS, align 4
  %142 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %16, align 8
  %143 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @nla_put_u8(%struct.sk_buff* %140, i32 %141, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  br label %180

148:                                              ; preds = %139, %134
  %149 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %16, align 8
  %150 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %148
  %154 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %155 = load i32, i32* @TCA_TUNNEL_KEY_ENC_TTL, align 4
  %156 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %16, align 8
  %157 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i64 @nla_put_u8(%struct.sk_buff* %154, i32 %155, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  br label %180

162:                                              ; preds = %153, %148
  br label %163

163:                                              ; preds = %162, %63
  %164 = load %struct.tcf_tunnel_key*, %struct.tcf_tunnel_key** %11, align 8
  %165 = getelementptr inbounds %struct.tcf_tunnel_key, %struct.tcf_tunnel_key* %164, i32 0, i32 1
  %166 = call i32 @tcf_tm_dump(%struct.tcf_t* %14, i32* %165)
  %167 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %168 = load i32, i32* @TCA_TUNNEL_KEY_TM, align 4
  %169 = load i32, i32* @TCA_TUNNEL_KEY_PAD, align 4
  %170 = call i64 @nla_put_64bit(%struct.sk_buff* %167, i32 %168, i32 4, %struct.tcf_t* %14, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %163
  br label %180

173:                                              ; preds = %163
  %174 = load %struct.tcf_tunnel_key*, %struct.tcf_tunnel_key** %11, align 8
  %175 = getelementptr inbounds %struct.tcf_tunnel_key, %struct.tcf_tunnel_key* %174, i32 0, i32 0
  %176 = call i32 @spin_unlock_bh(i32* %175)
  %177 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %178 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %5, align 4
  br label %187

180:                                              ; preds = %172, %161, %147, %133, %62
  %181 = load %struct.tcf_tunnel_key*, %struct.tcf_tunnel_key** %11, align 8
  %182 = getelementptr inbounds %struct.tcf_tunnel_key, %struct.tcf_tunnel_key* %181, i32 0, i32 0
  %183 = call i32 @spin_unlock_bh(i32* %182)
  %184 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %185 = load i8*, i8** %10, align 8
  %186 = call i32 @nlmsg_trim(%struct.sk_buff* %184, i8* %185)
  store i32 -1, i32* %5, align 4
  br label %187

187:                                              ; preds = %180, %173
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.tcf_tunnel_key* @to_tunnel_key(%struct.tc_action*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.tcf_tunnel_key_params* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_tunnel_key*) #1

declare dso_local i32 @tunnel_id_to_key32(i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @tunnel_key_dump_addresses(%struct.sk_buff*, %struct.ip_tunnel_info*) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @tunnel_key_opts_dump(%struct.sk_buff*, %struct.ip_tunnel_info*) #1

declare dso_local i32 @tcf_tm_dump(%struct.tcf_t*, i32*) #1

declare dso_local i64 @nla_put_64bit(%struct.sk_buff*, i32, i32, %struct.tcf_t*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
