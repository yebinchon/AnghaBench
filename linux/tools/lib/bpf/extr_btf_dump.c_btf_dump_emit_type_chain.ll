; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump_emit_type_chain.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump_emit_type_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dump = type { i32 }
%struct.id_stack = type { i32, i64* }
%struct.btf_type = type { i32 }
%struct.btf_array = type { i32 }
%struct.btf_param = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" *\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" volatile\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" const\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" restrict\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"[%u]\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"unexpected type in decl chain, kind:%u, id:[%u]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btf_dump*, %struct.id_stack*, i8*, i32)* @btf_dump_emit_type_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btf_dump_emit_type_chain(%struct.btf_dump* %0, %struct.id_stack* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.btf_dump*, align 8
  %6 = alloca %struct.id_stack*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.btf_type*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.btf_array*, align 8
  %15 = alloca %struct.btf_type*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.btf_param*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.btf_dump* %0, %struct.btf_dump** %5, align 8
  store %struct.id_stack* %1, %struct.id_stack** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %21

21:                                               ; preds = %327, %39, %4
  %22 = load %struct.id_stack*, %struct.id_stack** %6, align 8
  %23 = getelementptr inbounds %struct.id_stack, %struct.id_stack* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %331

26:                                               ; preds = %21
  %27 = load %struct.id_stack*, %struct.id_stack** %6, align 8
  %28 = getelementptr inbounds %struct.id_stack, %struct.id_stack* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load %struct.id_stack*, %struct.id_stack** %6, align 8
  %31 = getelementptr inbounds %struct.id_stack, %struct.id_stack* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %29, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %13, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %26
  %40 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %41 = load %struct.id_stack*, %struct.id_stack** %6, align 8
  %42 = call i32 @btf_dump_emit_mods(%struct.btf_dump* %40, %struct.id_stack* %41)
  %43 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %44 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %21

45:                                               ; preds = %26
  %46 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %47 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %13, align 8
  %50 = call %struct.btf_type* @btf__type_by_id(i32 %48, i64 %49)
  store %struct.btf_type* %50, %struct.btf_type** %10, align 8
  %51 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %52 = call i32 @btf_kind(%struct.btf_type* %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  switch i32 %53, label %323 [
    i32 134, label %54
    i32 131, label %66
    i32 129, label %66
    i32 137, label %86
    i32 135, label %106
    i32 130, label %114
    i32 133, label %123
    i32 128, label %130
    i32 138, label %133
    i32 132, label %136
    i32 139, label %139
    i32 136, label %239
  ]

54:                                               ; preds = %45
  %55 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %56 = load %struct.id_stack*, %struct.id_stack** %6, align 8
  %57 = call i32 @btf_dump_emit_mods(%struct.btf_dump* %55, %struct.id_stack* %56)
  %58 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %59 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %60 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @btf_name_of(%struct.btf_dump* %58, i32 %61)
  store i8* %62, i8** %11, align 8
  %63 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  br label %327

66:                                               ; preds = %45, %45
  %67 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %68 = load %struct.id_stack*, %struct.id_stack** %6, align 8
  %69 = call i32 @btf_dump_emit_mods(%struct.btf_dump* %67, %struct.id_stack* %68)
  %70 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %71 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %76 = load i64, i64* %13, align 8
  %77 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @btf_dump_emit_struct_def(%struct.btf_dump* %75, i64 %76, %struct.btf_type* %77, i32 %78)
  br label %85

80:                                               ; preds = %66
  %81 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %82 = load i64, i64* %13, align 8
  %83 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %84 = call i32 @btf_dump_emit_struct_fwd(%struct.btf_dump* %81, i64 %82, %struct.btf_type* %83)
  br label %85

85:                                               ; preds = %80, %74
  br label %327

86:                                               ; preds = %45
  %87 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %88 = load %struct.id_stack*, %struct.id_stack** %6, align 8
  %89 = call i32 @btf_dump_emit_mods(%struct.btf_dump* %87, %struct.id_stack* %88)
  %90 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %91 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %96 = load i64, i64* %13, align 8
  %97 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @btf_dump_emit_enum_def(%struct.btf_dump* %95, i64 %96, %struct.btf_type* %97, i32 %98)
  br label %105

100:                                              ; preds = %86
  %101 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %102 = load i64, i64* %13, align 8
  %103 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %104 = call i32 @btf_dump_emit_enum_fwd(%struct.btf_dump* %101, i64 %102, %struct.btf_type* %103)
  br label %105

105:                                              ; preds = %100, %94
  br label %327

106:                                              ; preds = %45
  %107 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %108 = load %struct.id_stack*, %struct.id_stack** %6, align 8
  %109 = call i32 @btf_dump_emit_mods(%struct.btf_dump* %107, %struct.id_stack* %108)
  %110 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %111 = load i64, i64* %13, align 8
  %112 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %113 = call i32 @btf_dump_emit_fwd_def(%struct.btf_dump* %110, i64 %111, %struct.btf_type* %112)
  br label %327

114:                                              ; preds = %45
  %115 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %116 = load %struct.id_stack*, %struct.id_stack** %6, align 8
  %117 = call i32 @btf_dump_emit_mods(%struct.btf_dump* %115, %struct.id_stack* %116)
  %118 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %119 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %120 = load i64, i64* %13, align 8
  %121 = call i32 @btf_dump_ident_name(%struct.btf_dump* %119, i64 %120)
  %122 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  br label %327

123:                                              ; preds = %45
  %124 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %129 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %128)
  br label %327

130:                                              ; preds = %45
  %131 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %132 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %131, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %327

133:                                              ; preds = %45
  %134 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %135 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %327

136:                                              ; preds = %45
  %137 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %138 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %137, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %327

139:                                              ; preds = %45
  %140 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %141 = call %struct.btf_array* @btf_array(%struct.btf_type* %140)
  store %struct.btf_array* %141, %struct.btf_array** %14, align 8
  br label %142

142:                                              ; preds = %172, %139
  %143 = load %struct.id_stack*, %struct.id_stack** %6, align 8
  %144 = getelementptr inbounds %struct.id_stack, %struct.id_stack* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %173

147:                                              ; preds = %142
  %148 = load %struct.id_stack*, %struct.id_stack** %6, align 8
  %149 = getelementptr inbounds %struct.id_stack, %struct.id_stack* %148, i32 0, i32 1
  %150 = load i64*, i64** %149, align 8
  %151 = load %struct.id_stack*, %struct.id_stack** %6, align 8
  %152 = getelementptr inbounds %struct.id_stack, %struct.id_stack* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %150, i64 %155
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %16, align 8
  %158 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %159 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i64, i64* %16, align 8
  %162 = call %struct.btf_type* @btf__type_by_id(i32 %160, i64 %161)
  store %struct.btf_type* %162, %struct.btf_type** %15, align 8
  %163 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %164 = call i32 @btf_is_mod(%struct.btf_type* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %147
  %167 = load %struct.id_stack*, %struct.id_stack** %6, align 8
  %168 = getelementptr inbounds %struct.id_stack, %struct.id_stack* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %168, align 8
  br label %172

171:                                              ; preds = %147
  br label %173

172:                                              ; preds = %166
  br label %142

173:                                              ; preds = %171, %142
  %174 = load %struct.id_stack*, %struct.id_stack** %6, align 8
  %175 = getelementptr inbounds %struct.id_stack, %struct.id_stack* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %173
  %179 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %180 = load i8*, i8** %7, align 8
  %181 = load i32, i32* %9, align 4
  %182 = call i32 @btf_dump_emit_name(%struct.btf_dump* %179, i8* %180, i32 %181)
  %183 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %184 = load %struct.btf_array*, %struct.btf_array** %14, align 8
  %185 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %183, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %186)
  br label %336

188:                                              ; preds = %173
  %189 = load %struct.id_stack*, %struct.id_stack** %6, align 8
  %190 = getelementptr inbounds %struct.id_stack, %struct.id_stack* %189, i32 0, i32 1
  %191 = load i64*, i64** %190, align 8
  %192 = load %struct.id_stack*, %struct.id_stack** %6, align 8
  %193 = getelementptr inbounds %struct.id_stack, %struct.id_stack* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = sub nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %191, i64 %196
  %198 = load i64, i64* %197, align 8
  store i64 %198, i64* %16, align 8
  %199 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %200 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i64, i64* %16, align 8
  %203 = call %struct.btf_type* @btf__type_by_id(i32 %201, i64 %202)
  store %struct.btf_type* %203, %struct.btf_type** %15, align 8
  %204 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %205 = call i32 @btf_is_array(%struct.btf_type* %204)
  store i32 %205, i32* %17, align 4
  %206 = load i8*, i8** %7, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 0
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %188
  %212 = load i32, i32* %9, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %211
  %215 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %216 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %215, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %217

217:                                              ; preds = %214, %211, %188
  %218 = load i32, i32* %17, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %217
  %221 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %222 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %221, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %223

223:                                              ; preds = %220, %217
  %224 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %225 = load %struct.id_stack*, %struct.id_stack** %6, align 8
  %226 = load i8*, i8** %7, align 8
  %227 = load i32, i32* %8, align 4
  call void @btf_dump_emit_type_chain(%struct.btf_dump* %224, %struct.id_stack* %225, i8* %226, i32 %227)
  %228 = load i32, i32* %17, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %233, label %230

230:                                              ; preds = %223
  %231 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %232 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %231, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %233

233:                                              ; preds = %230, %223
  %234 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %235 = load %struct.btf_array*, %struct.btf_array** %14, align 8
  %236 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %234, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %237)
  br label %336

239:                                              ; preds = %45
  %240 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %241 = call %struct.btf_param* @btf_params(%struct.btf_type* %240)
  store %struct.btf_param* %241, %struct.btf_param** %18, align 8
  %242 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %243 = call i32 @btf_vlen(%struct.btf_type* %242)
  store i32 %243, i32* %19, align 4
  %244 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %245 = load %struct.id_stack*, %struct.id_stack** %6, align 8
  %246 = call i32 @btf_dump_emit_mods(%struct.btf_dump* %244, %struct.id_stack* %245)
  %247 = load %struct.id_stack*, %struct.id_stack** %6, align 8
  %248 = getelementptr inbounds %struct.id_stack, %struct.id_stack* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %260

251:                                              ; preds = %239
  %252 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %253 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %252, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %254 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %255 = load %struct.id_stack*, %struct.id_stack** %6, align 8
  %256 = load i8*, i8** %7, align 8
  %257 = load i32, i32* %8, align 4
  call void @btf_dump_emit_type_chain(%struct.btf_dump* %254, %struct.id_stack* %255, i8* %256, i32 %257)
  %258 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %259 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %258, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %265

260:                                              ; preds = %239
  %261 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %262 = load i8*, i8** %7, align 8
  %263 = load i32, i32* %9, align 4
  %264 = call i32 @btf_dump_emit_name(%struct.btf_dump* %261, i8* %262, i32 %263)
  br label %265

265:                                              ; preds = %260, %251
  %266 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %267 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %266, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %268 = load i32, i32* %19, align 4
  %269 = icmp eq i32 %268, 1
  br i1 %269, label %270, label %278

270:                                              ; preds = %265
  %271 = load %struct.btf_param*, %struct.btf_param** %18, align 8
  %272 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %270
  %276 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %277 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %276, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %336

278:                                              ; preds = %270, %265
  store i32 0, i32* %20, align 4
  br label %279

279:                                              ; preds = %315, %278
  %280 = load i32, i32* %20, align 4
  %281 = load i32, i32* %19, align 4
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %283, label %320

283:                                              ; preds = %279
  %284 = load i32, i32* %20, align 4
  %285 = icmp sgt i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %283
  %287 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %288 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %287, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %289

289:                                              ; preds = %286, %283
  %290 = load i32, i32* %20, align 4
  %291 = load i32, i32* %19, align 4
  %292 = sub nsw i32 %291, 1
  %293 = icmp eq i32 %290, %292
  br i1 %293, label %294, label %302

294:                                              ; preds = %289
  %295 = load %struct.btf_param*, %struct.btf_param** %18, align 8
  %296 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %294
  %300 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %301 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %300, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  br label %320

302:                                              ; preds = %294, %289
  %303 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %304 = load %struct.btf_param*, %struct.btf_param** %18, align 8
  %305 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = call i8* @btf_name_of(%struct.btf_dump* %303, i32 %306)
  store i8* %307, i8** %11, align 8
  %308 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %309 = load %struct.btf_param*, %struct.btf_param** %18, align 8
  %310 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load i8*, i8** %11, align 8
  %313 = load i32, i32* %8, align 4
  %314 = call i32 @btf_dump_emit_type_decl(%struct.btf_dump* %308, i32 %311, i8* %312, i32 %313)
  br label %315

315:                                              ; preds = %302
  %316 = load i32, i32* %20, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %20, align 4
  %318 = load %struct.btf_param*, %struct.btf_param** %18, align 8
  %319 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %318, i32 1
  store %struct.btf_param* %319, %struct.btf_param** %18, align 8
  br label %279

320:                                              ; preds = %299, %279
  %321 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %322 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %321, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %336

323:                                              ; preds = %45
  %324 = load i32, i32* %12, align 4
  %325 = load i64, i64* %13, align 8
  %326 = call i32 @pr_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i64 0, i64 0), i32 %324, i64 %325)
  br label %336

327:                                              ; preds = %136, %133, %130, %123, %114, %106, %105, %85, %54
  %328 = load i32, i32* %12, align 4
  %329 = icmp eq i32 %328, 133
  %330 = zext i1 %329 to i32
  store i32 %330, i32* %9, align 4
  br label %21

331:                                              ; preds = %21
  %332 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %333 = load i8*, i8** %7, align 8
  %334 = load i32, i32* %9, align 4
  %335 = call i32 @btf_dump_emit_name(%struct.btf_dump* %332, i8* %333, i32 %334)
  br label %336

336:                                              ; preds = %331, %323, %320, %275, %233, %178
  ret void
}

declare dso_local i32 @btf_dump_emit_mods(%struct.btf_dump*, %struct.id_stack*) #1

declare dso_local i32 @btf_dump_printf(%struct.btf_dump*, i8*, ...) #1

declare dso_local %struct.btf_type* @btf__type_by_id(i32, i64) #1

declare dso_local i32 @btf_kind(%struct.btf_type*) #1

declare dso_local i8* @btf_name_of(%struct.btf_dump*, i32) #1

declare dso_local i32 @btf_dump_emit_struct_def(%struct.btf_dump*, i64, %struct.btf_type*, i32) #1

declare dso_local i32 @btf_dump_emit_struct_fwd(%struct.btf_dump*, i64, %struct.btf_type*) #1

declare dso_local i32 @btf_dump_emit_enum_def(%struct.btf_dump*, i64, %struct.btf_type*, i32) #1

declare dso_local i32 @btf_dump_emit_enum_fwd(%struct.btf_dump*, i64, %struct.btf_type*) #1

declare dso_local i32 @btf_dump_emit_fwd_def(%struct.btf_dump*, i64, %struct.btf_type*) #1

declare dso_local i32 @btf_dump_ident_name(%struct.btf_dump*, i64) #1

declare dso_local %struct.btf_array* @btf_array(%struct.btf_type*) #1

declare dso_local i32 @btf_is_mod(%struct.btf_type*) #1

declare dso_local i32 @btf_dump_emit_name(%struct.btf_dump*, i8*, i32) #1

declare dso_local i32 @btf_is_array(%struct.btf_type*) #1

declare dso_local %struct.btf_param* @btf_params(%struct.btf_type*) #1

declare dso_local i32 @btf_vlen(%struct.btf_type*) #1

declare dso_local i32 @btf_dump_emit_type_decl(%struct.btf_dump*, i32, i8*, i32) #1

declare dso_local i32 @pr_warning(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
