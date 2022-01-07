; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6t_hbh.c_hbh_mt6.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6t_hbh.c_hbh_mt6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { i32, i32*, %struct.ip6t_opts* }
%struct.ip6t_opts = type { i32, i32, i32, i32, i32* }
%struct.ipv6_opt_hdr = type { i32 }

@hbh_mt6_reg = common dso_local global i32* null, align 8
@NEXTHDR_HOP = common dso_local global i32 0, align 4
@NEXTHDR_DEST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"IPv6 OPTS LEN %u %u \00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"len %02X %04X %02X \00", align 1
@IP6T_OPTS_LEN = common dso_local global i32 0, align 4
@IP6T_OPTS_INV_LEN = common dso_local global i32 0, align 4
@IP6T_OPTS_OPTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Strict \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"#%d \00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Tbad %02X %02X\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Tok \00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Lbad %02X %04X\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Lok \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Pad1\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"len%04X\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"new pointer is too large!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @hbh_mt6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hbh_mt6(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.ipv6_opt_hdr, align 4
  %7 = alloca %struct.ipv6_opt_hdr*, align 8
  %8 = alloca %struct.ip6t_opts*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ipv6_opt_hdr, align 4
  %14 = alloca %struct.ipv6_opt_hdr, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %20 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %21 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %20, i32 0, i32 2
  %22 = load %struct.ip6t_opts*, %struct.ip6t_opts** %21, align 8
  store %struct.ip6t_opts* %22, %struct.ip6t_opts** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %25 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32*, i32** @hbh_mt6_reg, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = icmp eq i32* %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @NEXTHDR_HOP, align 4
  br label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @NEXTHDR_DEST, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = call i32 @ipv6_find_hdr(%struct.sk_buff* %23, i32* %10, i32 %35, i32* null, i32* null)
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %46 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  br label %47

47:                                               ; preds = %44, %39
  store i32 0, i32* %3, align 4
  br label %290

48:                                               ; preds = %34
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i8* @skb_header_pointer(%struct.sk_buff* %49, i32 %50, i32 4, %struct.ipv6_opt_hdr* %6)
  %52 = bitcast i8* %51 to %struct.ipv6_opt_hdr*
  store %struct.ipv6_opt_hdr* %52, %struct.ipv6_opt_hdr** %7, align 8
  %53 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %7, align 8
  %54 = icmp eq %struct.ipv6_opt_hdr* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %57 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  store i32 0, i32* %3, align 4
  br label %290

58:                                               ; preds = %48
  %59 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %7, align 8
  %60 = call i32 @ipv6_optlen(%struct.ipv6_opt_hdr* %59)
  store i32 %60, i32* %11, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = sub i32 %63, %64
  %66 = load i32, i32* %11, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %290

69:                                               ; preds = %58
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %7, align 8
  %72 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %73)
  %75 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %76 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %80 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IP6T_OPTS_LEN, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %69
  %86 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %87 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %93 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @IP6T_OPTS_INV_LEN, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = xor i32 %91, %100
  %102 = icmp ne i32 %101, 0
  br label %103

103:                                              ; preds = %85, %69
  %104 = phi i1 [ true, %69 ], [ %102, %85 ]
  %105 = zext i1 %104 to i32
  %106 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78, i32 %105)
  %107 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %7, align 8
  %108 = icmp ne %struct.ipv6_opt_hdr* %107, null
  br i1 %108, label %109, label %136

109:                                              ; preds = %103
  %110 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %111 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @IP6T_OPTS_LEN, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %109
  %117 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %118 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %124 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @IP6T_OPTS_INV_LEN, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = xor i32 %122, %131
  %133 = icmp ne i32 %132, 0
  br label %134

134:                                              ; preds = %116, %109
  %135 = phi i1 [ true, %109 ], [ %133, %116 ]
  br label %136

136:                                              ; preds = %134, %103
  %137 = phi i1 [ false, %103 ], [ %135, %134 ]
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %10, align 4
  %140 = add i32 %139, 2
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %11, align 4
  %142 = sub i32 %141, 2
  store i32 %142, i32* %11, align 4
  %143 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %144 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @IP6T_OPTS_OPTS, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %136
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %3, align 4
  br label %290

151:                                              ; preds = %136
  %152 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %153 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %154 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %155)
  store i32 0, i32* %9, align 4
  br label %157

157:                                              ; preds = %278, %151
  %158 = load i32, i32* %9, align 4
  %159 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %160 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = icmp ult i32 %158, %161
  br i1 %162, label %163, label %281

163:                                              ; preds = %157
  %164 = load i32, i32* %11, align 4
  %165 = icmp ult i32 %164, 1
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  br label %281

167:                                              ; preds = %163
  %168 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %169 = load i32, i32* %10, align 4
  %170 = call i8* @skb_header_pointer(%struct.sk_buff* %168, i32 %169, i32 4, %struct.ipv6_opt_hdr* %13)
  %171 = bitcast i8* %170 to i32*
  store i32* %171, i32** %15, align 8
  %172 = load i32*, i32** %15, align 8
  %173 = icmp eq i32* %172, null
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  br label %281

175:                                              ; preds = %167
  %176 = load i32*, i32** %15, align 8
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %179 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %9, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, 65280
  %186 = ashr i32 %185, 8
  %187 = icmp ne i32 %177, %186
  br i1 %187, label %188, label %201

188:                                              ; preds = %175
  %189 = load i32*, i32** %15, align 8
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %192 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %191, i32 0, i32 4
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %9, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, 65280
  %199 = ashr i32 %198, 8
  %200 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %190, i32 %199)
  store i32 0, i32* %3, align 4
  br label %290

201:                                              ; preds = %175
  %202 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %203

203:                                              ; preds = %201
  %204 = load i32*, i32** %15, align 8
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %246

207:                                              ; preds = %203
  %208 = load i32, i32* %11, align 4
  %209 = icmp ult i32 %208, 2
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  br label %281

211:                                              ; preds = %207
  %212 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %213 = load i32, i32* %10, align 4
  %214 = add i32 %213, 1
  %215 = call i8* @skb_header_pointer(%struct.sk_buff* %212, i32 %214, i32 4, %struct.ipv6_opt_hdr* %14)
  %216 = bitcast i8* %215 to i32*
  store i32* %216, i32** %16, align 8
  %217 = load i32*, i32** %16, align 8
  %218 = icmp eq i32* %217, null
  br i1 %218, label %219, label %220

219:                                              ; preds = %211
  br label %281

220:                                              ; preds = %211
  %221 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %222 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %221, i32 0, i32 4
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %9, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = and i32 %227, 255
  store i32 %228, i32* %19, align 4
  %229 = load i32, i32* %19, align 4
  %230 = icmp ne i32 %229, 255
  br i1 %230, label %231, label %241

231:                                              ; preds = %220
  %232 = load i32, i32* %19, align 4
  %233 = load i32*, i32** %16, align 8
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %232, %234
  br i1 %235, label %236, label %241

236:                                              ; preds = %231
  %237 = load i32*, i32** %16, align 8
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %19, align 4
  %240 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %238, i32 %239)
  store i32 0, i32* %3, align 4
  br label %290

241:                                              ; preds = %231, %220
  %242 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %243 = load i32*, i32** %16, align 8
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, 2
  store i32 %245, i32* %17, align 4
  br label %248

246:                                              ; preds = %203
  %247 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %248

248:                                              ; preds = %246, %241
  %249 = load i32, i32* %17, align 4
  %250 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %249)
  %251 = load i32, i32* %10, align 4
  %252 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %253 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %17, align 4
  %256 = sub i32 %254, %255
  %257 = icmp ugt i32 %251, %256
  br i1 %257, label %262, label %258

258:                                              ; preds = %248
  %259 = load i32, i32* %11, align 4
  %260 = load i32, i32* %17, align 4
  %261 = icmp ult i32 %259, %260
  br i1 %261, label %262, label %271

262:                                              ; preds = %258, %248
  %263 = load i32, i32* %9, align 4
  %264 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %265 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = sub i32 %266, 1
  %268 = icmp ult i32 %263, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %262
  %270 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %281

271:                                              ; preds = %262, %258
  %272 = load i32, i32* %17, align 4
  %273 = load i32, i32* %10, align 4
  %274 = add i32 %273, %272
  store i32 %274, i32* %10, align 4
  %275 = load i32, i32* %17, align 4
  %276 = load i32, i32* %11, align 4
  %277 = sub i32 %276, %275
  store i32 %277, i32* %11, align 4
  br label %278

278:                                              ; preds = %271
  %279 = load i32, i32* %9, align 4
  %280 = add i32 %279, 1
  store i32 %280, i32* %9, align 4
  br label %157

281:                                              ; preds = %269, %219, %210, %174, %166, %157
  %282 = load i32, i32* %9, align 4
  %283 = load %struct.ip6t_opts*, %struct.ip6t_opts** %8, align 8
  %284 = getelementptr inbounds %struct.ip6t_opts, %struct.ip6t_opts* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = icmp eq i32 %282, %285
  br i1 %286, label %287, label %289

287:                                              ; preds = %281
  %288 = load i32, i32* %12, align 4
  store i32 %288, i32* %3, align 4
  br label %290

289:                                              ; preds = %281
  store i32 0, i32* %3, align 4
  br label %290

290:                                              ; preds = %289, %287, %236, %188, %149, %68, %55, %47
  %291 = load i32, i32* %3, align 4
  ret i32 %291
}

declare dso_local i32 @ipv6_find_hdr(%struct.sk_buff*, i32*, i32, i32*, i32*) #1

declare dso_local i8* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.ipv6_opt_hdr*) #1

declare dso_local i32 @ipv6_optlen(%struct.ipv6_opt_hdr*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
