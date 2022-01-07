; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_ipv6_get_saddr_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_ipv6_get_saddr_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ipv6_saddr_score = type { i32, i32, i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ipv6_saddr_dst = type { i32, i32, i32*, i32, i32 }

@IFA_F_DEPRECATED = common dso_local global i32 0, align 4
@IFA_F_OPTIMISTIC = common dso_local global i32 0, align 4
@IPV6_PREFER_SRC_PUBLIC = common dso_local global i32 0, align 4
@IPV6_PREFER_SRC_TMP = common dso_local global i32 0, align 4
@IFA_F_TEMPORARY = common dso_local global i32 0, align 4
@IFA_F_HOMEADDRESS = common dso_local global i32 0, align 4
@IPV6_PREFER_SRC_COA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.ipv6_saddr_score*, %struct.ipv6_saddr_dst*, i32)* @ipv6_get_saddr_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_get_saddr_eval(%struct.net* %0, %struct.ipv6_saddr_score* %1, %struct.ipv6_saddr_dst* %2, i32 %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.ipv6_saddr_score*, align 8
  %7 = alloca %struct.ipv6_saddr_dst*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.ipv6_saddr_score* %1, %struct.ipv6_saddr_score** %6, align 8
  store %struct.ipv6_saddr_dst* %2, %struct.ipv6_saddr_dst** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %14 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sle i32 %12, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %27 [
    i32 128, label %19
    i32 130, label %23
  ]

19:                                               ; preds = %17
  %20 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %21 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  br label %37

23:                                               ; preds = %17
  %24 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %25 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  br label %37

27:                                               ; preds = %17
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %30 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @test_bit(i32 %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %27, %23, %19
  br label %254

38:                                               ; preds = %4
  %39 = load i32, i32* %8, align 4
  switch i32 %39, label %240 [
    i32 137, label %40
    i32 135, label %48
    i32 128, label %57
    i32 131, label %77
    i32 133, label %110
    i32 136, label %132
    i32 129, label %156
    i32 132, label %200
    i32 130, label %214
  ]

40:                                               ; preds = %38
  %41 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %42 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %41, i32 0, i32 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = icmp ne %struct.TYPE_7__* %43, null
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %9, align 4
  br label %241

48:                                               ; preds = %38
  %49 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %50 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %49, i32 0, i32 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load %struct.ipv6_saddr_dst*, %struct.ipv6_saddr_dst** %7, align 8
  %54 = getelementptr inbounds %struct.ipv6_saddr_dst, %struct.ipv6_saddr_dst* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @ipv6_addr_equal(i32* %52, i32* %55)
  store i32 %56, i32* %9, align 4
  br label %241

57:                                               ; preds = %38
  %58 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %59 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @__ipv6_addr_src_scope(i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.ipv6_saddr_dst*, %struct.ipv6_saddr_dst** %7, align 8
  %64 = getelementptr inbounds %struct.ipv6_saddr_dst, %struct.ipv6_saddr_dst* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sge i32 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  br label %73

70:                                               ; preds = %57
  %71 = load i32, i32* %9, align 4
  %72 = sub nsw i32 %71, 128
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %76 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %241

77:                                               ; preds = %38
  %78 = load i32, i32* @IFA_F_DEPRECATED, align 4
  store i32 %78, i32* %10, align 4
  %79 = load %struct.net*, %struct.net** %5, align 8
  %80 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %81 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %80, i32 0, i32 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = call i32 @ipv6_use_optimistic_addr(%struct.net* %79, %struct.TYPE_8__* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %77
  %88 = load i32, i32* @IFA_F_OPTIMISTIC, align 4
  %89 = load i32, i32* %10, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %87, %77
  %92 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %93 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @ipv6_saddr_preferred(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %91
  %98 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %99 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %98, i32 0, i32 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  br label %107

107:                                              ; preds = %97, %91
  %108 = phi i1 [ true, %91 ], [ %106, %97 ]
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %9, align 4
  br label %241

110:                                              ; preds = %38
  %111 = load %struct.ipv6_saddr_dst*, %struct.ipv6_saddr_dst** %7, align 8
  %112 = getelementptr inbounds %struct.ipv6_saddr_dst, %struct.ipv6_saddr_dst* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %110
  %116 = load %struct.ipv6_saddr_dst*, %struct.ipv6_saddr_dst** %7, align 8
  %117 = getelementptr inbounds %struct.ipv6_saddr_dst, %struct.ipv6_saddr_dst* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %120 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %119, i32 0, i32 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %118, %127
  br label %129

129:                                              ; preds = %115, %110
  %130 = phi i1 [ true, %110 ], [ %128, %115 ]
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %9, align 4
  br label %241

132:                                              ; preds = %38
  %133 = load %struct.net*, %struct.net** %5, align 8
  %134 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %135 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %134, i32 0, i32 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  %138 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %139 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %142 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %141, i32 0, i32 4
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @ipv6_addr_label(%struct.net* %133, i32* %137, i32 %140, i32 %149)
  %151 = load %struct.ipv6_saddr_dst*, %struct.ipv6_saddr_dst** %7, align 8
  %152 = getelementptr inbounds %struct.ipv6_saddr_dst, %struct.ipv6_saddr_dst* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %150, %153
  %155 = zext i1 %154 to i32
  store i32 %155, i32* %9, align 4
  br label %241

156:                                              ; preds = %38
  %157 = load %struct.ipv6_saddr_dst*, %struct.ipv6_saddr_dst** %7, align 8
  %158 = getelementptr inbounds %struct.ipv6_saddr_dst, %struct.ipv6_saddr_dst* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @IPV6_PREFER_SRC_PUBLIC, align 4
  %161 = load i32, i32* @IPV6_PREFER_SRC_TMP, align 4
  %162 = or i32 %160, %161
  %163 = and i32 %159, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %156
  %166 = load %struct.ipv6_saddr_dst*, %struct.ipv6_saddr_dst** %7, align 8
  %167 = getelementptr inbounds %struct.ipv6_saddr_dst, %struct.ipv6_saddr_dst* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @IPV6_PREFER_SRC_TMP, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  %172 = xor i1 %171, true
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  br label %186

175:                                              ; preds = %156
  %176 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %177 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %176, i32 0, i32 4
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 3
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp sge i32 %183, 2
  %185 = zext i1 %184 to i32
  br label %186

186:                                              ; preds = %175, %165
  %187 = phi i32 [ %174, %165 ], [ %185, %175 ]
  store i32 %187, i32* %11, align 4
  %188 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %189 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %188, i32 0, i32 4
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @IFA_F_TEMPORARY, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  %196 = xor i1 %195, true
  %197 = zext i1 %196 to i32
  %198 = load i32, i32* %11, align 4
  %199 = xor i32 %197, %198
  store i32 %199, i32* %9, align 4
  br label %241

200:                                              ; preds = %38
  %201 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %202 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %201, i32 0, i32 4
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 2
  %205 = call i32 @ipv6_addr_orchid(i32* %204)
  %206 = load %struct.ipv6_saddr_dst*, %struct.ipv6_saddr_dst** %7, align 8
  %207 = getelementptr inbounds %struct.ipv6_saddr_dst, %struct.ipv6_saddr_dst* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = call i32 @ipv6_addr_orchid(i32* %208)
  %210 = xor i32 %205, %209
  %211 = icmp ne i32 %210, 0
  %212 = xor i1 %211, true
  %213 = zext i1 %212 to i32
  store i32 %213, i32* %9, align 4
  br label %241

214:                                              ; preds = %38
  %215 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %216 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %215, i32 0, i32 4
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 2
  %219 = load %struct.ipv6_saddr_dst*, %struct.ipv6_saddr_dst** %7, align 8
  %220 = getelementptr inbounds %struct.ipv6_saddr_dst, %struct.ipv6_saddr_dst* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = call i32 @ipv6_addr_diff(i32* %218, i32* %221)
  store i32 %222, i32* %9, align 4
  %223 = load i32, i32* %9, align 4
  %224 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %225 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %224, i32 0, i32 4
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = icmp sgt i32 %223, %228
  br i1 %229, label %230, label %236

230:                                              ; preds = %214
  %231 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %232 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %231, i32 0, i32 4
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %9, align 4
  br label %236

236:                                              ; preds = %230, %214
  %237 = load i32, i32* %9, align 4
  %238 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %239 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %238, i32 0, i32 2
  store i32 %237, i32* %239, align 8
  br label %241

240:                                              ; preds = %38
  store i32 0, i32* %9, align 4
  br label %241

241:                                              ; preds = %240, %236, %200, %186, %132, %129, %107, %73, %48, %40
  %242 = load i32, i32* %9, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %241
  %245 = load i32, i32* %8, align 4
  %246 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %247 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @__set_bit(i32 %245, i32 %248)
  br label %250

250:                                              ; preds = %244, %241
  %251 = load i32, i32* %8, align 4
  %252 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %253 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 8
  br label %254

254:                                              ; preds = %250, %37
  %255 = load i32, i32* %9, align 4
  ret i32 %255
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ipv6_addr_equal(i32*, i32*) #1

declare dso_local i32 @__ipv6_addr_src_scope(i32) #1

declare dso_local i32 @ipv6_use_optimistic_addr(%struct.net*, %struct.TYPE_8__*) #1

declare dso_local i32 @ipv6_saddr_preferred(i32) #1

declare dso_local i32 @ipv6_addr_label(%struct.net*, i32*, i32, i32) #1

declare dso_local i32 @ipv6_addr_orchid(i32*) #1

declare dso_local i32 @ipv6_addr_diff(i32*, i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
