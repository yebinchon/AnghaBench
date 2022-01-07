; ModuleID = '/home/carl/AnghaBench/linux/tools/hv/extr_hv_kvp_daemon.c_kvp_get_ip_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/hv/extr_hv_kvp_daemon.c_kvp_get_ip_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i32, %struct.ifaddrs*, %struct.TYPE_4__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hv_kvp_ipaddr_value = type { i64, i32, i64 }
%struct.sockaddr_in6 = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@KVP_OP_ENUMERATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"getifaddrs failed\0A\00", align 1
@HV_E_FAIL = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@KVP_OP_GET_IP_INFO = common dso_local global i32 0, align 4
@ADDR_FAMILY_IPV4 = common dso_local global i32 0, align 4
@ADDR_FAMILY_IPV6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"/%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c";\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i8*, i32)* @kvp_get_ip_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvp_get_ip_info(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ifaddrs*, align 8
  %13 = alloca %struct.ifaddrs*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.hv_kvp_ipaddr_value*, align 8
  %19 = alloca [5 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.sockaddr_in6*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store %struct.hv_kvp_ipaddr_value* null, %struct.hv_kvp_ipaddr_value** %18, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @KVP_OP_ENUMERATE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i8*, i8** %10, align 8
  store i8* %29, i8** %17, align 8
  br label %39

30:                                               ; preds = %5
  %31 = load i8*, i8** %10, align 8
  %32 = bitcast i8* %31 to %struct.hv_kvp_ipaddr_value*
  store %struct.hv_kvp_ipaddr_value* %32, %struct.hv_kvp_ipaddr_value** %18, align 8
  %33 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %18, align 8
  %34 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %17, align 8
  %37 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %18, align 8
  %38 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %37, i32 0, i32 1
  store i32 0, i32* %38, align 8
  br label %39

39:                                               ; preds = %30, %28
  %40 = call i64 @getifaddrs(%struct.ifaddrs** %12)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i8*, i8** %17, align 8
  %44 = call i32 @strcpy(i8* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @HV_E_FAIL, align 4
  store i32 %45, i32* %6, align 4
  br label %247

46:                                               ; preds = %39
  %47 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  store %struct.ifaddrs* %47, %struct.ifaddrs** %13, align 8
  br label %48

48:                                               ; preds = %238, %114, %94, %72, %56, %46
  %49 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %50 = icmp ne %struct.ifaddrs* %49, null
  br i1 %50, label %51, label %242

51:                                               ; preds = %48
  %52 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %53 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = icmp eq %struct.TYPE_4__* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %58 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %57, i32 0, i32 1
  %59 = load %struct.ifaddrs*, %struct.ifaddrs** %58, align 8
  store %struct.ifaddrs* %59, %struct.ifaddrs** %13, align 8
  br label %48

60:                                               ; preds = %51
  %61 = load i8*, i8** %8, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %65 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @strlen(i8* %68)
  %70 = call i64 @strncmp(i32 %66, i8* %67, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %74 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %73, i32 0, i32 1
  %75 = load %struct.ifaddrs*, %struct.ifaddrs** %74, align 8
  store %struct.ifaddrs* %75, %struct.ifaddrs** %13, align 8
  br label %48

76:                                               ; preds = %63, %60
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %81 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %94, label %87

87:                                               ; preds = %79, %76
  %88 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %89 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @IFF_LOOPBACK, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87, %79
  %95 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %96 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %95, i32 0, i32 1
  %97 = load %struct.ifaddrs*, %struct.ifaddrs** %96, align 8
  store %struct.ifaddrs* %97, %struct.ifaddrs** %13, align 8
  br label %48

98:                                               ; preds = %87
  %99 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %100 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %99, i32 0, i32 2
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @AF_INET, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %98
  %107 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %108 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %107, i32 0, i32 2
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @AF_INET6, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %116 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %115, i32 0, i32 1
  %117 = load %struct.ifaddrs*, %struct.ifaddrs** %116, align 8
  store %struct.ifaddrs* %117, %struct.ifaddrs** %13, align 8
  br label %48

118:                                              ; preds = %106, %98
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @KVP_OP_GET_IP_INFO, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %222

122:                                              ; preds = %118
  %123 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %124 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %123, i32 0, i32 2
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @AF_INET, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %150

130:                                              ; preds = %122
  %131 = load i32, i32* @ADDR_FAMILY_IPV4, align 4
  %132 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %18, align 8
  %133 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %137 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %136, i32 0, i32 3
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = load i32, i32* @AF_INET, align 4
  %140 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %18, align 8
  %141 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to i8*
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @kvp_process_ip_address(%struct.TYPE_4__* %138, i32 %139, i8* %143, i32 %144, i32* %15)
  store i32 %145, i32* %16, align 4
  %146 = load i32, i32* %16, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %130
  br label %223

149:                                              ; preds = %130
  br label %218

150:                                              ; preds = %122
  %151 = load i32, i32* @ADDR_FAMILY_IPV6, align 4
  %152 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %18, align 8
  %153 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  store i32 0, i32* %20, align 4
  %156 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %18, align 8
  %157 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = inttoptr i64 %158 to i8*
  store i8* %159, i8** %23, align 8
  %160 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %161 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %160, i32 0, i32 3
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = bitcast %struct.TYPE_4__* %162 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %163, %struct.sockaddr_in6** %24, align 8
  %164 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %24, align 8
  %165 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  store i32* %167, i32** %22, align 8
  store i32 0, i32* %21, align 4
  br label %168

168:                                              ; preds = %181, %150
  %169 = load i32, i32* %21, align 4
  %170 = icmp slt i32 %169, 4
  br i1 %170, label %171, label %184

171:                                              ; preds = %168
  %172 = load i32*, i32** %22, align 8
  %173 = load i32, i32* %21, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = call i64 @hweight32(i32* %175)
  %177 = load i32, i32* %20, align 4
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %178, %176
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %20, align 4
  br label %181

181:                                              ; preds = %171
  %182 = load i32, i32* %21, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %21, align 4
  br label %168

184:                                              ; preds = %168
  %185 = getelementptr inbounds [5 x i8], [5 x i8]* %19, i64 0, i64 0
  %186 = load i32, i32* %20, align 4
  %187 = call i32 @sprintf(i8* %185, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %15, align 4
  %190 = getelementptr inbounds [5 x i8], [5 x i8]* %19, i64 0, i64 0
  %191 = call i32 @strlen(i8* %190)
  %192 = add nsw i32 %189, %191
  %193 = add nsw i32 %192, 1
  %194 = icmp ult i32 %188, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %184
  br label %223

196:                                              ; preds = %184
  %197 = load i32, i32* %15, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = load i8*, i8** %23, align 8
  %201 = getelementptr inbounds [5 x i8], [5 x i8]* %19, i64 0, i64 0
  %202 = call i32 @strcpy(i8* %200, i8* %201)
  br label %212

203:                                              ; preds = %196
  %204 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %18, align 8
  %205 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = inttoptr i64 %206 to i8*
  %208 = call i32 @strcat(i8* %207, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %209 = load i8*, i8** %23, align 8
  %210 = getelementptr inbounds [5 x i8], [5 x i8]* %19, i64 0, i64 0
  %211 = call i32 @strcat(i8* %209, i8* %210)
  br label %212

212:                                              ; preds = %203, %199
  %213 = load i8*, i8** %23, align 8
  %214 = call i32 @strlen(i8* %213)
  %215 = add nsw i32 %214, 1
  %216 = load i32, i32* %15, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* %15, align 4
  br label %218

218:                                              ; preds = %212, %149
  %219 = load i8*, i8** %8, align 8
  %220 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %18, align 8
  %221 = call i32 @kvp_get_ipconfig_info(i8* %219, %struct.hv_kvp_ipaddr_value* %220)
  br label %222

222:                                              ; preds = %218, %118
  br label %223

223:                                              ; preds = %222, %195, %148
  %224 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %225 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %224, i32 0, i32 2
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %225, align 8
  %227 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %228 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %227, i32 0, i32 2
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i8*, i8** %17, align 8
  %233 = load i32, i32* %11, align 4
  %234 = call i32 @kvp_process_ip_address(%struct.TYPE_4__* %226, i32 %231, i8* %232, i32 %233, i32* %14)
  store i32 %234, i32* %16, align 4
  %235 = load i32, i32* %16, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %223
  br label %243

238:                                              ; preds = %223
  %239 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %240 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %239, i32 0, i32 1
  %241 = load %struct.ifaddrs*, %struct.ifaddrs** %240, align 8
  store %struct.ifaddrs* %241, %struct.ifaddrs** %13, align 8
  br label %48

242:                                              ; preds = %48
  br label %243

243:                                              ; preds = %242, %237
  %244 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %245 = call i32 @freeifaddrs(%struct.ifaddrs* %244)
  %246 = load i32, i32* %16, align 4
  store i32 %246, i32* %6, align 4
  br label %247

247:                                              ; preds = %243, %42
  %248 = load i32, i32* %6, align 4
  ret i32 %248
}

declare dso_local i64 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @kvp_process_ip_address(%struct.TYPE_4__*, i32, i8*, i32, i32*) #1

declare dso_local i64 @hweight32(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @kvp_get_ipconfig_info(i8*, %struct.hv_kvp_ipaddr_value*) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
