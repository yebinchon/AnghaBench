; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_ram.c_ramoops_pstore_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_ram.c_ramoops_pstore_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pstore_record = type { i32, i64, i32*, i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { %struct.ramoops_context* }
%struct.ramoops_context = type { i64, i64, i32, i64, i64, i32*, i32, i32, i32, i32, i32* }
%struct.persistent_ram_zone = type { %struct.persistent_ram_zone*, i64, i64, i32 }

@RAMOOPS_FLAG_FTRACE_PER_CPU = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pstore_record*)* @ramoops_pstore_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ramoops_pstore_read(%struct.pstore_record* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pstore_record*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ramoops_context*, align 8
  %6 = alloca %struct.persistent_ram_zone*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.persistent_ram_zone*, align 8
  %10 = alloca %struct.persistent_ram_zone*, align 8
  store %struct.pstore_record* %0, %struct.pstore_record** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %12 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %11, i32 0, i32 5
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.ramoops_context*, %struct.ramoops_context** %14, align 8
  store %struct.ramoops_context* %15, %struct.ramoops_context** %5, align 8
  store %struct.persistent_ram_zone* null, %struct.persistent_ram_zone** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %17 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %20 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %23 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  br label %24

24:                                               ; preds = %68, %52, %1
  %25 = load %struct.ramoops_context*, %struct.ramoops_context** %5, align 8
  %26 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ramoops_context*, %struct.ramoops_context** %5, align 8
  %29 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %6, align 8
  %34 = icmp ne %struct.persistent_ram_zone* %33, null
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %32, %24
  %37 = phi i1 [ false, %24 ], [ %35, %32 ]
  br i1 %37, label %38, label %69

38:                                               ; preds = %36
  %39 = load %struct.ramoops_context*, %struct.ramoops_context** %5, align 8
  %40 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %39, i32 0, i32 10
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.ramoops_context*, %struct.ramoops_context** %5, align 8
  %43 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = trunc i64 %44 to i32
  %47 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %48 = call %struct.persistent_ram_zone* @ramoops_get_next_prz(i32* %41, i32 %46, %struct.pstore_record* %47)
  store %struct.persistent_ram_zone* %48, %struct.persistent_ram_zone** %6, align 8
  %49 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %6, align 8
  %50 = call i32 @prz_ok(%struct.persistent_ram_zone* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %38
  br label %24

53:                                               ; preds = %38
  %54 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %6, align 8
  %55 = call i64 @persistent_ram_old(%struct.persistent_ram_zone* %54)
  %56 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %57 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %56, i32 0, i32 4
  %58 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %59 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %58, i32 0, i32 0
  %60 = call i32 @ramoops_read_kmsg_hdr(i64 %55, %struct.TYPE_4__* %57, i32* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %53
  %64 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %6, align 8
  %65 = call i32 @persistent_ram_free_old(%struct.persistent_ram_zone* %64)
  %66 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %6, align 8
  %67 = call i32 @persistent_ram_zap(%struct.persistent_ram_zone* %66)
  store %struct.persistent_ram_zone* null, %struct.persistent_ram_zone** %6, align 8
  br label %68

68:                                               ; preds = %63, %53
  br label %24

69:                                               ; preds = %36
  %70 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %6, align 8
  %71 = call i32 @prz_ok(%struct.persistent_ram_zone* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %69
  %74 = load %struct.ramoops_context*, %struct.ramoops_context** %5, align 8
  %75 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = icmp ne i32 %76, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %73
  %80 = load %struct.ramoops_context*, %struct.ramoops_context** %5, align 8
  %81 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %80, i32 0, i32 8
  %82 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %83 = call %struct.persistent_ram_zone* @ramoops_get_next_prz(i32* %81, i32 0, %struct.pstore_record* %82)
  store %struct.persistent_ram_zone* %83, %struct.persistent_ram_zone** %6, align 8
  br label %84

84:                                               ; preds = %79, %73, %69
  %85 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %6, align 8
  %86 = call i32 @prz_ok(%struct.persistent_ram_zone* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %99, label %88

88:                                               ; preds = %84
  %89 = load %struct.ramoops_context*, %struct.ramoops_context** %5, align 8
  %90 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = icmp ne i32 %91, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %88
  %95 = load %struct.ramoops_context*, %struct.ramoops_context** %5, align 8
  %96 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %95, i32 0, i32 6
  %97 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %98 = call %struct.persistent_ram_zone* @ramoops_get_next_prz(i32* %96, i32 0, %struct.pstore_record* %97)
  store %struct.persistent_ram_zone* %98, %struct.persistent_ram_zone** %6, align 8
  br label %99

99:                                               ; preds = %94, %88, %84
  %100 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %6, align 8
  %101 = call i32 @prz_ok(%struct.persistent_ram_zone* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %186, label %103

103:                                              ; preds = %99
  %104 = load %struct.ramoops_context*, %struct.ramoops_context** %5, align 8
  %105 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @RAMOOPS_FLAG_FTRACE_PER_CPU, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %122, label %110

110:                                              ; preds = %103
  %111 = load %struct.ramoops_context*, %struct.ramoops_context** %5, align 8
  %112 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %112, align 8
  %115 = icmp ne i64 %113, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = load %struct.ramoops_context*, %struct.ramoops_context** %5, align 8
  %118 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %117, i32 0, i32 5
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %121 = call %struct.persistent_ram_zone* @ramoops_get_next_prz(i32* %119, i32 0, %struct.pstore_record* %120)
  store %struct.persistent_ram_zone* %121, %struct.persistent_ram_zone** %6, align 8
  br label %185

122:                                              ; preds = %110, %103
  %123 = load i32, i32* @GFP_KERNEL, align 4
  %124 = call %struct.persistent_ram_zone* @kzalloc(i32 32, i32 %123)
  store %struct.persistent_ram_zone* %124, %struct.persistent_ram_zone** %9, align 8
  %125 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %9, align 8
  %126 = icmp ne %struct.persistent_ram_zone* %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  br label %254

130:                                              ; preds = %122
  %131 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %9, align 8
  store %struct.persistent_ram_zone* %131, %struct.persistent_ram_zone** %6, align 8
  store i32 1, i32* %8, align 4
  br label %132

132:                                              ; preds = %181, %154, %130
  %133 = load %struct.ramoops_context*, %struct.ramoops_context** %5, align 8
  %134 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.ramoops_context*, %struct.ramoops_context** %5, align 8
  %137 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = icmp slt i64 %135, %138
  br i1 %139, label %140, label %182

140:                                              ; preds = %132
  %141 = load %struct.ramoops_context*, %struct.ramoops_context** %5, align 8
  %142 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %141, i32 0, i32 5
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.ramoops_context*, %struct.ramoops_context** %5, align 8
  %145 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %145, align 8
  %148 = trunc i64 %146 to i32
  %149 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %150 = call %struct.persistent_ram_zone* @ramoops_get_next_prz(i32* %143, i32 %148, %struct.pstore_record* %149)
  store %struct.persistent_ram_zone* %150, %struct.persistent_ram_zone** %10, align 8
  %151 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %10, align 8
  %152 = call i32 @prz_ok(%struct.persistent_ram_zone* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %140
  br label %132

155:                                              ; preds = %140
  %156 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %10, align 8
  %157 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %9, align 8
  %160 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 8
  %161 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %10, align 8
  %162 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %9, align 8
  %165 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %166, %163
  store i64 %167, i64* %165, align 8
  %168 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %10, align 8
  %169 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %9, align 8
  %172 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %173, %170
  store i64 %174, i64* %172, align 8
  %175 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %9, align 8
  %176 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %10, align 8
  %177 = call i32 @ftrace_log_combine(%struct.persistent_ram_zone* %175, %struct.persistent_ram_zone* %176)
  store i32 %177, i32* %4, align 4
  %178 = load i32, i32* %4, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %155
  br label %242

181:                                              ; preds = %155
  br label %132

182:                                              ; preds = %132
  %183 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %184 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %183, i32 0, i32 3
  store i64 0, i64* %184, align 8
  br label %185

185:                                              ; preds = %182, %116
  br label %186

186:                                              ; preds = %185, %99
  %187 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %6, align 8
  %188 = call i32 @prz_ok(%struct.persistent_ram_zone* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %186
  store i32 0, i32* %4, align 4
  br label %242

191:                                              ; preds = %186
  %192 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %6, align 8
  %193 = call i32 @persistent_ram_old_size(%struct.persistent_ram_zone* %192)
  %194 = load i32, i32* %7, align 4
  %195 = sub nsw i32 %193, %194
  store i32 %195, i32* %4, align 4
  %196 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %6, align 8
  %197 = call i64 @persistent_ram_ecc_string(%struct.persistent_ram_zone* %196, i32* null, i64 0)
  %198 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %199 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %198, i32 0, i32 1
  store i64 %197, i64* %199, align 8
  %200 = load i32, i32* %4, align 4
  %201 = sext i32 %200 to i64
  %202 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %203 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %201, %204
  %206 = add nsw i64 %205, 1
  %207 = load i32, i32* @GFP_KERNEL, align 4
  %208 = call i32* @kmalloc(i64 %206, i32 %207)
  %209 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %210 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %209, i32 0, i32 2
  store i32* %208, i32** %210, align 8
  %211 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %212 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = icmp eq i32* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %191
  %216 = load i32, i32* @ENOMEM, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %4, align 4
  br label %242

218:                                              ; preds = %191
  %219 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %220 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %6, align 8
  %223 = call i64 @persistent_ram_old(%struct.persistent_ram_zone* %222)
  %224 = inttoptr i64 %223 to i8*
  %225 = load i32, i32* %7, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8, i8* %224, i64 %226
  %228 = load i32, i32* %4, align 4
  %229 = call i32 @memcpy(i32* %221, i8* %227, i32 %228)
  %230 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %6, align 8
  %231 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %232 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %231, i32 0, i32 2
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %4, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %238 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = add nsw i64 %239, 1
  %241 = call i64 @persistent_ram_ecc_string(%struct.persistent_ram_zone* %230, i32* %236, i64 %240)
  br label %242

242:                                              ; preds = %218, %215, %190, %180
  %243 = load i32, i32* %8, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %242
  %246 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %6, align 8
  %247 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %246, i32 0, i32 0
  %248 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %247, align 8
  %249 = call i32 @kfree(%struct.persistent_ram_zone* %248)
  %250 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %6, align 8
  %251 = call i32 @kfree(%struct.persistent_ram_zone* %250)
  br label %252

252:                                              ; preds = %245, %242
  %253 = load i32, i32* %4, align 4
  store i32 %253, i32* %2, align 4
  br label %254

254:                                              ; preds = %252, %127
  %255 = load i32, i32* %2, align 4
  ret i32 %255
}

declare dso_local %struct.persistent_ram_zone* @ramoops_get_next_prz(i32*, i32, %struct.pstore_record*) #1

declare dso_local i32 @prz_ok(%struct.persistent_ram_zone*) #1

declare dso_local i32 @ramoops_read_kmsg_hdr(i64, %struct.TYPE_4__*, i32*) #1

declare dso_local i64 @persistent_ram_old(%struct.persistent_ram_zone*) #1

declare dso_local i32 @persistent_ram_free_old(%struct.persistent_ram_zone*) #1

declare dso_local i32 @persistent_ram_zap(%struct.persistent_ram_zone*) #1

declare dso_local %struct.persistent_ram_zone* @kzalloc(i32, i32) #1

declare dso_local i32 @ftrace_log_combine(%struct.persistent_ram_zone*, %struct.persistent_ram_zone*) #1

declare dso_local i32 @persistent_ram_old_size(%struct.persistent_ram_zone*) #1

declare dso_local i64 @persistent_ram_ecc_string(%struct.persistent_ram_zone*, i32*, i64) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.persistent_ram_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
