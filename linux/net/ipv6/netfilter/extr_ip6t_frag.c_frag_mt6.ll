; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6t_frag.c_frag_mt6.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6t_frag.c_frag_mt6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { i32, %struct.ip6t_frag* }
%struct.ip6t_frag = type { i32, i32, i32* }
%struct.frag_hdr = type { i32, i32, i32 }

@NEXTHDR_FRAGMENT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"INFO %04X \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"OFFSET %04X \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"RES %02X %04X\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"MF %04X \00", align 1
@IP6_MF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"ID %u %08X\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"IPv6 FRAG id %02X \00", align 1
@IP6T_FRAG_INV_IDS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"res %02X %02X%04X %02X \00", align 1
@IP6T_FRAG_RES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"first %02X %02X %02X \00", align 1
@IP6T_FRAG_FST = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"mf %02X %02X %02X \00", align 1
@IP6T_FRAG_MF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"last %02X %02X %02X\0A\00", align 1
@IP6T_FRAG_NMF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @frag_mt6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frag_mt6(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.frag_hdr, align 4
  %7 = alloca %struct.frag_hdr*, align 8
  %8 = alloca %struct.ip6t_frag*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %11 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %12 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %11, i32 0, i32 1
  %13 = load %struct.ip6t_frag*, %struct.ip6t_frag** %12, align 8
  store %struct.ip6t_frag* %13, %struct.ip6t_frag** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load i32, i32* @NEXTHDR_FRAGMENT, align 4
  %16 = call i32 @ipv6_find_hdr(%struct.sk_buff* %14, i32* %9, i32 %15, i32* null, i32* null)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %26 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  br label %27

27:                                               ; preds = %24, %19
  store i32 0, i32* %3, align 4
  br label %322

28:                                               ; preds = %2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.frag_hdr* @skb_header_pointer(%struct.sk_buff* %29, i32 %30, i32 12, %struct.frag_hdr* %6)
  store %struct.frag_hdr* %31, %struct.frag_hdr** %7, align 8
  %32 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %33 = icmp eq %struct.frag_hdr* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %36 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  store i32 0, i32* %3, align 4
  br label %322

37:                                               ; preds = %28
  %38 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %39 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %43 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ntohs(i32 %44)
  %46 = and i32 %45, -8
  %47 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %49 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %52 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ntohs(i32 %53)
  %55 = and i32 %54, 6
  %56 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %55)
  %57 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %58 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IP6_MF, align 4
  %61 = call i32 @htons(i32 %60)
  %62 = and i32 %59, %61
  %63 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %65 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ntohl(i32 %66)
  %68 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %69 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ntohl(i32 %70)
  %72 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %67, i32 %71)
  %73 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %74 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %79 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %84 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ntohl(i32 %85)
  %87 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %88 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @IP6T_FRAG_INV_IDS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i32 @id_match(i32 %77, i32 %82, i32 %86, i32 %95)
  %97 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  %98 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %99 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @IP6T_FRAG_RES, align 4
  %102 = and i32 %100, %101
  %103 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %104 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %107 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ntohs(i32 %108)
  %110 = and i32 %109, 6
  %111 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %112 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @IP6T_FRAG_RES, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %37
  %118 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %119 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %117
  %123 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %124 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @ntohs(i32 %125)
  %127 = and i32 %126, 6
  %128 = icmp ne i32 %127, 0
  br label %129

129:                                              ; preds = %122, %117
  %130 = phi i1 [ true, %117 ], [ %128, %122 ]
  br label %131

131:                                              ; preds = %129, %37
  %132 = phi i1 [ false, %37 ], [ %130, %129 ]
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %102, i32 %105, i32 %110, i32 %134)
  %136 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %137 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @IP6T_FRAG_FST, align 4
  %140 = and i32 %138, %139
  %141 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %142 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @ntohs(i32 %143)
  %145 = and i32 %144, -8
  %146 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %147 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @IP6T_FRAG_FST, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %131
  %153 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %154 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @ntohs(i32 %155)
  %157 = and i32 %156, -8
  %158 = icmp ne i32 %157, 0
  br label %159

159:                                              ; preds = %152, %131
  %160 = phi i1 [ false, %131 ], [ %158, %152 ]
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  %163 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %140, i32 %145, i32 %162)
  %164 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %165 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @IP6T_FRAG_MF, align 4
  %168 = and i32 %166, %167
  %169 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %170 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @ntohs(i32 %171)
  %173 = load i32, i32* @IP6_MF, align 4
  %174 = and i32 %172, %173
  %175 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %176 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @IP6T_FRAG_MF, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %159
  %182 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %183 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @ntohs(i32 %184)
  %186 = load i32, i32* @IP6_MF, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  %189 = xor i1 %188, true
  br label %190

190:                                              ; preds = %181, %159
  %191 = phi i1 [ false, %159 ], [ %189, %181 ]
  %192 = xor i1 %191, true
  %193 = zext i1 %192 to i32
  %194 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %168, i32 %174, i32 %193)
  %195 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %196 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @IP6T_FRAG_NMF, align 4
  %199 = and i32 %197, %198
  %200 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %201 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @ntohs(i32 %202)
  %204 = load i32, i32* @IP6_MF, align 4
  %205 = and i32 %203, %204
  %206 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %207 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @IP6T_FRAG_NMF, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %190
  %213 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %214 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @ntohs(i32 %215)
  %217 = load i32, i32* @IP6_MF, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br label %220

220:                                              ; preds = %212, %190
  %221 = phi i1 [ false, %190 ], [ %219, %212 ]
  %222 = xor i1 %221, true
  %223 = zext i1 %222 to i32
  %224 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %199, i32 %205, i32 %223)
  %225 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %226 = icmp ne %struct.frag_hdr* %225, null
  br i1 %226, label %227, label %319

227:                                              ; preds = %220
  %228 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %229 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %228, i32 0, i32 2
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %234 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 1
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %239 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @ntohl(i32 %240)
  %242 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %243 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @IP6T_FRAG_INV_IDS, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  %248 = xor i1 %247, true
  %249 = xor i1 %248, true
  %250 = zext i1 %249 to i32
  %251 = call i32 @id_match(i32 %232, i32 %237, i32 %241, i32 %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %319

253:                                              ; preds = %227
  %254 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %255 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @IP6T_FRAG_RES, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %272

260:                                              ; preds = %253
  %261 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %262 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %319, label %265

265:                                              ; preds = %260
  %266 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %267 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @ntohs(i32 %268)
  %270 = and i32 %269, 6
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %319, label %272

272:                                              ; preds = %265, %253
  %273 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %274 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @IP6T_FRAG_FST, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %286

279:                                              ; preds = %272
  %280 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %281 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @ntohs(i32 %282)
  %284 = and i32 %283, -8
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %319, label %286

286:                                              ; preds = %279, %272
  %287 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %288 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @IP6T_FRAG_MF, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %301

293:                                              ; preds = %286
  %294 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %295 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @ntohs(i32 %296)
  %298 = load i32, i32* @IP6_MF, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %319

301:                                              ; preds = %293, %286
  %302 = load %struct.ip6t_frag*, %struct.ip6t_frag** %8, align 8
  %303 = getelementptr inbounds %struct.ip6t_frag, %struct.ip6t_frag* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @IP6T_FRAG_NMF, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %316

308:                                              ; preds = %301
  %309 = load %struct.frag_hdr*, %struct.frag_hdr** %7, align 8
  %310 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @ntohs(i32 %311)
  %313 = load i32, i32* @IP6_MF, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br label %316

316:                                              ; preds = %308, %301
  %317 = phi i1 [ false, %301 ], [ %315, %308 ]
  %318 = xor i1 %317, true
  br label %319

319:                                              ; preds = %316, %293, %279, %265, %260, %227, %220
  %320 = phi i1 [ false, %293 ], [ false, %279 ], [ false, %265 ], [ false, %260 ], [ false, %227 ], [ false, %220 ], [ %318, %316 ]
  %321 = zext i1 %320 to i32
  store i32 %321, i32* %3, align 4
  br label %322

322:                                              ; preds = %319, %34, %27
  %323 = load i32, i32* %3, align 4
  ret i32 %323
}

declare dso_local i32 @ipv6_find_hdr(%struct.sk_buff*, i32*, i32, i32*, i32*) #1

declare dso_local %struct.frag_hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.frag_hdr*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @id_match(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
