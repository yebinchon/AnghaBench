; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_parse_service.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_parse_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32 }
%struct.ip_vs_service_user_kern = type { i32, i32, i8*, i32*, i32*, i32, %struct.ip_vs_flags, i8*, i8*, i8* }
%struct.ip_vs_flags = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.ip_vs_service = type { i32 }

@IPVS_SVC_ATTR_MAX = common dso_local global i32 0, align 4
@ip_vs_svc_policy = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPVS_SVC_ATTR_AF = common dso_local global i64 0, align 8
@IPVS_SVC_ATTR_PROTOCOL = common dso_local global i64 0, align 8
@IPVS_SVC_ATTR_ADDR = common dso_local global i64 0, align 8
@IPVS_SVC_ATTR_PORT = common dso_local global i64 0, align 8
@IPVS_SVC_ATTR_FWMARK = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i8* null, align 8
@IPVS_SVC_ATTR_SCHED_NAME = common dso_local global i64 0, align 8
@IPVS_SVC_ATTR_PE_NAME = common dso_local global i64 0, align 8
@IPVS_SVC_ATTR_FLAGS = common dso_local global i64 0, align 8
@IPVS_SVC_ATTR_TIMEOUT = common dso_local global i64 0, align 8
@IPVS_SVC_ATTR_NETMASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netns_ipvs*, %struct.ip_vs_service_user_kern*, %struct.nlattr*, i32, %struct.ip_vs_service**)* @ip_vs_genl_parse_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_genl_parse_service(%struct.netns_ipvs* %0, %struct.ip_vs_service_user_kern* %1, %struct.nlattr* %2, i32 %3, %struct.ip_vs_service** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.netns_ipvs*, align 8
  %8 = alloca %struct.ip_vs_service_user_kern*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ip_vs_service**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.nlattr*, align 8
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca %struct.nlattr*, align 8
  %17 = alloca %struct.nlattr*, align 8
  %18 = alloca %struct.nlattr*, align 8
  %19 = alloca %struct.ip_vs_service*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.nlattr*, align 8
  %22 = alloca %struct.nlattr*, align 8
  %23 = alloca %struct.nlattr*, align 8
  %24 = alloca %struct.nlattr*, align 8
  %25 = alloca %struct.nlattr*, align 8
  %26 = alloca %struct.ip_vs_flags, align 4
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %7, align 8
  store %struct.ip_vs_service_user_kern* %1, %struct.ip_vs_service_user_kern** %8, align 8
  store %struct.nlattr* %2, %struct.nlattr** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ip_vs_service** %4, %struct.ip_vs_service*** %11, align 8
  %27 = load i32, i32* @IPVS_SVC_ATTR_MAX, align 4
  %28 = add nsw i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %12, align 8
  %31 = alloca %struct.nlattr*, i64 %29, align 16
  store i64 %29, i64* %13, align 8
  %32 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %33 = icmp eq %struct.nlattr* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %5
  %35 = load i32, i32* @IPVS_SVC_ATTR_MAX, align 4
  %36 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %37 = load i32, i32* @ip_vs_svc_policy, align 4
  %38 = call i64 @nla_parse_nested_deprecated(%struct.nlattr** %31, i32 %35, %struct.nlattr* %36, i32 %37, i32* null)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %5
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %232

43:                                               ; preds = %34
  %44 = load i64, i64* @IPVS_SVC_ATTR_AF, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  store %struct.nlattr* %46, %struct.nlattr** %14, align 8
  %47 = load i64, i64* @IPVS_SVC_ATTR_PROTOCOL, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  store %struct.nlattr* %49, %struct.nlattr** %17, align 8
  %50 = load i64, i64* @IPVS_SVC_ATTR_ADDR, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  store %struct.nlattr* %52, %struct.nlattr** %18, align 8
  %53 = load i64, i64* @IPVS_SVC_ATTR_PORT, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  store %struct.nlattr* %55, %struct.nlattr** %15, align 8
  %56 = load i64, i64* @IPVS_SVC_ATTR_FWMARK, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  store %struct.nlattr* %58, %struct.nlattr** %16, align 8
  %59 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %60 = icmp ne %struct.nlattr* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %43
  %62 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %63 = icmp ne %struct.nlattr* %62, null
  br i1 %63, label %76, label %64

64:                                               ; preds = %61
  %65 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %66 = icmp ne %struct.nlattr* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %69 = icmp ne %struct.nlattr* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %72 = icmp ne %struct.nlattr* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %70, %67, %64, %43
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %232

76:                                               ; preds = %70, %61
  %77 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %8, align 8
  %78 = call i32 @memset(%struct.ip_vs_service_user_kern* %77, i32 0, i32 72)
  %79 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %80 = call i8* @nla_get_u16(%struct.nlattr* %79)
  %81 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %8, align 8
  %82 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %81, i32 0, i32 8
  store i8* %80, i8** %82, align 8
  %83 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %8, align 8
  %84 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %83, i32 0, i32 8
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @ip_vs_is_af_valid(i8* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %76
  %89 = load i32, i32* @EAFNOSUPPORT, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %232

91:                                               ; preds = %76
  %92 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %93 = icmp ne %struct.nlattr* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load i8*, i8** @IPPROTO_TCP, align 8
  %96 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %8, align 8
  %97 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %96, i32 0, i32 7
  store i8* %95, i8** %97, align 8
  %98 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %99 = call i8* @nla_get_u32(%struct.nlattr* %98)
  %100 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %8, align 8
  %101 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %100, i32 0, i32 9
  store i8* %99, i8** %101, align 8
  br label %117

102:                                              ; preds = %91
  %103 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %104 = call i8* @nla_get_u16(%struct.nlattr* %103)
  %105 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %8, align 8
  %106 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %105, i32 0, i32 7
  store i8* %104, i8** %106, align 8
  %107 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %8, align 8
  %108 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %107, i32 0, i32 6
  %109 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %110 = call i32 @nla_memcpy(%struct.ip_vs_flags* %108, %struct.nlattr* %109, i32 8)
  %111 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %112 = call i32 @nla_get_be16(%struct.nlattr* %111)
  %113 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %8, align 8
  %114 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 8
  %115 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %8, align 8
  %116 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %115, i32 0, i32 9
  store i8* null, i8** %116, align 8
  br label %117

117:                                              ; preds = %102, %94
  %118 = call i32 (...) @rcu_read_lock()
  %119 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %8, align 8
  %120 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %119, i32 0, i32 9
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %132

123:                                              ; preds = %117
  %124 = load %struct.netns_ipvs*, %struct.netns_ipvs** %7, align 8
  %125 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %8, align 8
  %126 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %125, i32 0, i32 8
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %8, align 8
  %129 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %128, i32 0, i32 9
  %130 = load i8*, i8** %129, align 8
  %131 = call %struct.ip_vs_service* @__ip_vs_svc_fwm_find(%struct.netns_ipvs* %124, i8* %127, i8* %130)
  store %struct.ip_vs_service* %131, %struct.ip_vs_service** %19, align 8
  br label %146

132:                                              ; preds = %117
  %133 = load %struct.netns_ipvs*, %struct.netns_ipvs** %7, align 8
  %134 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %8, align 8
  %135 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %134, i32 0, i32 8
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %8, align 8
  %138 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %137, i32 0, i32 7
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %8, align 8
  %141 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %140, i32 0, i32 6
  %142 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %8, align 8
  %143 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = call %struct.ip_vs_service* @__ip_vs_service_find(%struct.netns_ipvs* %133, i8* %136, i8* %139, %struct.ip_vs_flags* %141, i32 %144)
  store %struct.ip_vs_service* %145, %struct.ip_vs_service** %19, align 8
  br label %146

146:                                              ; preds = %132, %123
  %147 = call i32 (...) @rcu_read_unlock()
  %148 = load %struct.ip_vs_service*, %struct.ip_vs_service** %19, align 8
  %149 = load %struct.ip_vs_service**, %struct.ip_vs_service*** %11, align 8
  store %struct.ip_vs_service* %148, %struct.ip_vs_service** %149, align 8
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %231

152:                                              ; preds = %146
  %153 = load i64, i64* @IPVS_SVC_ATTR_SCHED_NAME, align 8
  %154 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %153
  %155 = load %struct.nlattr*, %struct.nlattr** %154, align 8
  store %struct.nlattr* %155, %struct.nlattr** %21, align 8
  %156 = load i64, i64* @IPVS_SVC_ATTR_PE_NAME, align 8
  %157 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %156
  %158 = load %struct.nlattr*, %struct.nlattr** %157, align 8
  store %struct.nlattr* %158, %struct.nlattr** %23, align 8
  %159 = load i64, i64* @IPVS_SVC_ATTR_FLAGS, align 8
  %160 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %159
  %161 = load %struct.nlattr*, %struct.nlattr** %160, align 8
  store %struct.nlattr* %161, %struct.nlattr** %22, align 8
  %162 = load i64, i64* @IPVS_SVC_ATTR_TIMEOUT, align 8
  %163 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %162
  %164 = load %struct.nlattr*, %struct.nlattr** %163, align 8
  store %struct.nlattr* %164, %struct.nlattr** %24, align 8
  %165 = load i64, i64* @IPVS_SVC_ATTR_NETMASK, align 8
  %166 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %165
  %167 = load %struct.nlattr*, %struct.nlattr** %166, align 8
  store %struct.nlattr* %167, %struct.nlattr** %25, align 8
  %168 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %169 = icmp ne %struct.nlattr* %168, null
  br i1 %169, label %170, label %179

170:                                              ; preds = %152
  %171 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %172 = icmp ne %struct.nlattr* %171, null
  br i1 %172, label %173, label %179

173:                                              ; preds = %170
  %174 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %175 = icmp ne %struct.nlattr* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %178 = icmp ne %struct.nlattr* %177, null
  br i1 %178, label %182, label %179

179:                                              ; preds = %176, %173, %170, %152
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %232

182:                                              ; preds = %176
  %183 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %184 = call i32 @nla_memcpy(%struct.ip_vs_flags* %26, %struct.nlattr* %183, i32 8)
  %185 = load %struct.ip_vs_service*, %struct.ip_vs_service** %19, align 8
  %186 = icmp ne %struct.ip_vs_service* %185, null
  br i1 %186, label %187, label %193

187:                                              ; preds = %182
  %188 = load %struct.ip_vs_service*, %struct.ip_vs_service** %19, align 8
  %189 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %8, align 8
  %192 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  br label %193

193:                                              ; preds = %187, %182
  %194 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %8, align 8
  %195 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = getelementptr inbounds %struct.ip_vs_flags, %struct.ip_vs_flags* %26, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = xor i32 %198, -1
  %200 = and i32 %196, %199
  %201 = getelementptr inbounds %struct.ip_vs_flags, %struct.ip_vs_flags* %26, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = getelementptr inbounds %struct.ip_vs_flags, %struct.ip_vs_flags* %26, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = and i32 %202, %204
  %206 = or i32 %200, %205
  %207 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %8, align 8
  %208 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  %209 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %210 = call i32* @nla_data(%struct.nlattr* %209)
  %211 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %8, align 8
  %212 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %211, i32 0, i32 4
  store i32* %210, i32** %212, align 8
  %213 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %214 = icmp ne %struct.nlattr* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %193
  %216 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %217 = call i32* @nla_data(%struct.nlattr* %216)
  br label %219

218:                                              ; preds = %193
  br label %219

219:                                              ; preds = %218, %215
  %220 = phi i32* [ %217, %215 ], [ null, %218 ]
  %221 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %8, align 8
  %222 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %221, i32 0, i32 3
  store i32* %220, i32** %222, align 8
  %223 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %224 = call i8* @nla_get_u32(%struct.nlattr* %223)
  %225 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %8, align 8
  %226 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %225, i32 0, i32 2
  store i8* %224, i8** %226, align 8
  %227 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %228 = call i32 @nla_get_be32(%struct.nlattr* %227)
  %229 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %8, align 8
  %230 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 4
  br label %231

231:                                              ; preds = %219, %146
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %232

232:                                              ; preds = %231, %179, %88, %73, %40
  %233 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %233)
  %234 = load i32, i32* %6, align 4
  ret i32 %234
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @memset(%struct.ip_vs_service_user_kern*, i32, i32) #2

declare dso_local i8* @nla_get_u16(%struct.nlattr*) #2

declare dso_local i32 @ip_vs_is_af_valid(i8*) #2

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @nla_memcpy(%struct.ip_vs_flags*, %struct.nlattr*, i32) #2

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #2

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.ip_vs_service* @__ip_vs_svc_fwm_find(%struct.netns_ipvs*, i8*, i8*) #2

declare dso_local %struct.ip_vs_service* @__ip_vs_service_find(%struct.netns_ipvs*, i8*, i8*, %struct.ip_vs_flags*, i32) #2

declare dso_local i32 @rcu_read_unlock(...) #2

declare dso_local i32* @nla_data(%struct.nlattr*) #2

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
