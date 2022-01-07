; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_fib_rules.c_fib_nl2rule.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_fib_rules.c_fib_nl2rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.fib_rules_ops = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.fib_rule = type { i32, i32, i32, i64, i32, i32, i32, i32, i8*, %struct.TYPE_4__, i64, i64, i8*, i8*, i32, i32, i8*, i32, i32, i8*, %struct.net*, i32 }
%struct.net = type { i64 }
%struct.fib_rule_hdr = type { i32, i32, i64, i32 }
%struct.net_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FRA_SRC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Invalid source address\00", align 1
@FRA_DST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid dst address\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FRA_PRIORITY = common dso_local global i64 0, align 8
@FRA_PROTOCOL = common dso_local global i64 0, align 8
@RTPROT_UNSPEC = common dso_local global i8* null, align 8
@FRA_IIFNAME = common dso_local global i64 0, align 8
@IFNAMSIZ = common dso_local global i32 0, align 4
@FRA_OIFNAME = common dso_local global i64 0, align 8
@FRA_FWMARK = common dso_local global i64 0, align 8
@FRA_FWMASK = common dso_local global i64 0, align 8
@FRA_TUN_ID = common dso_local global i64 0, align 8
@FRA_L3MDEV = common dso_local global i64 0, align 8
@FRA_SUPPRESS_PREFIXLEN = common dso_local global i64 0, align 8
@FRA_SUPPRESS_IFGROUP = common dso_local global i64 0, align 8
@FRA_GOTO = common dso_local global i64 0, align 8
@FR_ACT_GOTO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Unexpected goto\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Backward goto not supported\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Missing goto target for action goto\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"l3mdev and table are mutually exclusive\00", align 1
@FRA_UID_RANGE = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"No permission to set uid\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Invalid uid range\00", align 1
@fib_kuid_range_unset = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@FRA_IP_PROTO = common dso_local global i64 0, align 8
@FRA_SPORT_RANGE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"Invalid sport range\00", align 1
@FRA_DPORT_RANGE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [20 x i8] c"Invalid dport range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*, %struct.fib_rules_ops*, %struct.nlattr**, %struct.fib_rule**, i32*)* @fib_nl2rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib_nl2rule(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2, %struct.fib_rules_ops* %3, %struct.nlattr** %4, %struct.fib_rule** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.nlmsghdr*, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.fib_rules_ops*, align 8
  %13 = alloca %struct.nlattr**, align 8
  %14 = alloca %struct.fib_rule**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.net*, align 8
  %17 = alloca %struct.fib_rule_hdr*, align 8
  %18 = alloca %struct.fib_rule*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.net_device*, align 8
  %21 = alloca %struct.net_device*, align 8
  %22 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %10, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %11, align 8
  store %struct.fib_rules_ops* %3, %struct.fib_rules_ops** %12, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %13, align 8
  store %struct.fib_rule** %5, %struct.fib_rule*** %14, align 8
  store i32* %6, i32** %15, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.net* @sock_net(i32 %25)
  store %struct.net* %26, %struct.net** %16, align 8
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %28 = call %struct.fib_rule_hdr* @nlmsg_data(%struct.nlmsghdr* %27)
  store %struct.fib_rule_hdr* %28, %struct.fib_rule_hdr** %17, align 8
  store %struct.fib_rule* null, %struct.fib_rule** %18, align 8
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %19, align 4
  %31 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %17, align 8
  %32 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %7
  %36 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %37 = load i64, i64* @FRA_SRC, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = icmp ne %struct.nlattr* %39, null
  br i1 %40, label %41, label %61

41:                                               ; preds = %35
  %42 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %17, align 8
  %43 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %12, align 8
  %46 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 8
  %49 = icmp sgt i32 %44, %48
  br i1 %49, label %61, label %50

50:                                               ; preds = %41
  %51 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %52 = load i64, i64* @FRA_SRC, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %51, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = call i64 @nla_len(%struct.nlattr* %54)
  %56 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %12, align 8
  %57 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ne i64 %55, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %50, %41, %35
  %62 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %63 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %503

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64, %7
  %66 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %17, align 8
  %67 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %100

70:                                               ; preds = %65
  %71 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %72 = load i64, i64* @FRA_DST, align 8
  %73 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %71, i64 %72
  %74 = load %struct.nlattr*, %struct.nlattr** %73, align 8
  %75 = icmp ne %struct.nlattr* %74, null
  br i1 %75, label %76, label %96

76:                                               ; preds = %70
  %77 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %17, align 8
  %78 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %12, align 8
  %81 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %82, 8
  %84 = icmp sgt i32 %79, %83
  br i1 %84, label %96, label %85

85:                                               ; preds = %76
  %86 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %87 = load i64, i64* @FRA_DST, align 8
  %88 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %86, i64 %87
  %89 = load %struct.nlattr*, %struct.nlattr** %88, align 8
  %90 = call i64 @nla_len(%struct.nlattr* %89)
  %91 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %12, align 8
  %92 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp ne i64 %90, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %85, %76, %70
  %97 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %98 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %503

99:                                               ; preds = %85
  br label %100

100:                                              ; preds = %99, %65
  %101 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %12, align 8
  %102 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call %struct.fib_rule* @kzalloc(i32 %103, i32 %104)
  store %struct.fib_rule* %105, %struct.fib_rule** %18, align 8
  %106 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %107 = icmp ne %struct.fib_rule* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %100
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %19, align 4
  br label %503

111:                                              ; preds = %100
  %112 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %113 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %112, i32 0, i32 21
  %114 = call i32 @refcount_set(i32* %113, i32 1)
  %115 = load %struct.net*, %struct.net** %16, align 8
  %116 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %117 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %116, i32 0, i32 20
  store %struct.net* %115, %struct.net** %117, align 8
  %118 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %119 = load i64, i64* @FRA_PRIORITY, align 8
  %120 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %118, i64 %119
  %121 = load %struct.nlattr*, %struct.nlattr** %120, align 8
  %122 = icmp ne %struct.nlattr* %121, null
  br i1 %122, label %123, label %132

123:                                              ; preds = %111
  %124 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %125 = load i64, i64* @FRA_PRIORITY, align 8
  %126 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %124, i64 %125
  %127 = load %struct.nlattr*, %struct.nlattr** %126, align 8
  %128 = call i8* @nla_get_u32(%struct.nlattr* %127)
  %129 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %130 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %129, i32 0, i32 12
  store i8* %128, i8** %130, align 8
  %131 = load i32*, i32** %15, align 8
  store i32 1, i32* %131, align 4
  br label %137

132:                                              ; preds = %111
  %133 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %12, align 8
  %134 = call i8* @fib_default_rule_pref(%struct.fib_rules_ops* %133)
  %135 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %136 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %135, i32 0, i32 12
  store i8* %134, i8** %136, align 8
  br label %137

137:                                              ; preds = %132, %123
  %138 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %139 = load i64, i64* @FRA_PROTOCOL, align 8
  %140 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %138, i64 %139
  %141 = load %struct.nlattr*, %struct.nlattr** %140, align 8
  %142 = icmp ne %struct.nlattr* %141, null
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %145 = load i64, i64* @FRA_PROTOCOL, align 8
  %146 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %144, i64 %145
  %147 = load %struct.nlattr*, %struct.nlattr** %146, align 8
  %148 = call i8* @nla_get_u8(%struct.nlattr* %147)
  br label %151

149:                                              ; preds = %137
  %150 = load i8*, i8** @RTPROT_UNSPEC, align 8
  br label %151

151:                                              ; preds = %149, %143
  %152 = phi i8* [ %148, %143 ], [ %150, %149 ]
  %153 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %154 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %153, i32 0, i32 19
  store i8* %152, i8** %154, align 8
  %155 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %156 = load i64, i64* @FRA_IIFNAME, align 8
  %157 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %155, i64 %156
  %158 = load %struct.nlattr*, %struct.nlattr** %157, align 8
  %159 = icmp ne %struct.nlattr* %158, null
  br i1 %159, label %160, label %186

160:                                              ; preds = %151
  %161 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %162 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %161, i32 0, i32 0
  store i32 -1, i32* %162, align 8
  %163 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %164 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %163, i32 0, i32 18
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %167 = load i64, i64* @FRA_IIFNAME, align 8
  %168 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %166, i64 %167
  %169 = load %struct.nlattr*, %struct.nlattr** %168, align 8
  %170 = load i32, i32* @IFNAMSIZ, align 4
  %171 = call i32 @nla_strlcpy(i32 %165, %struct.nlattr* %169, i32 %170)
  %172 = load %struct.net*, %struct.net** %16, align 8
  %173 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %174 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %173, i32 0, i32 18
  %175 = load i32, i32* %174, align 4
  %176 = call %struct.net_device* @__dev_get_by_name(%struct.net* %172, i32 %175)
  store %struct.net_device* %176, %struct.net_device** %20, align 8
  %177 = load %struct.net_device*, %struct.net_device** %20, align 8
  %178 = icmp ne %struct.net_device* %177, null
  br i1 %178, label %179, label %185

179:                                              ; preds = %160
  %180 = load %struct.net_device*, %struct.net_device** %20, align 8
  %181 = getelementptr inbounds %struct.net_device, %struct.net_device* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %184 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  br label %185

185:                                              ; preds = %179, %160
  br label %186

186:                                              ; preds = %185, %151
  %187 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %188 = load i64, i64* @FRA_OIFNAME, align 8
  %189 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %187, i64 %188
  %190 = load %struct.nlattr*, %struct.nlattr** %189, align 8
  %191 = icmp ne %struct.nlattr* %190, null
  br i1 %191, label %192, label %218

192:                                              ; preds = %186
  %193 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %194 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %193, i32 0, i32 1
  store i32 -1, i32* %194, align 4
  %195 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %196 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %195, i32 0, i32 17
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %199 = load i64, i64* @FRA_OIFNAME, align 8
  %200 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %198, i64 %199
  %201 = load %struct.nlattr*, %struct.nlattr** %200, align 8
  %202 = load i32, i32* @IFNAMSIZ, align 4
  %203 = call i32 @nla_strlcpy(i32 %197, %struct.nlattr* %201, i32 %202)
  %204 = load %struct.net*, %struct.net** %16, align 8
  %205 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %206 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %205, i32 0, i32 17
  %207 = load i32, i32* %206, align 8
  %208 = call %struct.net_device* @__dev_get_by_name(%struct.net* %204, i32 %207)
  store %struct.net_device* %208, %struct.net_device** %21, align 8
  %209 = load %struct.net_device*, %struct.net_device** %21, align 8
  %210 = icmp ne %struct.net_device* %209, null
  br i1 %210, label %211, label %217

211:                                              ; preds = %192
  %212 = load %struct.net_device*, %struct.net_device** %21, align 8
  %213 = getelementptr inbounds %struct.net_device, %struct.net_device* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %216 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 4
  br label %217

217:                                              ; preds = %211, %192
  br label %218

218:                                              ; preds = %217, %186
  %219 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %220 = load i64, i64* @FRA_FWMARK, align 8
  %221 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %219, i64 %220
  %222 = load %struct.nlattr*, %struct.nlattr** %221, align 8
  %223 = icmp ne %struct.nlattr* %222, null
  br i1 %223, label %224, label %240

224:                                              ; preds = %218
  %225 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %226 = load i64, i64* @FRA_FWMARK, align 8
  %227 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %225, i64 %226
  %228 = load %struct.nlattr*, %struct.nlattr** %227, align 8
  %229 = call i8* @nla_get_u32(%struct.nlattr* %228)
  %230 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %231 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %230, i32 0, i32 16
  store i8* %229, i8** %231, align 8
  %232 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %233 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %232, i32 0, i32 16
  %234 = load i8*, i8** %233, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %236, label %239

236:                                              ; preds = %224
  %237 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %238 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %237, i32 0, i32 2
  store i32 -1, i32* %238, align 8
  br label %239

239:                                              ; preds = %236, %224
  br label %240

240:                                              ; preds = %239, %218
  %241 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %242 = load i64, i64* @FRA_FWMASK, align 8
  %243 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %241, i64 %242
  %244 = load %struct.nlattr*, %struct.nlattr** %243, align 8
  %245 = icmp ne %struct.nlattr* %244, null
  br i1 %245, label %246, label %255

246:                                              ; preds = %240
  %247 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %248 = load i64, i64* @FRA_FWMASK, align 8
  %249 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %247, i64 %248
  %250 = load %struct.nlattr*, %struct.nlattr** %249, align 8
  %251 = call i8* @nla_get_u32(%struct.nlattr* %250)
  %252 = ptrtoint i8* %251 to i32
  %253 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %254 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %253, i32 0, i32 2
  store i32 %252, i32* %254, align 8
  br label %255

255:                                              ; preds = %246, %240
  %256 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %257 = load i64, i64* @FRA_TUN_ID, align 8
  %258 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %256, i64 %257
  %259 = load %struct.nlattr*, %struct.nlattr** %258, align 8
  %260 = icmp ne %struct.nlattr* %259, null
  br i1 %260, label %261, label %269

261:                                              ; preds = %255
  %262 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %263 = load i64, i64* @FRA_TUN_ID, align 8
  %264 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %262, i64 %263
  %265 = load %struct.nlattr*, %struct.nlattr** %264, align 8
  %266 = call i32 @nla_get_be64(%struct.nlattr* %265)
  %267 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %268 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %267, i32 0, i32 15
  store i32 %266, i32* %268, align 4
  br label %269

269:                                              ; preds = %261, %255
  %270 = load i32, i32* @EINVAL, align 4
  %271 = sub nsw i32 0, %270
  store i32 %271, i32* %19, align 4
  %272 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %273 = load i64, i64* @FRA_L3MDEV, align 8
  %274 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %272, i64 %273
  %275 = load %struct.nlattr*, %struct.nlattr** %274, align 8
  %276 = icmp ne %struct.nlattr* %275, null
  br i1 %276, label %277, label %287

277:                                              ; preds = %269
  %278 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %279 = load i64, i64* @FRA_L3MDEV, align 8
  %280 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %278, i64 %279
  %281 = load %struct.nlattr*, %struct.nlattr** %280, align 8
  %282 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %283 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %284 = call i64 @fib_nl2rule_l3mdev(%struct.nlattr* %281, %struct.fib_rule* %282, %struct.netlink_ext_ack* %283)
  %285 = icmp slt i64 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %277
  br label %500

287:                                              ; preds = %277, %269
  %288 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %17, align 8
  %289 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %292 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %291, i32 0, i32 3
  store i64 %290, i64* %292, align 8
  %293 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %17, align 8
  %294 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %297 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %296, i32 0, i32 14
  store i32 %295, i32* %297, align 8
  %298 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %17, align 8
  %299 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %300 = call i64 @frh_get_table(%struct.fib_rule_hdr* %298, %struct.nlattr** %299)
  %301 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %302 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %301, i32 0, i32 10
  store i64 %300, i64* %302, align 8
  %303 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %304 = load i64, i64* @FRA_SUPPRESS_PREFIXLEN, align 8
  %305 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %303, i64 %304
  %306 = load %struct.nlattr*, %struct.nlattr** %305, align 8
  %307 = icmp ne %struct.nlattr* %306, null
  br i1 %307, label %308, label %317

308:                                              ; preds = %287
  %309 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %310 = load i64, i64* @FRA_SUPPRESS_PREFIXLEN, align 8
  %311 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %309, i64 %310
  %312 = load %struct.nlattr*, %struct.nlattr** %311, align 8
  %313 = call i8* @nla_get_u32(%struct.nlattr* %312)
  %314 = ptrtoint i8* %313 to i32
  %315 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %316 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %315, i32 0, i32 4
  store i32 %314, i32* %316, align 8
  br label %320

317:                                              ; preds = %287
  %318 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %319 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %318, i32 0, i32 4
  store i32 -1, i32* %319, align 8
  br label %320

320:                                              ; preds = %317, %308
  %321 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %322 = load i64, i64* @FRA_SUPPRESS_IFGROUP, align 8
  %323 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %321, i64 %322
  %324 = load %struct.nlattr*, %struct.nlattr** %323, align 8
  %325 = icmp ne %struct.nlattr* %324, null
  br i1 %325, label %326, label %335

326:                                              ; preds = %320
  %327 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %328 = load i64, i64* @FRA_SUPPRESS_IFGROUP, align 8
  %329 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %327, i64 %328
  %330 = load %struct.nlattr*, %struct.nlattr** %329, align 8
  %331 = call i8* @nla_get_u32(%struct.nlattr* %330)
  %332 = ptrtoint i8* %331 to i32
  %333 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %334 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %333, i32 0, i32 5
  store i32 %332, i32* %334, align 4
  br label %338

335:                                              ; preds = %320
  %336 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %337 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %336, i32 0, i32 5
  store i32 -1, i32* %337, align 4
  br label %338

338:                                              ; preds = %335, %326
  %339 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %340 = load i64, i64* @FRA_GOTO, align 8
  %341 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %339, i64 %340
  %342 = load %struct.nlattr*, %struct.nlattr** %341, align 8
  %343 = icmp ne %struct.nlattr* %342, null
  br i1 %343, label %344, label %372

344:                                              ; preds = %338
  %345 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %346 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %345, i32 0, i32 3
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @FR_ACT_GOTO, align 8
  %349 = icmp ne i64 %347, %348
  br i1 %349, label %350, label %353

350:                                              ; preds = %344
  %351 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %352 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %351, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %500

353:                                              ; preds = %344
  %354 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %355 = load i64, i64* @FRA_GOTO, align 8
  %356 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %354, i64 %355
  %357 = load %struct.nlattr*, %struct.nlattr** %356, align 8
  %358 = call i8* @nla_get_u32(%struct.nlattr* %357)
  %359 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %360 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %359, i32 0, i32 13
  store i8* %358, i8** %360, align 8
  %361 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %362 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %361, i32 0, i32 13
  %363 = load i8*, i8** %362, align 8
  %364 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %365 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %364, i32 0, i32 12
  %366 = load i8*, i8** %365, align 8
  %367 = icmp ule i8* %363, %366
  br i1 %367, label %368, label %371

368:                                              ; preds = %353
  %369 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %370 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %369, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %500

371:                                              ; preds = %353
  br label %382

372:                                              ; preds = %338
  %373 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %374 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %373, i32 0, i32 3
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @FR_ACT_GOTO, align 8
  %377 = icmp eq i64 %375, %376
  br i1 %377, label %378, label %381

378:                                              ; preds = %372
  %379 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %380 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %379, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %500

381:                                              ; preds = %372
  br label %382

382:                                              ; preds = %381, %371
  %383 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %384 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %383, i32 0, i32 11
  %385 = load i64, i64* %384, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %395

387:                                              ; preds = %382
  %388 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %389 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %388, i32 0, i32 10
  %390 = load i64, i64* %389, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %387
  %393 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %394 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %393, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %500

395:                                              ; preds = %387, %382
  %396 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %397 = load i64, i64* @FRA_UID_RANGE, align 8
  %398 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %396, i64 %397
  %399 = load %struct.nlattr*, %struct.nlattr** %398, align 8
  %400 = icmp ne %struct.nlattr* %399, null
  br i1 %400, label %401, label %439

401:                                              ; preds = %395
  %402 = call i64 (...) @current_user_ns()
  %403 = load %struct.net*, %struct.net** %16, align 8
  %404 = getelementptr inbounds %struct.net, %struct.net* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = icmp ne i64 %402, %405
  br i1 %406, label %407, label %412

407:                                              ; preds = %401
  %408 = load i32, i32* @EPERM, align 4
  %409 = sub nsw i32 0, %408
  store i32 %409, i32* %19, align 4
  %410 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %411 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %410, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %500

412:                                              ; preds = %401
  %413 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %414 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %413, i32 0, i32 9
  %415 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %416 = call i64 @nla_get_kuid_range(%struct.nlattr** %415)
  %417 = bitcast %struct.TYPE_4__* %22 to i64*
  store i64 %416, i64* %417, align 4
  %418 = bitcast %struct.TYPE_4__* %414 to i8*
  %419 = bitcast %struct.TYPE_4__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %418, i8* align 4 %419, i64 8, i1 false)
  %420 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %421 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %420, i32 0, i32 9
  %422 = call i32 @uid_range_set(%struct.TYPE_4__* %421)
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %435

424:                                              ; preds = %412
  %425 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %426 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %425, i32 0, i32 9
  %427 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %430 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %429, i32 0, i32 9
  %431 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = call i32 @uid_lte(i32 %428, i32 %432)
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %438, label %435

435:                                              ; preds = %424, %412
  %436 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %437 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %436, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %500

438:                                              ; preds = %424
  br label %443

439:                                              ; preds = %395
  %440 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %441 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %440, i32 0, i32 9
  %442 = bitcast %struct.TYPE_4__* %441 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %442, i8* align 4 bitcast (%struct.TYPE_4__* @fib_kuid_range_unset to i8*), i64 8, i1 false)
  br label %443

443:                                              ; preds = %439, %438
  %444 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %445 = load i64, i64* @FRA_IP_PROTO, align 8
  %446 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %444, i64 %445
  %447 = load %struct.nlattr*, %struct.nlattr** %446, align 8
  %448 = icmp ne %struct.nlattr* %447, null
  br i1 %448, label %449, label %457

449:                                              ; preds = %443
  %450 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %451 = load i64, i64* @FRA_IP_PROTO, align 8
  %452 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %450, i64 %451
  %453 = load %struct.nlattr*, %struct.nlattr** %452, align 8
  %454 = call i8* @nla_get_u8(%struct.nlattr* %453)
  %455 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %456 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %455, i32 0, i32 8
  store i8* %454, i8** %456, align 8
  br label %457

457:                                              ; preds = %449, %443
  %458 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %459 = load i64, i64* @FRA_SPORT_RANGE, align 8
  %460 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %458, i64 %459
  %461 = load %struct.nlattr*, %struct.nlattr** %460, align 8
  %462 = icmp ne %struct.nlattr* %461, null
  br i1 %462, label %463, label %477

463:                                              ; preds = %457
  %464 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %465 = load i64, i64* @FRA_SPORT_RANGE, align 8
  %466 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %464, i64 %465
  %467 = load %struct.nlattr*, %struct.nlattr** %466, align 8
  %468 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %469 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %468, i32 0, i32 7
  %470 = call i32 @nla_get_port_range(%struct.nlattr* %467, i32* %469)
  store i32 %470, i32* %19, align 4
  %471 = load i32, i32* %19, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %476

473:                                              ; preds = %463
  %474 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %475 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %474, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %500

476:                                              ; preds = %463
  br label %477

477:                                              ; preds = %476, %457
  %478 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %479 = load i64, i64* @FRA_DPORT_RANGE, align 8
  %480 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %478, i64 %479
  %481 = load %struct.nlattr*, %struct.nlattr** %480, align 8
  %482 = icmp ne %struct.nlattr* %481, null
  br i1 %482, label %483, label %497

483:                                              ; preds = %477
  %484 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %485 = load i64, i64* @FRA_DPORT_RANGE, align 8
  %486 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %484, i64 %485
  %487 = load %struct.nlattr*, %struct.nlattr** %486, align 8
  %488 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %489 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %488, i32 0, i32 6
  %490 = call i32 @nla_get_port_range(%struct.nlattr* %487, i32* %489)
  store i32 %490, i32* %19, align 4
  %491 = load i32, i32* %19, align 4
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %496

493:                                              ; preds = %483
  %494 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %495 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %494, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %500

496:                                              ; preds = %483
  br label %497

497:                                              ; preds = %496, %477
  %498 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %499 = load %struct.fib_rule**, %struct.fib_rule*** %14, align 8
  store %struct.fib_rule* %498, %struct.fib_rule** %499, align 8
  store i32 0, i32* %8, align 4
  br label %505

500:                                              ; preds = %493, %473, %435, %407, %392, %378, %368, %350, %286
  %501 = load %struct.fib_rule*, %struct.fib_rule** %18, align 8
  %502 = call i32 @kfree(%struct.fib_rule* %501)
  br label %503

503:                                              ; preds = %500, %108, %96, %61
  %504 = load i32, i32* %19, align 4
  store i32 %504, i32* %8, align 4
  br label %505

505:                                              ; preds = %503, %497
  %506 = load i32, i32* %8, align 4
  ret i32 %506
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.fib_rule_hdr* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.fib_rule* @kzalloc(i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i8* @fib_default_rule_pref(%struct.fib_rules_ops*) #1

declare dso_local i8* @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @nla_strlcpy(i32, %struct.nlattr*, i32) #1

declare dso_local %struct.net_device* @__dev_get_by_name(%struct.net*, i32) #1

declare dso_local i32 @nla_get_be64(%struct.nlattr*) #1

declare dso_local i64 @fib_nl2rule_l3mdev(%struct.nlattr*, %struct.fib_rule*, %struct.netlink_ext_ack*) #1

declare dso_local i64 @frh_get_table(%struct.fib_rule_hdr*, %struct.nlattr**) #1

declare dso_local i64 @current_user_ns(...) #1

declare dso_local i64 @nla_get_kuid_range(%struct.nlattr**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @uid_range_set(%struct.TYPE_4__*) #1

declare dso_local i32 @uid_lte(i32, i32) #1

declare dso_local i32 @nla_get_port_range(%struct.nlattr*, i32*) #1

declare dso_local i32 @kfree(%struct.fib_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
