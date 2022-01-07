; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_diag_bc_run.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_diag_bc_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.inet_diag_entry = type { i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.inet_diag_bc_op = type { i32, i32, i64 }
%struct.inet_diag_hostcond = type { i32, i32, i32, i32 }
%struct.inet_diag_markcond = type { i32, i32 }

@SOCK_BINDPORT_LOCK = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.inet_diag_entry*)* @inet_diag_bc_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_diag_bc_run(%struct.nlattr* %0, %struct.inet_diag_entry* %1) #0 {
  %3 = alloca %struct.nlattr*, align 8
  %4 = alloca %struct.inet_diag_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inet_diag_bc_op*, align 8
  %9 = alloca %struct.inet_diag_hostcond*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inet_diag_markcond*, align 8
  store %struct.nlattr* %0, %struct.nlattr** %3, align 8
  store %struct.inet_diag_entry* %1, %struct.inet_diag_entry** %4, align 8
  %13 = load %struct.nlattr*, %struct.nlattr** %3, align 8
  %14 = call i8* @nla_data(%struct.nlattr* %13)
  store i8* %14, i8** %5, align 8
  %15 = load %struct.nlattr*, %struct.nlattr** %3, align 8
  %16 = call i32 @nla_len(%struct.nlattr* %15)
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %269, %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %270

20:                                               ; preds = %17
  store i32 1, i32* %7, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to %struct.inet_diag_bc_op*
  store %struct.inet_diag_bc_op* %22, %struct.inet_diag_bc_op** %8, align 8
  %23 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %24 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %241 [
    i32 132, label %26
    i32 134, label %27
    i32 130, label %28
    i32 129, label %38
    i32 128, label %48
    i32 137, label %58
    i32 136, label %68
    i32 135, label %78
    i32 140, label %88
    i32 131, label %97
    i32 138, label %97
    i32 139, label %212
    i32 133, label %224
  ]

26:                                               ; preds = %20
  br label %241

27:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %241

28:                                               ; preds = %20
  %29 = load %struct.inet_diag_entry*, %struct.inet_diag_entry** %4, align 8
  %30 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %33 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %32, i64 1
  %34 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %31, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %7, align 4
  br label %241

38:                                               ; preds = %20
  %39 = load %struct.inet_diag_entry*, %struct.inet_diag_entry** %4, align 8
  %40 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %43 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %42, i64 1
  %44 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %41, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %7, align 4
  br label %241

48:                                               ; preds = %20
  %49 = load %struct.inet_diag_entry*, %struct.inet_diag_entry** %4, align 8
  %50 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %53 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %52, i64 1
  %54 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp sle i32 %51, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %7, align 4
  br label %241

58:                                               ; preds = %20
  %59 = load %struct.inet_diag_entry*, %struct.inet_diag_entry** %4, align 8
  %60 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %63 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %62, i64 1
  %64 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %61, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %7, align 4
  br label %241

68:                                               ; preds = %20
  %69 = load %struct.inet_diag_entry*, %struct.inet_diag_entry** %4, align 8
  %70 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %73 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %72, i64 1
  %74 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp sge i32 %71, %75
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %7, align 4
  br label %241

78:                                               ; preds = %20
  %79 = load %struct.inet_diag_entry*, %struct.inet_diag_entry** %4, align 8
  %80 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %83 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %82, i64 1
  %84 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp sle i32 %81, %85
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %7, align 4
  br label %241

88:                                               ; preds = %20
  %89 = load %struct.inet_diag_entry*, %struct.inet_diag_entry** %4, align 8
  %90 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @SOCK_BINDPORT_LOCK, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %7, align 4
  br label %241

97:                                               ; preds = %20, %20
  %98 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %99 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %98, i64 1
  %100 = bitcast %struct.inet_diag_bc_op* %99 to %struct.inet_diag_hostcond*
  store %struct.inet_diag_hostcond* %100, %struct.inet_diag_hostcond** %9, align 8
  %101 = load %struct.inet_diag_hostcond*, %struct.inet_diag_hostcond** %9, align 8
  %102 = getelementptr inbounds %struct.inet_diag_hostcond, %struct.inet_diag_hostcond* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, -1
  br i1 %104, label %105, label %125

105:                                              ; preds = %97
  %106 = load %struct.inet_diag_hostcond*, %struct.inet_diag_hostcond** %9, align 8
  %107 = getelementptr inbounds %struct.inet_diag_hostcond, %struct.inet_diag_hostcond* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %110 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 131
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load %struct.inet_diag_entry*, %struct.inet_diag_entry** %4, align 8
  %115 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  br label %121

117:                                              ; preds = %105
  %118 = load %struct.inet_diag_entry*, %struct.inet_diag_entry** %4, align 8
  %119 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  br label %121

121:                                              ; preds = %117, %113
  %122 = phi i32 [ %116, %113 ], [ %120, %117 ]
  %123 = icmp ne i32 %108, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 0, i32* %7, align 4
  br label %241

125:                                              ; preds = %121, %97
  %126 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %127 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 131
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load %struct.inet_diag_entry*, %struct.inet_diag_entry** %4, align 8
  %132 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %131, i32 0, i32 7
  %133 = load i32*, i32** %132, align 8
  store i32* %133, i32** %10, align 8
  br label %138

134:                                              ; preds = %125
  %135 = load %struct.inet_diag_entry*, %struct.inet_diag_entry** %4, align 8
  %136 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %135, i32 0, i32 6
  %137 = load i32*, i32** %136, align 8
  store i32* %137, i32** %10, align 8
  br label %138

138:                                              ; preds = %134, %130
  %139 = load %struct.inet_diag_hostcond*, %struct.inet_diag_hostcond** %9, align 8
  %140 = getelementptr inbounds %struct.inet_diag_hostcond, %struct.inet_diag_hostcond* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @AF_UNSPEC, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %194

144:                                              ; preds = %138
  %145 = load %struct.inet_diag_hostcond*, %struct.inet_diag_hostcond** %9, align 8
  %146 = getelementptr inbounds %struct.inet_diag_hostcond, %struct.inet_diag_hostcond* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.inet_diag_entry*, %struct.inet_diag_entry** %4, align 8
  %149 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %147, %150
  br i1 %151, label %152, label %194

152:                                              ; preds = %144
  %153 = load %struct.inet_diag_entry*, %struct.inet_diag_entry** %4, align 8
  %154 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @AF_INET6, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %193

158:                                              ; preds = %152
  %159 = load %struct.inet_diag_hostcond*, %struct.inet_diag_hostcond** %9, align 8
  %160 = getelementptr inbounds %struct.inet_diag_hostcond, %struct.inet_diag_hostcond* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @AF_INET, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %193

164:                                              ; preds = %158
  %165 = load i32*, i32** %10, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %192

169:                                              ; preds = %164
  %170 = load i32*, i32** %10, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %192

174:                                              ; preds = %169
  %175 = load i32*, i32** %10, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 2
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @htonl(i32 65535)
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %192

180:                                              ; preds = %174
  %181 = load i32*, i32** %10, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 3
  %183 = load %struct.inet_diag_hostcond*, %struct.inet_diag_hostcond** %9, align 8
  %184 = getelementptr inbounds %struct.inet_diag_hostcond, %struct.inet_diag_hostcond* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.inet_diag_hostcond*, %struct.inet_diag_hostcond** %9, align 8
  %187 = getelementptr inbounds %struct.inet_diag_hostcond, %struct.inet_diag_hostcond* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @bitstring_match(i32* %182, i32 %185, i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %180
  br label %241

192:                                              ; preds = %180, %174, %169, %164
  br label %193

193:                                              ; preds = %192, %158, %152
  store i32 0, i32* %7, align 4
  br label %241

194:                                              ; preds = %144, %138
  %195 = load %struct.inet_diag_hostcond*, %struct.inet_diag_hostcond** %9, align 8
  %196 = getelementptr inbounds %struct.inet_diag_hostcond, %struct.inet_diag_hostcond* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  br label %241

200:                                              ; preds = %194
  %201 = load i32*, i32** %10, align 8
  %202 = load %struct.inet_diag_hostcond*, %struct.inet_diag_hostcond** %9, align 8
  %203 = getelementptr inbounds %struct.inet_diag_hostcond, %struct.inet_diag_hostcond* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.inet_diag_hostcond*, %struct.inet_diag_hostcond** %9, align 8
  %206 = getelementptr inbounds %struct.inet_diag_hostcond, %struct.inet_diag_hostcond* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @bitstring_match(i32* %201, i32 %204, i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %200
  br label %241

211:                                              ; preds = %200
  store i32 0, i32* %7, align 4
  br label %241

212:                                              ; preds = %20
  %213 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %214 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %213, i64 1
  %215 = bitcast %struct.inet_diag_bc_op* %214 to i32*
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* %11, align 4
  %218 = load %struct.inet_diag_entry*, %struct.inet_diag_entry** %4, align 8
  %219 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %217, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %212
  store i32 0, i32* %7, align 4
  br label %223

223:                                              ; preds = %222, %212
  br label %241

224:                                              ; preds = %20
  %225 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %226 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %225, i64 1
  %227 = bitcast %struct.inet_diag_bc_op* %226 to %struct.inet_diag_markcond*
  store %struct.inet_diag_markcond* %227, %struct.inet_diag_markcond** %12, align 8
  %228 = load %struct.inet_diag_entry*, %struct.inet_diag_entry** %4, align 8
  %229 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.inet_diag_markcond*, %struct.inet_diag_markcond** %12, align 8
  %232 = getelementptr inbounds %struct.inet_diag_markcond, %struct.inet_diag_markcond* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = and i32 %230, %233
  %235 = load %struct.inet_diag_markcond*, %struct.inet_diag_markcond** %12, align 8
  %236 = getelementptr inbounds %struct.inet_diag_markcond, %struct.inet_diag_markcond* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = icmp ne i32 %234, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %224
  store i32 0, i32* %7, align 4
  br label %240

240:                                              ; preds = %239, %224
  br label %241

241:                                              ; preds = %20, %240, %223, %211, %210, %199, %193, %191, %124, %88, %78, %68, %58, %48, %38, %28, %27, %26
  %242 = load i32, i32* %7, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %257

244:                                              ; preds = %241
  %245 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %246 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = load i32, i32* %6, align 4
  %249 = sext i32 %248 to i64
  %250 = sub nsw i64 %249, %247
  %251 = trunc i64 %250 to i32
  store i32 %251, i32* %6, align 4
  %252 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %253 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = load i8*, i8** %5, align 8
  %256 = getelementptr i8, i8* %255, i64 %254
  store i8* %256, i8** %5, align 8
  br label %269

257:                                              ; preds = %241
  %258 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %259 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %6, align 4
  %262 = sub nsw i32 %261, %260
  store i32 %262, i32* %6, align 4
  %263 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %264 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i8*, i8** %5, align 8
  %267 = sext i32 %265 to i64
  %268 = getelementptr i8, i8* %266, i64 %267
  store i8* %268, i8** %5, align 8
  br label %269

269:                                              ; preds = %257, %244
  br label %17

270:                                              ; preds = %17
  %271 = load i32, i32* %6, align 4
  %272 = icmp eq i32 %271, 0
  %273 = zext i1 %272 to i32
  ret i32 %273
}

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @bitstring_match(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
