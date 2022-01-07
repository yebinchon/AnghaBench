; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_constraint_expr_eval.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_constraint_expr_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.role_datum** }
%struct.role_datum = type { i32 }
%struct.context = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mls_level* }
%struct.mls_level = type { i32 }
%struct.constraint_expr = type { i32, i32, i32, i32, %struct.constraint_expr* }

@CEXPR_MAXDEPTH = common dso_local global i32 0, align 4
@CEXPR_TARGET = common dso_local global i32 0, align 4
@CEXPR_XTARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, %struct.context*, %struct.context*, %struct.context*, %struct.constraint_expr*)* @constraint_expr_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @constraint_expr_eval(%struct.policydb* %0, %struct.context* %1, %struct.context* %2, %struct.context* %3, %struct.constraint_expr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.policydb*, align 8
  %8 = alloca %struct.context*, align 8
  %9 = alloca %struct.context*, align 8
  %10 = alloca %struct.context*, align 8
  %11 = alloca %struct.constraint_expr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.context*, align 8
  %15 = alloca %struct.role_datum*, align 8
  %16 = alloca %struct.role_datum*, align 8
  %17 = alloca %struct.mls_level*, align 8
  %18 = alloca %struct.mls_level*, align 8
  %19 = alloca %struct.constraint_expr*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %7, align 8
  store %struct.context* %1, %struct.context** %8, align 8
  store %struct.context* %2, %struct.context** %9, align 8
  store %struct.context* %3, %struct.context** %10, align 8
  store %struct.constraint_expr* %4, %struct.constraint_expr** %11, align 8
  %24 = load i32, i32* @CEXPR_MAXDEPTH, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %20, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %21, align 8
  store i32 -1, i32* %22, align 4
  %28 = load %struct.constraint_expr*, %struct.constraint_expr** %11, align 8
  store %struct.constraint_expr* %28, %struct.constraint_expr** %19, align 8
  br label %29

29:                                               ; preds = %419, %5
  %30 = load %struct.constraint_expr*, %struct.constraint_expr** %19, align 8
  %31 = icmp ne %struct.constraint_expr* %30, null
  br i1 %31, label %32, label %423

32:                                               ; preds = %29
  %33 = load %struct.constraint_expr*, %struct.constraint_expr** %19, align 8
  %34 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %416 [
    i32 132, label %36
    i32 146, label %51
    i32 131, label %68
    i32 145, label %85
    i32 134, label %321
  ]

36:                                               ; preds = %32
  %37 = load i32, i32* %22, align 4
  %38 = icmp slt i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load i32, i32* %22, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %27, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %22, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %27, i64 %49
  store i32 %47, i32* %50, align 4
  br label %418

51:                                               ; preds = %32
  %52 = load i32, i32* %22, align 4
  %53 = icmp slt i32 %52, 1
  %54 = zext i1 %53 to i32
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = load i32, i32* %22, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %22, align 4
  %58 = load i32, i32* %22, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %27, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %22, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %27, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %62
  store i32 %67, i32* %65, align 4
  br label %418

68:                                               ; preds = %32
  %69 = load i32, i32* %22, align 4
  %70 = icmp slt i32 %69, 1
  %71 = zext i1 %70 to i32
  %72 = call i32 @BUG_ON(i32 %71)
  %73 = load i32, i32* %22, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %22, align 4
  %75 = load i32, i32* %22, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %27, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %22, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %27, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %79
  store i32 %84, i32* %82, align 4
  br label %418

85:                                               ; preds = %32
  %86 = load i32, i32* %22, align 4
  %87 = load i32, i32* @CEXPR_MAXDEPTH, align 4
  %88 = sub nsw i32 %87, 1
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 0, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %430

91:                                               ; preds = %85
  %92 = load %struct.constraint_expr*, %struct.constraint_expr** %19, align 8
  %93 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  switch i32 %94, label %294 [
    i32 128, label %95
    i32 129, label %102
    i32 130, label %109
    i32 136, label %179
    i32 137, label %190
    i32 140, label %201
    i32 141, label %212
    i32 138, label %223
    i32 135, label %234
  ]

95:                                               ; preds = %91
  %96 = load %struct.context*, %struct.context** %8, align 8
  %97 = getelementptr inbounds %struct.context, %struct.context* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %12, align 4
  %99 = load %struct.context*, %struct.context** %9, align 8
  %100 = getelementptr inbounds %struct.context, %struct.context* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %13, align 4
  br label %296

102:                                              ; preds = %91
  %103 = load %struct.context*, %struct.context** %8, align 8
  %104 = getelementptr inbounds %struct.context, %struct.context* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %12, align 4
  %106 = load %struct.context*, %struct.context** %9, align 8
  %107 = getelementptr inbounds %struct.context, %struct.context* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %13, align 4
  br label %296

109:                                              ; preds = %91
  %110 = load %struct.context*, %struct.context** %8, align 8
  %111 = getelementptr inbounds %struct.context, %struct.context* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %12, align 4
  %113 = load %struct.context*, %struct.context** %9, align 8
  %114 = getelementptr inbounds %struct.context, %struct.context* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %13, align 4
  %116 = load %struct.policydb*, %struct.policydb** %7, align 8
  %117 = getelementptr inbounds %struct.policydb, %struct.policydb* %116, i32 0, i32 0
  %118 = load %struct.role_datum**, %struct.role_datum*** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.role_datum*, %struct.role_datum** %118, i64 %121
  %123 = load %struct.role_datum*, %struct.role_datum** %122, align 8
  store %struct.role_datum* %123, %struct.role_datum** %15, align 8
  %124 = load %struct.policydb*, %struct.policydb** %7, align 8
  %125 = getelementptr inbounds %struct.policydb, %struct.policydb* %124, i32 0, i32 0
  %126 = load %struct.role_datum**, %struct.role_datum*** %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.role_datum*, %struct.role_datum** %126, i64 %129
  %131 = load %struct.role_datum*, %struct.role_datum** %130, align 8
  store %struct.role_datum* %131, %struct.role_datum** %16, align 8
  %132 = load %struct.constraint_expr*, %struct.constraint_expr** %19, align 8
  %133 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  switch i32 %134, label %177 [
    i32 144, label %135
    i32 143, label %145
    i32 139, label %155
  ]

135:                                              ; preds = %109
  %136 = load %struct.role_datum*, %struct.role_datum** %15, align 8
  %137 = getelementptr inbounds %struct.role_datum, %struct.role_datum* %136, i32 0, i32 0
  %138 = load i32, i32* %13, align 4
  %139 = sub nsw i32 %138, 1
  %140 = call i32 @ebitmap_get_bit(i32* %137, i32 %139)
  %141 = load i32, i32* %22, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %22, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %27, i64 %143
  store i32 %140, i32* %144, align 4
  br label %419

145:                                              ; preds = %109
  %146 = load %struct.role_datum*, %struct.role_datum** %16, align 8
  %147 = getelementptr inbounds %struct.role_datum, %struct.role_datum* %146, i32 0, i32 0
  %148 = load i32, i32* %12, align 4
  %149 = sub nsw i32 %148, 1
  %150 = call i32 @ebitmap_get_bit(i32* %147, i32 %149)
  %151 = load i32, i32* %22, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %22, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %27, i64 %153
  store i32 %150, i32* %154, align 4
  br label %419

155:                                              ; preds = %109
  %156 = load %struct.role_datum*, %struct.role_datum** %15, align 8
  %157 = getelementptr inbounds %struct.role_datum, %struct.role_datum* %156, i32 0, i32 0
  %158 = load i32, i32* %13, align 4
  %159 = sub nsw i32 %158, 1
  %160 = call i32 @ebitmap_get_bit(i32* %157, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %170, label %162

162:                                              ; preds = %155
  %163 = load %struct.role_datum*, %struct.role_datum** %16, align 8
  %164 = getelementptr inbounds %struct.role_datum, %struct.role_datum* %163, i32 0, i32 0
  %165 = load i32, i32* %12, align 4
  %166 = sub nsw i32 %165, 1
  %167 = call i32 @ebitmap_get_bit(i32* %164, i32 %166)
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  br label %170

170:                                              ; preds = %162, %155
  %171 = phi i1 [ false, %155 ], [ %169, %162 ]
  %172 = zext i1 %171 to i32
  %173 = load i32, i32* %22, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %22, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %27, i64 %175
  store i32 %172, i32* %176, align 4
  br label %419

177:                                              ; preds = %109
  br label %178

178:                                              ; preds = %177
  br label %296

179:                                              ; preds = %91
  %180 = load %struct.context*, %struct.context** %8, align 8
  %181 = getelementptr inbounds %struct.context, %struct.context* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load %struct.mls_level*, %struct.mls_level** %182, align 8
  %184 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %183, i64 0
  store %struct.mls_level* %184, %struct.mls_level** %17, align 8
  %185 = load %struct.context*, %struct.context** %9, align 8
  %186 = getelementptr inbounds %struct.context, %struct.context* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load %struct.mls_level*, %struct.mls_level** %187, align 8
  %189 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %188, i64 0
  store %struct.mls_level* %189, %struct.mls_level** %18, align 8
  br label %245

190:                                              ; preds = %91
  %191 = load %struct.context*, %struct.context** %8, align 8
  %192 = getelementptr inbounds %struct.context, %struct.context* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load %struct.mls_level*, %struct.mls_level** %193, align 8
  %195 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %194, i64 0
  store %struct.mls_level* %195, %struct.mls_level** %17, align 8
  %196 = load %struct.context*, %struct.context** %9, align 8
  %197 = getelementptr inbounds %struct.context, %struct.context* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 0
  %199 = load %struct.mls_level*, %struct.mls_level** %198, align 8
  %200 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %199, i64 1
  store %struct.mls_level* %200, %struct.mls_level** %18, align 8
  br label %245

201:                                              ; preds = %91
  %202 = load %struct.context*, %struct.context** %8, align 8
  %203 = getelementptr inbounds %struct.context, %struct.context* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = load %struct.mls_level*, %struct.mls_level** %204, align 8
  %206 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %205, i64 1
  store %struct.mls_level* %206, %struct.mls_level** %17, align 8
  %207 = load %struct.context*, %struct.context** %9, align 8
  %208 = getelementptr inbounds %struct.context, %struct.context* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load %struct.mls_level*, %struct.mls_level** %209, align 8
  %211 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %210, i64 0
  store %struct.mls_level* %211, %struct.mls_level** %18, align 8
  br label %245

212:                                              ; preds = %91
  %213 = load %struct.context*, %struct.context** %8, align 8
  %214 = getelementptr inbounds %struct.context, %struct.context* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 0
  %216 = load %struct.mls_level*, %struct.mls_level** %215, align 8
  %217 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %216, i64 1
  store %struct.mls_level* %217, %struct.mls_level** %17, align 8
  %218 = load %struct.context*, %struct.context** %9, align 8
  %219 = getelementptr inbounds %struct.context, %struct.context* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 0
  %221 = load %struct.mls_level*, %struct.mls_level** %220, align 8
  %222 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %221, i64 1
  store %struct.mls_level* %222, %struct.mls_level** %18, align 8
  br label %245

223:                                              ; preds = %91
  %224 = load %struct.context*, %struct.context** %8, align 8
  %225 = getelementptr inbounds %struct.context, %struct.context* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 0
  %227 = load %struct.mls_level*, %struct.mls_level** %226, align 8
  %228 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %227, i64 0
  store %struct.mls_level* %228, %struct.mls_level** %17, align 8
  %229 = load %struct.context*, %struct.context** %8, align 8
  %230 = getelementptr inbounds %struct.context, %struct.context* %229, i32 0, i32 3
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 0
  %232 = load %struct.mls_level*, %struct.mls_level** %231, align 8
  %233 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %232, i64 1
  store %struct.mls_level* %233, %struct.mls_level** %18, align 8
  br label %245

234:                                              ; preds = %91
  %235 = load %struct.context*, %struct.context** %9, align 8
  %236 = getelementptr inbounds %struct.context, %struct.context* %235, i32 0, i32 3
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 0
  %238 = load %struct.mls_level*, %struct.mls_level** %237, align 8
  %239 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %238, i64 0
  store %struct.mls_level* %239, %struct.mls_level** %17, align 8
  %240 = load %struct.context*, %struct.context** %9, align 8
  %241 = getelementptr inbounds %struct.context, %struct.context* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 0
  %243 = load %struct.mls_level*, %struct.mls_level** %242, align 8
  %244 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %243, i64 1
  store %struct.mls_level* %244, %struct.mls_level** %18, align 8
  br label %245

245:                                              ; preds = %234, %223, %212, %201, %190, %179
  %246 = load %struct.constraint_expr*, %struct.constraint_expr** %19, align 8
  %247 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  switch i32 %248, label %292 [
    i32 142, label %249
    i32 133, label %257
    i32 144, label %268
    i32 143, label %276
    i32 139, label %284
  ]

249:                                              ; preds = %245
  %250 = load %struct.mls_level*, %struct.mls_level** %17, align 8
  %251 = load %struct.mls_level*, %struct.mls_level** %18, align 8
  %252 = call i32 @mls_level_eq(%struct.mls_level* %250, %struct.mls_level* %251)
  %253 = load i32, i32* %22, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %22, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %27, i64 %255
  store i32 %252, i32* %256, align 4
  br label %419

257:                                              ; preds = %245
  %258 = load %struct.mls_level*, %struct.mls_level** %17, align 8
  %259 = load %struct.mls_level*, %struct.mls_level** %18, align 8
  %260 = call i32 @mls_level_eq(%struct.mls_level* %258, %struct.mls_level* %259)
  %261 = icmp ne i32 %260, 0
  %262 = xor i1 %261, true
  %263 = zext i1 %262 to i32
  %264 = load i32, i32* %22, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %22, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %27, i64 %266
  store i32 %263, i32* %267, align 4
  br label %419

268:                                              ; preds = %245
  %269 = load %struct.mls_level*, %struct.mls_level** %17, align 8
  %270 = load %struct.mls_level*, %struct.mls_level** %18, align 8
  %271 = call i32 @mls_level_dom(%struct.mls_level* %269, %struct.mls_level* %270)
  %272 = load i32, i32* %22, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %22, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %27, i64 %274
  store i32 %271, i32* %275, align 4
  br label %419

276:                                              ; preds = %245
  %277 = load %struct.mls_level*, %struct.mls_level** %18, align 8
  %278 = load %struct.mls_level*, %struct.mls_level** %17, align 8
  %279 = call i32 @mls_level_dom(%struct.mls_level* %277, %struct.mls_level* %278)
  %280 = load i32, i32* %22, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %22, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %27, i64 %282
  store i32 %279, i32* %283, align 4
  br label %419

284:                                              ; preds = %245
  %285 = load %struct.mls_level*, %struct.mls_level** %18, align 8
  %286 = load %struct.mls_level*, %struct.mls_level** %17, align 8
  %287 = call i32 @mls_level_incomp(%struct.mls_level* %285, %struct.mls_level* %286)
  %288 = load i32, i32* %22, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %22, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %27, i64 %290
  store i32 %287, i32* %291, align 4
  br label %419

292:                                              ; preds = %245
  %293 = call i32 (...) @BUG()
  store i32 0, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %430

294:                                              ; preds = %91
  %295 = call i32 (...) @BUG()
  store i32 0, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %430

296:                                              ; preds = %178, %102, %95
  %297 = load %struct.constraint_expr*, %struct.constraint_expr** %19, align 8
  %298 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  switch i32 %299, label %318 [
    i32 142, label %300
    i32 133, label %309
  ]

300:                                              ; preds = %296
  %301 = load i32, i32* %12, align 4
  %302 = load i32, i32* %13, align 4
  %303 = icmp eq i32 %301, %302
  %304 = zext i1 %303 to i32
  %305 = load i32, i32* %22, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %22, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %27, i64 %307
  store i32 %304, i32* %308, align 4
  br label %320

309:                                              ; preds = %296
  %310 = load i32, i32* %12, align 4
  %311 = load i32, i32* %13, align 4
  %312 = icmp ne i32 %310, %311
  %313 = zext i1 %312 to i32
  %314 = load i32, i32* %22, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %22, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %27, i64 %316
  store i32 %313, i32* %317, align 4
  br label %320

318:                                              ; preds = %296
  %319 = call i32 (...) @BUG()
  store i32 0, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %430

320:                                              ; preds = %309, %300
  br label %418

321:                                              ; preds = %32
  %322 = load i32, i32* %22, align 4
  %323 = load i32, i32* @CEXPR_MAXDEPTH, align 4
  %324 = sub nsw i32 %323, 1
  %325 = icmp eq i32 %322, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %321
  store i32 0, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %430

327:                                              ; preds = %321
  %328 = load %struct.context*, %struct.context** %8, align 8
  store %struct.context* %328, %struct.context** %14, align 8
  %329 = load %struct.constraint_expr*, %struct.constraint_expr** %19, align 8
  %330 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* @CEXPR_TARGET, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %327
  %336 = load %struct.context*, %struct.context** %9, align 8
  store %struct.context* %336, %struct.context** %14, align 8
  br label %352

337:                                              ; preds = %327
  %338 = load %struct.constraint_expr*, %struct.constraint_expr** %19, align 8
  %339 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @CEXPR_XTARGET, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %351

344:                                              ; preds = %337
  %345 = load %struct.context*, %struct.context** %10, align 8
  store %struct.context* %345, %struct.context** %14, align 8
  %346 = load %struct.context*, %struct.context** %14, align 8
  %347 = icmp ne %struct.context* %346, null
  br i1 %347, label %350, label %348

348:                                              ; preds = %344
  %349 = call i32 (...) @BUG()
  store i32 0, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %430

350:                                              ; preds = %344
  br label %351

351:                                              ; preds = %350, %337
  br label %352

352:                                              ; preds = %351, %335
  %353 = load %struct.constraint_expr*, %struct.constraint_expr** %19, align 8
  %354 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = and i32 %355, 128
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %362

358:                                              ; preds = %352
  %359 = load %struct.context*, %struct.context** %14, align 8
  %360 = getelementptr inbounds %struct.context, %struct.context* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  store i32 %361, i32* %12, align 4
  br label %386

362:                                              ; preds = %352
  %363 = load %struct.constraint_expr*, %struct.constraint_expr** %19, align 8
  %364 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = and i32 %365, 130
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %362
  %369 = load %struct.context*, %struct.context** %14, align 8
  %370 = getelementptr inbounds %struct.context, %struct.context* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  store i32 %371, i32* %12, align 4
  br label %385

372:                                              ; preds = %362
  %373 = load %struct.constraint_expr*, %struct.constraint_expr** %19, align 8
  %374 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = and i32 %375, 129
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %382

378:                                              ; preds = %372
  %379 = load %struct.context*, %struct.context** %14, align 8
  %380 = getelementptr inbounds %struct.context, %struct.context* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  store i32 %381, i32* %12, align 4
  br label %384

382:                                              ; preds = %372
  %383 = call i32 (...) @BUG()
  store i32 0, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %430

384:                                              ; preds = %378
  br label %385

385:                                              ; preds = %384, %368
  br label %386

386:                                              ; preds = %385, %358
  %387 = load %struct.constraint_expr*, %struct.constraint_expr** %19, align 8
  %388 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %387, i32 0, i32 3
  %389 = load i32, i32* %388, align 4
  switch i32 %389, label %413 [
    i32 142, label %390
    i32 133, label %400
  ]

390:                                              ; preds = %386
  %391 = load %struct.constraint_expr*, %struct.constraint_expr** %19, align 8
  %392 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %391, i32 0, i32 2
  %393 = load i32, i32* %12, align 4
  %394 = sub nsw i32 %393, 1
  %395 = call i32 @ebitmap_get_bit(i32* %392, i32 %394)
  %396 = load i32, i32* %22, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %22, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %27, i64 %398
  store i32 %395, i32* %399, align 4
  br label %415

400:                                              ; preds = %386
  %401 = load %struct.constraint_expr*, %struct.constraint_expr** %19, align 8
  %402 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %401, i32 0, i32 2
  %403 = load i32, i32* %12, align 4
  %404 = sub nsw i32 %403, 1
  %405 = call i32 @ebitmap_get_bit(i32* %402, i32 %404)
  %406 = icmp ne i32 %405, 0
  %407 = xor i1 %406, true
  %408 = zext i1 %407 to i32
  %409 = load i32, i32* %22, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %22, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %27, i64 %411
  store i32 %408, i32* %412, align 4
  br label %415

413:                                              ; preds = %386
  %414 = call i32 (...) @BUG()
  store i32 0, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %430

415:                                              ; preds = %400, %390
  br label %418

416:                                              ; preds = %32
  %417 = call i32 (...) @BUG()
  store i32 0, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %430

418:                                              ; preds = %415, %320, %68, %51, %36
  br label %419

419:                                              ; preds = %418, %284, %276, %268, %257, %249, %170, %145, %135
  %420 = load %struct.constraint_expr*, %struct.constraint_expr** %19, align 8
  %421 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %420, i32 0, i32 4
  %422 = load %struct.constraint_expr*, %struct.constraint_expr** %421, align 8
  store %struct.constraint_expr* %422, %struct.constraint_expr** %19, align 8
  br label %29

423:                                              ; preds = %29
  %424 = load i32, i32* %22, align 4
  %425 = icmp ne i32 %424, 0
  %426 = zext i1 %425 to i32
  %427 = call i32 @BUG_ON(i32 %426)
  %428 = getelementptr inbounds i32, i32* %27, i64 0
  %429 = load i32, i32* %428, align 16
  store i32 %429, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %430

430:                                              ; preds = %423, %416, %413, %382, %348, %326, %318, %294, %292, %90
  %431 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %431)
  %432 = load i32, i32* %6, align 4
  ret i32 %432
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @ebitmap_get_bit(i32*, i32) #2

declare dso_local i32 @mls_level_eq(%struct.mls_level*, %struct.mls_level*) #2

declare dso_local i32 @mls_level_dom(%struct.mls_level*, %struct.mls_level*) #2

declare dso_local i32 @mls_level_incomp(%struct.mls_level*, %struct.mls_level*) #2

declare dso_local i32 @BUG(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
