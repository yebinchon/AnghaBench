; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_addr_modify.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_addr_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { i32, i32, i64, i64, i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ifa6_config = type { i64, i64, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@IFA_F_MANAGETEMPADDR = common dso_local global i32 0, align 4
@IFA_F_TEMPORARY = common dso_local global i32 0, align 4
@IFA_F_TENTATIVE = common dso_local global i32 0, align 4
@IFA_F_DADFAILED = common dso_local global i32 0, align 4
@IFA_F_OPTIMISTIC = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@RTF_EXPIRES = common dso_local global i64 0, align 8
@IFA_F_PERMANENT = common dso_local global i32 0, align 4
@IFA_F_DEPRECATED = common dso_local global i32 0, align 4
@IFA_F_NOPREFIXROUTE = common dso_local global i32 0, align 4
@IFA_F_NODAD = common dso_local global i32 0, align 4
@IFA_F_HOMEADDRESS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CLEANUP_PREFIX_RT_NOP = common dso_local global i32 0, align 4
@CLEANUP_PREFIX_RT_DEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inet6_ifaddr*, %struct.ifa6_config*)* @inet6_addr_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_addr_modify(%struct.inet6_ifaddr* %0, %struct.ifa6_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inet6_ifaddr*, align 8
  %5 = alloca %struct.ifa6_config*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.inet6_ifaddr* %0, %struct.inet6_ifaddr** %4, align 8
  store %struct.ifa6_config* %1, %struct.ifa6_config** %5, align 8
  %14 = call i32 (...) @ASSERT_RTNL()
  %15 = load %struct.ifa6_config*, %struct.ifa6_config** %5, align 8
  %16 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.ifa6_config*, %struct.ifa6_config** %5, align 8
  %21 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ifa6_config*, %struct.ifa6_config** %5, align 8
  %24 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ugt i64 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19, %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %326

30:                                               ; preds = %19
  %31 = load %struct.ifa6_config*, %struct.ifa6_config** %5, align 8
  %32 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IFA_F_MANAGETEMPADDR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %39 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IFA_F_TEMPORARY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %46 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 64
  br i1 %48, label %49, label %52

49:                                               ; preds = %44, %37
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %326

52:                                               ; preds = %44, %30
  %53 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %54 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @IFA_F_TENTATIVE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %61 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @IFA_F_DADFAILED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %59, %52
  %67 = load i32, i32* @IFA_F_OPTIMISTIC, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.ifa6_config*, %struct.ifa6_config** %5, align 8
  %70 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %66, %59
  %74 = load %struct.ifa6_config*, %struct.ifa6_config** %5, align 8
  %75 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @HZ, align 8
  %78 = call i64 @addrconf_timeout_fixup(i64 %76, i64 %77)
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i64 @addrconf_finite_timeout(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %73
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* @HZ, align 8
  %85 = mul i64 %83, %84
  %86 = call i64 @jiffies_to_clock_t(i64 %85)
  store i64 %86, i64* %7, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load %struct.ifa6_config*, %struct.ifa6_config** %5, align 8
  %89 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load i64, i64* @RTF_EXPIRES, align 8
  store i64 %90, i64* %6, align 8
  br label %97

91:                                               ; preds = %73
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  %92 = load i32, i32* @IFA_F_PERMANENT, align 4
  %93 = load %struct.ifa6_config*, %struct.ifa6_config** %5, align 8
  %94 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %91, %82
  %98 = load %struct.ifa6_config*, %struct.ifa6_config** %5, align 8
  %99 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @HZ, align 8
  %102 = call i64 @addrconf_timeout_fixup(i64 %100, i64 %101)
  store i64 %102, i64* %8, align 8
  %103 = load i64, i64* %8, align 8
  %104 = call i64 @addrconf_finite_timeout(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %97
  %107 = load i64, i64* %8, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load i32, i32* @IFA_F_DEPRECATED, align 4
  %111 = load %struct.ifa6_config*, %struct.ifa6_config** %5, align 8
  %112 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %109, %106
  %116 = load i64, i64* %8, align 8
  %117 = load %struct.ifa6_config*, %struct.ifa6_config** %5, align 8
  %118 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %115, %97
  %120 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %121 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %120, i32 0, i32 7
  %122 = call i32 @spin_lock_bh(i32* %121)
  %123 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %124 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @IFA_F_MANAGETEMPADDR, align 4
  %127 = and i32 %125, %126
  store i32 %127, i32* %9, align 4
  %128 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %129 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @IFA_F_PERMANENT, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %119
  %135 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %136 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @IFA_F_NOPREFIXROUTE, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  br label %142

142:                                              ; preds = %134, %119
  %143 = phi i1 [ false, %119 ], [ %141, %134 ]
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* @IFA_F_DEPRECATED, align 4
  %146 = load i32, i32* @IFA_F_PERMANENT, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @IFA_F_NODAD, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @IFA_F_HOMEADDRESS, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @IFA_F_MANAGETEMPADDR, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @IFA_F_NOPREFIXROUTE, align 4
  %155 = or i32 %153, %154
  %156 = xor i32 %155, -1
  %157 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %158 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = and i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load %struct.ifa6_config*, %struct.ifa6_config** %5, align 8
  %162 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %165 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 8
  %168 = load i32, i32* @jiffies, align 4
  %169 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %170 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %169, i32 0, i32 8
  store i32 %168, i32* %170, align 8
  %171 = load %struct.ifa6_config*, %struct.ifa6_config** %5, align 8
  %172 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %175 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %174, i32 0, i32 2
  store i64 %173, i64* %175, align 8
  %176 = load %struct.ifa6_config*, %struct.ifa6_config** %5, align 8
  %177 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %180 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %179, i32 0, i32 3
  store i64 %178, i64* %180, align 8
  %181 = load %struct.ifa6_config*, %struct.ifa6_config** %5, align 8
  %182 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %199

185:                                              ; preds = %142
  %186 = load %struct.ifa6_config*, %struct.ifa6_config** %5, align 8
  %187 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %190 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %188, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %185
  %194 = load %struct.ifa6_config*, %struct.ifa6_config** %5, align 8
  %195 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %198 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %197, i32 0, i32 4
  store i64 %196, i64* %198, align 8
  br label %199

199:                                              ; preds = %193, %185, %142
  %200 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %201 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %200, i32 0, i32 7
  %202 = call i32 @spin_unlock_bh(i32* %201)
  %203 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %204 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @IFA_F_TENTATIVE, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %199
  %210 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %211 = call i32 @ipv6_ifa_notify(i32 0, %struct.inet6_ifaddr* %210)
  br label %212

212:                                              ; preds = %209, %199
  %213 = load %struct.ifa6_config*, %struct.ifa6_config** %5, align 8
  %214 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @IFA_F_NOPREFIXROUTE, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %253, label %219

219:                                              ; preds = %212
  %220 = load i32, i32* @ENOENT, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %11, align 4
  %222 = load i32, i32* %10, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %219
  %225 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %226 = load i64, i64* %7, align 8
  %227 = load i64, i64* %6, align 8
  %228 = call i32 @modify_prefix_route(%struct.inet6_ifaddr* %225, i64 %226, i64 %227)
  store i32 %228, i32* %11, align 4
  br label %229

229:                                              ; preds = %224, %219
  %230 = load i32, i32* %11, align 4
  %231 = load i32, i32* @ENOENT, align 4
  %232 = sub nsw i32 0, %231
  %233 = icmp eq i32 %230, %232
  br i1 %233, label %234, label %252

234:                                              ; preds = %229
  %235 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %236 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %235, i32 0, i32 6
  %237 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %238 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %241 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %240, i32 0, i32 4
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %244 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %243, i32 0, i32 5
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i64, i64* %7, align 8
  %249 = load i64, i64* %6, align 8
  %250 = load i32, i32* @GFP_KERNEL, align 4
  %251 = call i32 @addrconf_prefix_route(i32* %236, i32 %239, i64 %242, i32 %247, i64 %248, i64 %249, i32 %250)
  br label %252

252:                                              ; preds = %234, %229
  br label %282

253:                                              ; preds = %212
  %254 = load i32, i32* %10, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %281

256:                                              ; preds = %253
  %257 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %258 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %257, i32 0, i32 5
  %259 = load %struct.TYPE_2__*, %struct.TYPE_2__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 0
  %261 = call i32 @write_lock_bh(i32* %260)
  %262 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %263 = call i32 @check_cleanup_prefix_route(%struct.inet6_ifaddr* %262, i64* %13)
  store i32 %263, i32* %12, align 4
  %264 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %265 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %264, i32 0, i32 5
  %266 = load %struct.TYPE_2__*, %struct.TYPE_2__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 0
  %268 = call i32 @write_unlock_bh(i32* %267)
  %269 = load i32, i32* %12, align 4
  %270 = load i32, i32* @CLEANUP_PREFIX_RT_NOP, align 4
  %271 = icmp ne i32 %269, %270
  br i1 %271, label %272, label %280

272:                                              ; preds = %256
  %273 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %274 = load i64, i64* %13, align 8
  %275 = load i32, i32* %12, align 4
  %276 = load i32, i32* @CLEANUP_PREFIX_RT_DEL, align 4
  %277 = icmp eq i32 %275, %276
  %278 = zext i1 %277 to i32
  %279 = call i32 @cleanup_prefix_route(%struct.inet6_ifaddr* %273, i64 %274, i32 %278)
  br label %280

280:                                              ; preds = %272, %256
  br label %281

281:                                              ; preds = %280, %253
  br label %282

282:                                              ; preds = %281, %252
  %283 = load i32, i32* %9, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %292, label %285

285:                                              ; preds = %282
  %286 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %287 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @IFA_F_MANAGETEMPADDR, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %324

292:                                              ; preds = %285, %282
  %293 = load i32, i32* %9, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %307

295:                                              ; preds = %292
  %296 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %297 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @IFA_F_MANAGETEMPADDR, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %307, label %302

302:                                              ; preds = %295
  %303 = load %struct.ifa6_config*, %struct.ifa6_config** %5, align 8
  %304 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %303, i32 0, i32 0
  store i64 0, i64* %304, align 8
  %305 = load %struct.ifa6_config*, %struct.ifa6_config** %5, align 8
  %306 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %305, i32 0, i32 1
  store i64 0, i64* %306, align 8
  br label %307

307:                                              ; preds = %302, %295, %292
  %308 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %309 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %308, i32 0, i32 5
  %310 = load %struct.TYPE_2__*, %struct.TYPE_2__** %309, align 8
  %311 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %312 = load %struct.ifa6_config*, %struct.ifa6_config** %5, align 8
  %313 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.ifa6_config*, %struct.ifa6_config** %5, align 8
  %316 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = load i32, i32* %9, align 4
  %319 = icmp ne i32 %318, 0
  %320 = xor i1 %319, true
  %321 = zext i1 %320 to i32
  %322 = load i32, i32* @jiffies, align 4
  %323 = call i32 @manage_tempaddrs(%struct.TYPE_2__* %310, %struct.inet6_ifaddr* %311, i64 %314, i64 %317, i32 %321, i32 %322)
  br label %324

324:                                              ; preds = %307, %285
  %325 = call i32 (...) @addrconf_verify_rtnl()
  store i32 0, i32* %3, align 4
  br label %326

326:                                              ; preds = %324, %49, %27
  %327 = load i32, i32* %3, align 4
  ret i32 %327
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i64 @addrconf_timeout_fixup(i64, i64) #1

declare dso_local i64 @addrconf_finite_timeout(i64) #1

declare dso_local i64 @jiffies_to_clock_t(i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ipv6_ifa_notify(i32, %struct.inet6_ifaddr*) #1

declare dso_local i32 @modify_prefix_route(%struct.inet6_ifaddr*, i64, i64) #1

declare dso_local i32 @addrconf_prefix_route(i32*, i32, i64, i32, i64, i64, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @check_cleanup_prefix_route(%struct.inet6_ifaddr*, i64*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @cleanup_prefix_route(%struct.inet6_ifaddr*, i64, i32) #1

declare dso_local i32 @manage_tempaddrs(%struct.TYPE_2__*, %struct.inet6_ifaddr*, i64, i64, i32, i32) #1

declare dso_local i32 @addrconf_verify_rtnl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
