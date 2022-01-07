; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditsc.c_audit_field_compare.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditsc.c_audit_field_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.cred = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.audit_field = type { i32, i32 }
%struct.audit_context = type { i32 }
%struct.audit_names = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Missing AUDIT_COMPARE define.  Report as a bug\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.cred*, %struct.audit_field*, %struct.audit_context*, %struct.audit_names*)* @audit_field_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_field_compare(%struct.task_struct* %0, %struct.cred* %1, %struct.audit_field* %2, %struct.audit_context* %3, %struct.audit_names* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.cred*, align 8
  %9 = alloca %struct.audit_field*, align 8
  %10 = alloca %struct.audit_context*, align 8
  %11 = alloca %struct.audit_names*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %7, align 8
  store %struct.cred* %1, %struct.cred** %8, align 8
  store %struct.audit_field* %2, %struct.audit_field** %9, align 8
  store %struct.audit_context* %3, %struct.audit_context** %10, align 8
  store %struct.audit_names* %4, %struct.audit_names** %11, align 8
  %12 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %13 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %258 [
    i32 129, label %15
    i32 138, label %23
    i32 144, label %31
    i32 147, label %39
    i32 150, label %47
    i32 133, label %54
    i32 135, label %62
    i32 141, label %70
    i32 142, label %78
    i32 132, label %86
    i32 131, label %96
    i32 128, label %107
    i32 130, label %118
    i32 152, label %129
    i32 149, label %139
    i32 151, label %149
    i32 143, label %159
    i32 145, label %170
    i32 134, label %181
    i32 140, label %192
    i32 137, label %203
    i32 139, label %214
    i32 146, label %225
    i32 148, label %236
    i32 136, label %247
  ]

15:                                               ; preds = %5
  %16 = load %struct.cred*, %struct.cred** %8, align 8
  %17 = getelementptr inbounds %struct.cred, %struct.cred* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.audit_names*, %struct.audit_names** %11, align 8
  %20 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %21 = load %struct.audit_context*, %struct.audit_context** %10, align 8
  %22 = call i32 @audit_compare_uid(i32 %18, %struct.audit_names* %19, %struct.audit_field* %20, %struct.audit_context* %21)
  store i32 %22, i32* %6, align 4
  br label %260

23:                                               ; preds = %5
  %24 = load %struct.cred*, %struct.cred** %8, align 8
  %25 = getelementptr inbounds %struct.cred, %struct.cred* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.audit_names*, %struct.audit_names** %11, align 8
  %28 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %29 = load %struct.audit_context*, %struct.audit_context** %10, align 8
  %30 = call i32 @audit_compare_gid(i32 %26, %struct.audit_names* %27, %struct.audit_field* %28, %struct.audit_context* %29)
  store i32 %30, i32* %6, align 4
  br label %260

31:                                               ; preds = %5
  %32 = load %struct.cred*, %struct.cred** %8, align 8
  %33 = getelementptr inbounds %struct.cred, %struct.cred* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.audit_names*, %struct.audit_names** %11, align 8
  %36 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %37 = load %struct.audit_context*, %struct.audit_context** %10, align 8
  %38 = call i32 @audit_compare_uid(i32 %34, %struct.audit_names* %35, %struct.audit_field* %36, %struct.audit_context* %37)
  store i32 %38, i32* %6, align 4
  br label %260

39:                                               ; preds = %5
  %40 = load %struct.cred*, %struct.cred** %8, align 8
  %41 = getelementptr inbounds %struct.cred, %struct.cred* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.audit_names*, %struct.audit_names** %11, align 8
  %44 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %45 = load %struct.audit_context*, %struct.audit_context** %10, align 8
  %46 = call i32 @audit_compare_gid(i32 %42, %struct.audit_names* %43, %struct.audit_field* %44, %struct.audit_context* %45)
  store i32 %46, i32* %6, align 4
  br label %260

47:                                               ; preds = %5
  %48 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %49 = call i32 @audit_get_loginuid(%struct.task_struct* %48)
  %50 = load %struct.audit_names*, %struct.audit_names** %11, align 8
  %51 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %52 = load %struct.audit_context*, %struct.audit_context** %10, align 8
  %53 = call i32 @audit_compare_uid(i32 %49, %struct.audit_names* %50, %struct.audit_field* %51, %struct.audit_context* %52)
  store i32 %53, i32* %6, align 4
  br label %260

54:                                               ; preds = %5
  %55 = load %struct.cred*, %struct.cred** %8, align 8
  %56 = getelementptr inbounds %struct.cred, %struct.cred* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.audit_names*, %struct.audit_names** %11, align 8
  %59 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %60 = load %struct.audit_context*, %struct.audit_context** %10, align 8
  %61 = call i32 @audit_compare_uid(i32 %57, %struct.audit_names* %58, %struct.audit_field* %59, %struct.audit_context* %60)
  store i32 %61, i32* %6, align 4
  br label %260

62:                                               ; preds = %5
  %63 = load %struct.cred*, %struct.cred** %8, align 8
  %64 = getelementptr inbounds %struct.cred, %struct.cred* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.audit_names*, %struct.audit_names** %11, align 8
  %67 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %68 = load %struct.audit_context*, %struct.audit_context** %10, align 8
  %69 = call i32 @audit_compare_gid(i32 %65, %struct.audit_names* %66, %struct.audit_field* %67, %struct.audit_context* %68)
  store i32 %69, i32* %6, align 4
  br label %260

70:                                               ; preds = %5
  %71 = load %struct.cred*, %struct.cred** %8, align 8
  %72 = getelementptr inbounds %struct.cred, %struct.cred* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.audit_names*, %struct.audit_names** %11, align 8
  %75 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %76 = load %struct.audit_context*, %struct.audit_context** %10, align 8
  %77 = call i32 @audit_compare_uid(i32 %73, %struct.audit_names* %74, %struct.audit_field* %75, %struct.audit_context* %76)
  store i32 %77, i32* %6, align 4
  br label %260

78:                                               ; preds = %5
  %79 = load %struct.cred*, %struct.cred** %8, align 8
  %80 = getelementptr inbounds %struct.cred, %struct.cred* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.audit_names*, %struct.audit_names** %11, align 8
  %83 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %84 = load %struct.audit_context*, %struct.audit_context** %10, align 8
  %85 = call i32 @audit_compare_gid(i32 %81, %struct.audit_names* %82, %struct.audit_field* %83, %struct.audit_context* %84)
  store i32 %85, i32* %6, align 4
  br label %260

86:                                               ; preds = %5
  %87 = load %struct.cred*, %struct.cred** %8, align 8
  %88 = getelementptr inbounds %struct.cred, %struct.cred* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %91 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %94 = call i32 @audit_get_loginuid(%struct.task_struct* %93)
  %95 = call i32 @audit_uid_comparator(i32 %89, i32 %92, i32 %94)
  store i32 %95, i32* %6, align 4
  br label %260

96:                                               ; preds = %5
  %97 = load %struct.cred*, %struct.cred** %8, align 8
  %98 = getelementptr inbounds %struct.cred, %struct.cred* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %101 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.cred*, %struct.cred** %8, align 8
  %104 = getelementptr inbounds %struct.cred, %struct.cred* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @audit_uid_comparator(i32 %99, i32 %102, i32 %105)
  store i32 %106, i32* %6, align 4
  br label %260

107:                                              ; preds = %5
  %108 = load %struct.cred*, %struct.cred** %8, align 8
  %109 = getelementptr inbounds %struct.cred, %struct.cred* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %112 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.cred*, %struct.cred** %8, align 8
  %115 = getelementptr inbounds %struct.cred, %struct.cred* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @audit_uid_comparator(i32 %110, i32 %113, i32 %116)
  store i32 %117, i32* %6, align 4
  br label %260

118:                                              ; preds = %5
  %119 = load %struct.cred*, %struct.cred** %8, align 8
  %120 = getelementptr inbounds %struct.cred, %struct.cred* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %123 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.cred*, %struct.cred** %8, align 8
  %126 = getelementptr inbounds %struct.cred, %struct.cred* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @audit_uid_comparator(i32 %121, i32 %124, i32 %127)
  store i32 %128, i32* %6, align 4
  br label %260

129:                                              ; preds = %5
  %130 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %131 = call i32 @audit_get_loginuid(%struct.task_struct* %130)
  %132 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %133 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.cred*, %struct.cred** %8, align 8
  %136 = getelementptr inbounds %struct.cred, %struct.cred* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @audit_uid_comparator(i32 %131, i32 %134, i32 %137)
  store i32 %138, i32* %6, align 4
  br label %260

139:                                              ; preds = %5
  %140 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %141 = call i32 @audit_get_loginuid(%struct.task_struct* %140)
  %142 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %143 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.cred*, %struct.cred** %8, align 8
  %146 = getelementptr inbounds %struct.cred, %struct.cred* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @audit_uid_comparator(i32 %141, i32 %144, i32 %147)
  store i32 %148, i32* %6, align 4
  br label %260

149:                                              ; preds = %5
  %150 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %151 = call i32 @audit_get_loginuid(%struct.task_struct* %150)
  %152 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %153 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.cred*, %struct.cred** %8, align 8
  %156 = getelementptr inbounds %struct.cred, %struct.cred* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @audit_uid_comparator(i32 %151, i32 %154, i32 %157)
  store i32 %158, i32* %6, align 4
  br label %260

159:                                              ; preds = %5
  %160 = load %struct.cred*, %struct.cred** %8, align 8
  %161 = getelementptr inbounds %struct.cred, %struct.cred* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %164 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.cred*, %struct.cred** %8, align 8
  %167 = getelementptr inbounds %struct.cred, %struct.cred* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @audit_uid_comparator(i32 %162, i32 %165, i32 %168)
  store i32 %169, i32* %6, align 4
  br label %260

170:                                              ; preds = %5
  %171 = load %struct.cred*, %struct.cred** %8, align 8
  %172 = getelementptr inbounds %struct.cred, %struct.cred* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %175 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.cred*, %struct.cred** %8, align 8
  %178 = getelementptr inbounds %struct.cred, %struct.cred* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @audit_uid_comparator(i32 %173, i32 %176, i32 %179)
  store i32 %180, i32* %6, align 4
  br label %260

181:                                              ; preds = %5
  %182 = load %struct.cred*, %struct.cred** %8, align 8
  %183 = getelementptr inbounds %struct.cred, %struct.cred* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %186 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.cred*, %struct.cred** %8, align 8
  %189 = getelementptr inbounds %struct.cred, %struct.cred* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @audit_uid_comparator(i32 %184, i32 %187, i32 %190)
  store i32 %191, i32* %6, align 4
  br label %260

192:                                              ; preds = %5
  %193 = load %struct.cred*, %struct.cred** %8, align 8
  %194 = getelementptr inbounds %struct.cred, %struct.cred* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %197 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.cred*, %struct.cred** %8, align 8
  %200 = getelementptr inbounds %struct.cred, %struct.cred* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @audit_gid_comparator(i32 %195, i32 %198, i32 %201)
  store i32 %202, i32* %6, align 4
  br label %260

203:                                              ; preds = %5
  %204 = load %struct.cred*, %struct.cred** %8, align 8
  %205 = getelementptr inbounds %struct.cred, %struct.cred* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %208 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.cred*, %struct.cred** %8, align 8
  %211 = getelementptr inbounds %struct.cred, %struct.cred* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @audit_gid_comparator(i32 %206, i32 %209, i32 %212)
  store i32 %213, i32* %6, align 4
  br label %260

214:                                              ; preds = %5
  %215 = load %struct.cred*, %struct.cred** %8, align 8
  %216 = getelementptr inbounds %struct.cred, %struct.cred* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %219 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.cred*, %struct.cred** %8, align 8
  %222 = getelementptr inbounds %struct.cred, %struct.cred* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @audit_gid_comparator(i32 %217, i32 %220, i32 %223)
  store i32 %224, i32* %6, align 4
  br label %260

225:                                              ; preds = %5
  %226 = load %struct.cred*, %struct.cred** %8, align 8
  %227 = getelementptr inbounds %struct.cred, %struct.cred* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %230 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.cred*, %struct.cred** %8, align 8
  %233 = getelementptr inbounds %struct.cred, %struct.cred* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @audit_gid_comparator(i32 %228, i32 %231, i32 %234)
  store i32 %235, i32* %6, align 4
  br label %260

236:                                              ; preds = %5
  %237 = load %struct.cred*, %struct.cred** %8, align 8
  %238 = getelementptr inbounds %struct.cred, %struct.cred* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %241 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.cred*, %struct.cred** %8, align 8
  %244 = getelementptr inbounds %struct.cred, %struct.cred* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @audit_gid_comparator(i32 %239, i32 %242, i32 %245)
  store i32 %246, i32* %6, align 4
  br label %260

247:                                              ; preds = %5
  %248 = load %struct.cred*, %struct.cred** %8, align 8
  %249 = getelementptr inbounds %struct.cred, %struct.cred* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.audit_field*, %struct.audit_field** %9, align 8
  %252 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.cred*, %struct.cred** %8, align 8
  %255 = getelementptr inbounds %struct.cred, %struct.cred* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @audit_gid_comparator(i32 %250, i32 %253, i32 %256)
  store i32 %257, i32* %6, align 4
  br label %260

258:                                              ; preds = %5
  %259 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %260

260:                                              ; preds = %258, %247, %236, %225, %214, %203, %192, %181, %170, %159, %149, %139, %129, %118, %107, %96, %86, %78, %70, %62, %54, %47, %39, %31, %23, %15
  %261 = load i32, i32* %6, align 4
  ret i32 %261
}

declare dso_local i32 @audit_compare_uid(i32, %struct.audit_names*, %struct.audit_field*, %struct.audit_context*) #1

declare dso_local i32 @audit_compare_gid(i32, %struct.audit_names*, %struct.audit_field*, %struct.audit_context*) #1

declare dso_local i32 @audit_get_loginuid(%struct.task_struct*) #1

declare dso_local i32 @audit_uid_comparator(i32, i32, i32) #1

declare dso_local i32 @audit_gid_comparator(i32, i32, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
