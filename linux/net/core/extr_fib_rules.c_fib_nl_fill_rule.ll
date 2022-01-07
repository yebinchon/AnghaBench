; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_fib_rules.c_fib_nl_fill_rule.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_fib_rules.c_fib_nl_fill_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.fib_rule = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i64, i64*, i64*, i32, i64, i32 }
%struct.fib_rules_ops = type { i64 (%struct.fib_rule.0*, %struct.sk_buff*, %struct.fib_rule_hdr*)*, i32 }
%struct.fib_rule.0 = type opaque
%struct.fib_rule_hdr = type opaque
%struct.nlmsghdr = type { i32 }
%struct.fib_rule_hdr.1 = type { i32, i64, i32, i64, i64, i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@FRA_TABLE = common dso_local global i32 0, align 4
@FRA_SUPPRESS_PREFIXLEN = common dso_local global i32 0, align 4
@FRA_PROTOCOL = common dso_local global i32 0, align 4
@FR_ACT_GOTO = common dso_local global i64 0, align 8
@FIB_RULE_UNRESOLVED = common dso_local global i32 0, align 4
@FRA_IIFNAME = common dso_local global i32 0, align 4
@FIB_RULE_IIF_DETACHED = common dso_local global i32 0, align 4
@FRA_OIFNAME = common dso_local global i32 0, align 4
@FIB_RULE_OIF_DETACHED = common dso_local global i32 0, align 4
@FRA_PRIORITY = common dso_local global i32 0, align 4
@FRA_FWMARK = common dso_local global i32 0, align 4
@FRA_FWMASK = common dso_local global i32 0, align 4
@FRA_GOTO = common dso_local global i32 0, align 4
@FRA_TUN_ID = common dso_local global i32 0, align 4
@FRA_PAD = common dso_local global i32 0, align 4
@FRA_L3MDEV = common dso_local global i32 0, align 4
@FRA_SPORT_RANGE = common dso_local global i32 0, align 4
@FRA_DPORT_RANGE = common dso_local global i32 0, align 4
@FRA_IP_PROTO = common dso_local global i32 0, align 4
@FRA_SUPPRESS_IFGROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.fib_rule*, i32, i32, i32, i32, %struct.fib_rules_ops*)* @fib_nl_fill_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib_nl_fill_rule(%struct.sk_buff* %0, %struct.fib_rule* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.fib_rules_ops* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.fib_rule*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fib_rules_ops*, align 8
  %16 = alloca %struct.nlmsghdr*, align 8
  %17 = alloca %struct.fib_rule_hdr.1*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.fib_rule* %1, %struct.fib_rule** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.fib_rules_ops* %6, %struct.fib_rules_ops** %15, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %14, align 4
  %23 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %18, i32 %19, i32 %20, i32 %21, i32 48, i32 %22)
  store %struct.nlmsghdr* %23, %struct.nlmsghdr** %16, align 8
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %25 = icmp eq %struct.nlmsghdr* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %7
  %27 = load i32, i32* @EMSGSIZE, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %326

29:                                               ; preds = %7
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %31 = call %struct.fib_rule_hdr.1* @nlmsg_data(%struct.nlmsghdr* %30)
  store %struct.fib_rule_hdr.1* %31, %struct.fib_rule_hdr.1** %17, align 8
  %32 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %15, align 8
  %33 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.fib_rule_hdr.1*, %struct.fib_rule_hdr.1** %17, align 8
  %36 = getelementptr inbounds %struct.fib_rule_hdr.1, %struct.fib_rule_hdr.1* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %38 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.fib_rule_hdr.1*, %struct.fib_rule_hdr.1** %17, align 8
  %41 = getelementptr inbounds %struct.fib_rule_hdr.1, %struct.fib_rule_hdr.1* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = load i32, i32* @FRA_TABLE, align 4
  %44 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %45 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @nla_put_u32(%struct.sk_buff* %42, i32 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %29
  br label %320

50:                                               ; preds = %29
  %51 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %52 = load i32, i32* @FRA_SUPPRESS_PREFIXLEN, align 4
  %53 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %54 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @nla_put_u32(%struct.sk_buff* %51, i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %320

59:                                               ; preds = %50
  %60 = load %struct.fib_rule_hdr.1*, %struct.fib_rule_hdr.1** %17, align 8
  %61 = getelementptr inbounds %struct.fib_rule_hdr.1, %struct.fib_rule_hdr.1* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load %struct.fib_rule_hdr.1*, %struct.fib_rule_hdr.1** %17, align 8
  %63 = getelementptr inbounds %struct.fib_rule_hdr.1, %struct.fib_rule_hdr.1* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %65 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.fib_rule_hdr.1*, %struct.fib_rule_hdr.1** %17, align 8
  %68 = getelementptr inbounds %struct.fib_rule_hdr.1, %struct.fib_rule_hdr.1* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %70 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %69, i32 0, i32 20
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.fib_rule_hdr.1*, %struct.fib_rule_hdr.1** %17, align 8
  %73 = getelementptr inbounds %struct.fib_rule_hdr.1, %struct.fib_rule_hdr.1* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %75 = load i32, i32* @FRA_PROTOCOL, align 4
  %76 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %77 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %76, i32 0, i32 19
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @nla_put_u8(%struct.sk_buff* %74, i32 %75, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %59
  br label %320

82:                                               ; preds = %59
  %83 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %84 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @FR_ACT_GOTO, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %82
  %89 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %90 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %89, i32 0, i32 18
  %91 = load i32, i32* %90, align 8
  %92 = call i32* @rcu_access_pointer(i32 %91)
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load i32, i32* @FIB_RULE_UNRESOLVED, align 4
  %96 = load %struct.fib_rule_hdr.1*, %struct.fib_rule_hdr.1** %17, align 8
  %97 = getelementptr inbounds %struct.fib_rule_hdr.1, %struct.fib_rule_hdr.1* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %94, %88, %82
  %101 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %102 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %101, i32 0, i32 17
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %128

107:                                              ; preds = %100
  %108 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %109 = load i32, i32* @FRA_IIFNAME, align 4
  %110 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %111 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %110, i32 0, i32 17
  %112 = load i64*, i64** %111, align 8
  %113 = call i64 @nla_put_string(%struct.sk_buff* %108, i32 %109, i64* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %320

116:                                              ; preds = %107
  %117 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %118 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load i32, i32* @FIB_RULE_IIF_DETACHED, align 4
  %123 = load %struct.fib_rule_hdr.1*, %struct.fib_rule_hdr.1** %17, align 8
  %124 = getelementptr inbounds %struct.fib_rule_hdr.1, %struct.fib_rule_hdr.1* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %121, %116
  br label %128

128:                                              ; preds = %127, %100
  %129 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %130 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %129, i32 0, i32 16
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %156

135:                                              ; preds = %128
  %136 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %137 = load i32, i32* @FRA_OIFNAME, align 4
  %138 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %139 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %138, i32 0, i32 16
  %140 = load i64*, i64** %139, align 8
  %141 = call i64 @nla_put_string(%struct.sk_buff* %136, i32 %137, i64* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  br label %320

144:                                              ; preds = %135
  %145 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %146 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, -1
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load i32, i32* @FIB_RULE_OIF_DETACHED, align 4
  %151 = load %struct.fib_rule_hdr.1*, %struct.fib_rule_hdr.1** %17, align 8
  %152 = getelementptr inbounds %struct.fib_rule_hdr.1, %struct.fib_rule_hdr.1* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %149, %144
  br label %156

156:                                              ; preds = %155, %128
  %157 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %158 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %156
  %162 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %163 = load i32, i32* @FRA_PRIORITY, align 4
  %164 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %165 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @nla_put_u32(%struct.sk_buff* %162, i32 %163, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %288, label %169

169:                                              ; preds = %161, %156
  %170 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %171 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %169
  %175 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %176 = load i32, i32* @FRA_FWMARK, align 4
  %177 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %178 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @nla_put_u32(%struct.sk_buff* %175, i32 %176, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %288, label %182

182:                                              ; preds = %174, %169
  %183 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %184 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %192, label %187

187:                                              ; preds = %182
  %188 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %189 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %187, %182
  %193 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %194 = load i32, i32* @FRA_FWMASK, align 4
  %195 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %196 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 8
  %198 = call i64 @nla_put_u32(%struct.sk_buff* %193, i32 %194, i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %288, label %200

200:                                              ; preds = %192, %187
  %201 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %202 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %201, i32 0, i32 8
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %200
  %206 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %207 = load i32, i32* @FRA_GOTO, align 4
  %208 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %209 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %208, i32 0, i32 8
  %210 = load i32, i32* %209, align 4
  %211 = call i64 @nla_put_u32(%struct.sk_buff* %206, i32 %207, i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %288, label %213

213:                                              ; preds = %205, %200
  %214 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %215 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %214, i32 0, i32 15
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %213
  %219 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %220 = load i32, i32* @FRA_TUN_ID, align 4
  %221 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %222 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %221, i32 0, i32 15
  %223 = load i64, i64* %222, align 8
  %224 = load i32, i32* @FRA_PAD, align 4
  %225 = call i64 @nla_put_be64(%struct.sk_buff* %219, i32 %220, i64 %223, i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %288, label %227

227:                                              ; preds = %218, %213
  %228 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %229 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %228, i32 0, i32 14
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %240

232:                                              ; preds = %227
  %233 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %234 = load i32, i32* @FRA_L3MDEV, align 4
  %235 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %236 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %235, i32 0, i32 14
  %237 = load i64, i64* %236, align 8
  %238 = call i64 @nla_put_u8(%struct.sk_buff* %233, i32 %234, i64 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %288, label %240

240:                                              ; preds = %232, %227
  %241 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %242 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %241, i32 0, i32 13
  %243 = call i64 @uid_range_set(i32* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %240
  %246 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %247 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %248 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %247, i32 0, i32 13
  %249 = call i64 @nla_put_uid_range(%struct.sk_buff* %246, i32* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %288, label %251

251:                                              ; preds = %245, %240
  %252 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %253 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %252, i32 0, i32 12
  %254 = call i64 @fib_rule_port_range_set(i32* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %251
  %257 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %258 = load i32, i32* @FRA_SPORT_RANGE, align 4
  %259 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %260 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %259, i32 0, i32 12
  %261 = call i64 @nla_put_port_range(%struct.sk_buff* %257, i32 %258, i32* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %288, label %263

263:                                              ; preds = %256, %251
  %264 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %265 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %264, i32 0, i32 11
  %266 = call i64 @fib_rule_port_range_set(i32* %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %275

268:                                              ; preds = %263
  %269 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %270 = load i32, i32* @FRA_DPORT_RANGE, align 4
  %271 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %272 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %271, i32 0, i32 11
  %273 = call i64 @nla_put_port_range(%struct.sk_buff* %269, i32 %270, i32* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %288, label %275

275:                                              ; preds = %268, %263
  %276 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %277 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %276, i32 0, i32 10
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %289

280:                                              ; preds = %275
  %281 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %282 = load i32, i32* @FRA_IP_PROTO, align 4
  %283 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %284 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %283, i32 0, i32 10
  %285 = load i64, i64* %284, align 8
  %286 = call i64 @nla_put_u8(%struct.sk_buff* %281, i32 %282, i64 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %280, %268, %256, %245, %232, %218, %205, %192, %174, %161
  br label %320

289:                                              ; preds = %280, %275
  %290 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %291 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %290, i32 0, i32 9
  %292 = load i32, i32* %291, align 8
  %293 = icmp ne i32 %292, -1
  br i1 %293, label %294, label %304

294:                                              ; preds = %289
  %295 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %296 = load i32, i32* @FRA_SUPPRESS_IFGROUP, align 4
  %297 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %298 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %297, i32 0, i32 9
  %299 = load i32, i32* %298, align 8
  %300 = call i64 @nla_put_u32(%struct.sk_buff* %295, i32 %296, i32 %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %294
  br label %320

303:                                              ; preds = %294
  br label %304

304:                                              ; preds = %303, %289
  %305 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %15, align 8
  %306 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %305, i32 0, i32 0
  %307 = load i64 (%struct.fib_rule.0*, %struct.sk_buff*, %struct.fib_rule_hdr*)*, i64 (%struct.fib_rule.0*, %struct.sk_buff*, %struct.fib_rule_hdr*)** %306, align 8
  %308 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %309 = bitcast %struct.fib_rule* %308 to %struct.fib_rule.0*
  %310 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %311 = load %struct.fib_rule_hdr.1*, %struct.fib_rule_hdr.1** %17, align 8
  %312 = bitcast %struct.fib_rule_hdr.1* %311 to %struct.fib_rule_hdr*
  %313 = call i64 %307(%struct.fib_rule.0* %309, %struct.sk_buff* %310, %struct.fib_rule_hdr* %312)
  %314 = icmp slt i64 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %304
  br label %320

316:                                              ; preds = %304
  %317 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %318 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %319 = call i32 @nlmsg_end(%struct.sk_buff* %317, %struct.nlmsghdr* %318)
  store i32 0, i32* %8, align 4
  br label %326

320:                                              ; preds = %315, %302, %288, %143, %115, %81, %58, %49
  %321 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %322 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %323 = call i32 @nlmsg_cancel(%struct.sk_buff* %321, %struct.nlmsghdr* %322)
  %324 = load i32, i32* @EMSGSIZE, align 4
  %325 = sub nsw i32 0, %324
  store i32 %325, i32* %8, align 4
  br label %326

326:                                              ; preds = %320, %316, %26
  %327 = load i32, i32* %8, align 4
  ret i32 %327
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.fib_rule_hdr.1* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i64) #1

declare dso_local i32* @rcu_access_pointer(i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i64*) #1

declare dso_local i64 @nla_put_be64(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i64 @uid_range_set(i32*) #1

declare dso_local i64 @nla_put_uid_range(%struct.sk_buff*, i32*) #1

declare dso_local i64 @fib_rule_port_range_set(i32*) #1

declare dso_local i64 @nla_put_port_range(%struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
