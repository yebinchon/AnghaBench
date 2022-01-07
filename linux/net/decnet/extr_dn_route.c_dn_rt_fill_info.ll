; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_rt_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_rt_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dn_route = type { i32, i64, i64, i64, %struct.TYPE_6__, %struct.TYPE_7__, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.rtmsg = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.nlmsghdr = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@AF_DECnet = common dso_local global i32 0, align 4
@RT_TABLE_MAIN = common dso_local global i32 0, align 4
@RTM_F_CLONED = common dso_local global i32 0, align 4
@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@RTPROT_UNSPEC = common dso_local global i32 0, align 4
@RTCF_NOTIFY = common dso_local global i32 0, align 4
@RTM_F_NOTIFY = common dso_local global i32 0, align 4
@RTA_TABLE = common dso_local global i32 0, align 4
@RTA_DST = common dso_local global i32 0, align 4
@RTA_SRC = common dso_local global i32 0, align 4
@RTA_OIF = common dso_local global i32 0, align 4
@RTA_PREFSRC = common dso_local global i32 0, align 4
@RTA_GATEWAY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@RTA_IIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32, i32, i32)* @dn_rt_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_rt_fill_info(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dn_route*, align 8
  %15 = alloca %struct.rtmsg*, align 8
  %16 = alloca %struct.nlmsghdr*, align 8
  %17 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = call i64 @skb_dst(%struct.sk_buff* %18)
  %20 = inttoptr i64 %19 to %struct.dn_route*
  store %struct.dn_route* %20, %struct.dn_route** %14, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %13, align 4
  %26 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %21, i32 %22, i32 %23, i32 %24, i32 48, i32 %25)
  store %struct.nlmsghdr* %26, %struct.nlmsghdr** %16, align 8
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %28 = icmp ne %struct.nlmsghdr* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* @EMSGSIZE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %215

32:                                               ; preds = %6
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %34 = call %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr* %33)
  store %struct.rtmsg* %34, %struct.rtmsg** %15, align 8
  %35 = load i32, i32* @AF_DECnet, align 4
  %36 = load %struct.rtmsg*, %struct.rtmsg** %15, align 8
  %37 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %36, i32 0, i32 8
  store i32 %35, i32* %37, align 8
  %38 = load %struct.rtmsg*, %struct.rtmsg** %15, align 8
  %39 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %38, i32 0, i32 0
  store i32 16, i32* %39, align 8
  %40 = load %struct.rtmsg*, %struct.rtmsg** %15, align 8
  %41 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.rtmsg*, %struct.rtmsg** %15, align 8
  %43 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %42, i32 0, i32 7
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @RT_TABLE_MAIN, align 4
  %45 = load %struct.rtmsg*, %struct.rtmsg** %15, align 8
  %46 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 8
  %47 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %48 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.rtmsg*, %struct.rtmsg** %15, align 8
  %51 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %53 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, -65536
  %56 = load i32, i32* @RTM_F_CLONED, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.rtmsg*, %struct.rtmsg** %15, align 8
  %59 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %61 = load %struct.rtmsg*, %struct.rtmsg** %15, align 8
  %62 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @RTPROT_UNSPEC, align 4
  %64 = load %struct.rtmsg*, %struct.rtmsg** %15, align 8
  %65 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %67 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @RTCF_NOTIFY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %32
  %73 = load i32, i32* @RTM_F_NOTIFY, align 4
  %74 = load %struct.rtmsg*, %struct.rtmsg** %15, align 8
  %75 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %72, %32
  %79 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %80 = load i32, i32* @RTA_TABLE, align 4
  %81 = load i32, i32* @RT_TABLE_MAIN, align 4
  %82 = call i64 @nla_put_u32(%struct.sk_buff* %79, i32 %80, i32 %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %78
  %85 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %86 = load i32, i32* @RTA_DST, align 4
  %87 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %88 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @nla_put_le16(%struct.sk_buff* %85, i32 %86, i64 %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84, %78
  br label %209

93:                                               ; preds = %84
  %94 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %95 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %93
  %100 = load %struct.rtmsg*, %struct.rtmsg** %15, align 8
  %101 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %100, i32 0, i32 1
  store i32 16, i32* %101, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %103 = load i32, i32* @RTA_SRC, align 4
  %104 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %105 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @nla_put_le16(%struct.sk_buff* %102, i32 %103, i64 %107)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %99
  br label %209

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111, %93
  %113 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %114 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = icmp ne %struct.TYPE_5__* %116, null
  br i1 %117, label %118, label %130

118:                                              ; preds = %112
  %119 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %120 = load i32, i32* @RTA_OIF, align 4
  %121 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %122 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @nla_put_u32(%struct.sk_buff* %119, i32 %120, i32 %126)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %118
  br label %209

130:                                              ; preds = %118, %112
  %131 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %132 = load i32, i32* @RTA_PREFSRC, align 4
  %133 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %134 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @nla_put_le16(%struct.sk_buff* %131, i32 %132, i64 %135)
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  br label %209

139:                                              ; preds = %130
  %140 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %141 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %144 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %142, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %139
  %148 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %149 = load i32, i32* @RTA_GATEWAY, align 4
  %150 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %151 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @nla_put_le16(%struct.sk_buff* %148, i32 %149, i64 %152)
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %147
  br label %209

156:                                              ; preds = %147, %139
  %157 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %158 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %159 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %158, i32 0, i32 5
  %160 = call i32 @dst_metrics_ptr(%struct.TYPE_7__* %159)
  %161 = call i64 @rtnetlink_put_metrics(%struct.sk_buff* %157, i32 %160)
  %162 = icmp slt i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %156
  br label %209

164:                                              ; preds = %156
  %165 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %166 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %165, i32 0, i32 5
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %164
  %171 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %172 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @jiffies, align 8
  %176 = sub nsw i64 %174, %175
  br label %178

177:                                              ; preds = %164
  br label %178

178:                                              ; preds = %177, %170
  %179 = phi i64 [ %176, %170 ], [ 0, %177 ]
  store i64 %179, i64* %17, align 8
  %180 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %181 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %182 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %181, i32 0, i32 5
  %183 = load i64, i64* %17, align 8
  %184 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %185 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %184, i32 0, i32 5
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = call i64 @rtnl_put_cacheinfo(%struct.sk_buff* %180, %struct.TYPE_7__* %182, i32 0, i64 %183, i32 %187)
  %189 = icmp slt i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %178
  br label %209

191:                                              ; preds = %178
  %192 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %193 = call i64 @dn_is_input_route(%struct.dn_route* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %191
  %196 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %197 = load i32, i32* @RTA_IIF, align 4
  %198 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %199 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = call i64 @nla_put_u32(%struct.sk_buff* %196, i32 %197, i32 %201)
  %203 = icmp slt i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %195
  br label %209

205:                                              ; preds = %195, %191
  %206 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %207 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %208 = call i32 @nlmsg_end(%struct.sk_buff* %206, %struct.nlmsghdr* %207)
  store i32 0, i32* %7, align 4
  br label %215

209:                                              ; preds = %204, %190, %163, %155, %138, %129, %110, %92
  %210 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %211 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %212 = call i32 @nlmsg_cancel(%struct.sk_buff* %210, %struct.nlmsghdr* %211)
  %213 = load i32, i32* @EMSGSIZE, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %7, align 4
  br label %215

215:                                              ; preds = %209, %205, %29
  %216 = load i32, i32* %7, align 4
  ret i32 %216
}

declare dso_local i64 @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_le16(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @rtnetlink_put_metrics(%struct.sk_buff*, i32) #1

declare dso_local i32 @dst_metrics_ptr(%struct.TYPE_7__*) #1

declare dso_local i64 @rtnl_put_cacheinfo(%struct.sk_buff*, %struct.TYPE_7__*, i32, i64, i32) #1

declare dso_local i64 @dn_is_input_route(%struct.dn_route*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
