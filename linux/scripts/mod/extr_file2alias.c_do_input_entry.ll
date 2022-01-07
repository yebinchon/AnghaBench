; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_input_entry.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_input_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_device_id = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@bustype = common dso_local global i32 0, align 4
@vendor = common dso_local global i32 0, align 4
@product = common dso_local global i32 0, align 4
@version = common dso_local global i32 0, align 4
@evbit = common dso_local global i32* null, align 8
@keybit = common dso_local global i32* null, align 8
@relbit = common dso_local global i32* null, align 8
@absbit = common dso_local global i32* null, align 8
@mscbit = common dso_local global i32* null, align 8
@ledbit = common dso_local global i32* null, align 8
@sndbit = common dso_local global i32* null, align 8
@ffbit = common dso_local global i32* null, align 8
@swbit = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"input:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@INPUT_DEVICE_ID_MATCH_BUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@INPUT_DEVICE_ID_MATCH_VENDOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@INPUT_DEVICE_ID_MATCH_PRODUCT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@INPUT_DEVICE_ID_MATCH_VERSION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"-e*\00", align 1
@INPUT_DEVICE_ID_MATCH_EVBIT = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_EV_MAX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"k*\00", align 1
@INPUT_DEVICE_ID_MATCH_KEYBIT = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_KEY_MIN_INTERESTING = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_KEY_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"r*\00", align 1
@INPUT_DEVICE_ID_MATCH_RELBIT = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_REL_MAX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"a*\00", align 1
@INPUT_DEVICE_ID_MATCH_ABSBIT = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_ABS_MAX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"m*\00", align 1
@INPUT_DEVICE_ID_MATCH_MSCIT = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_MSC_MAX = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"l*\00", align 1
@INPUT_DEVICE_ID_MATCH_LEDBIT = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_LED_MAX = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"s*\00", align 1
@INPUT_DEVICE_ID_MATCH_SNDBIT = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_SND_MAX = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"f*\00", align 1
@INPUT_DEVICE_ID_MATCH_FFBIT = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_FF_MAX = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"w*\00", align 1
@INPUT_DEVICE_ID_MATCH_SWBIT = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_SW_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @do_input_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_input_entry(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i32, i32* @input_device_id, align 4
  %9 = load i32, i32* @flags, align 4
  %10 = call i32 @DEF_FIELD(i8* %7, i32 %8, i32 %9)
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @input_device_id, align 4
  %13 = load i32, i32* @bustype, align 4
  %14 = call i32 @DEF_FIELD(i8* %11, i32 %12, i32 %13)
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @input_device_id, align 4
  %17 = load i32, i32* @vendor, align 4
  %18 = call i32 @DEF_FIELD(i8* %15, i32 %16, i32 %17)
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* @input_device_id, align 4
  %21 = load i32, i32* @product, align 4
  %22 = call i32 @DEF_FIELD(i8* %19, i32 %20, i32 %21)
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* @input_device_id, align 4
  %25 = load i32, i32* @version, align 4
  %26 = call i32 @DEF_FIELD(i8* %23, i32 %24, i32 %25)
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* @input_device_id, align 4
  %29 = load i32*, i32** @evbit, align 8
  %30 = call i32 @DEF_FIELD_ADDR(i8* %27, i32 %28, i32* %29)
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* @input_device_id, align 4
  %33 = load i32*, i32** @keybit, align 8
  %34 = call i32 @DEF_FIELD_ADDR(i8* %31, i32 %32, i32* %33)
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* @input_device_id, align 4
  %37 = load i32*, i32** @relbit, align 8
  %38 = call i32 @DEF_FIELD_ADDR(i8* %35, i32 %36, i32* %37)
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* @input_device_id, align 4
  %41 = load i32*, i32** @absbit, align 8
  %42 = call i32 @DEF_FIELD_ADDR(i8* %39, i32 %40, i32* %41)
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* @input_device_id, align 4
  %45 = load i32*, i32** @mscbit, align 8
  %46 = call i32 @DEF_FIELD_ADDR(i8* %43, i32 %44, i32* %45)
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* @input_device_id, align 4
  %49 = load i32*, i32** @ledbit, align 8
  %50 = call i32 @DEF_FIELD_ADDR(i8* %47, i32 %48, i32* %49)
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* @input_device_id, align 4
  %53 = load i32*, i32** @sndbit, align 8
  %54 = call i32 @DEF_FIELD_ADDR(i8* %51, i32 %52, i32* %53)
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* @input_device_id, align 4
  %57 = load i32*, i32** @ffbit, align 8
  %58 = call i32 @DEF_FIELD_ADDR(i8* %55, i32 %56, i32* %57)
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* @input_device_id, align 4
  %61 = load i32*, i32** @swbit, align 8
  %62 = call i32 @DEF_FIELD_ADDR(i8* %59, i32 %60, i32* %61)
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @sprintf(i8* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* @flags, align 4
  %67 = load i32, i32* @INPUT_DEVICE_ID_MATCH_BUS, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @bustype, align 4
  %70 = call i32 @ADD(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* @flags, align 4
  %73 = load i32, i32* @INPUT_DEVICE_ID_MATCH_VENDOR, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @vendor, align 4
  %76 = call i32 @ADD(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* @flags, align 4
  %79 = load i32, i32* @INPUT_DEVICE_ID_MATCH_PRODUCT, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* @product, align 4
  %82 = call i32 @ADD(i8* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* @flags, align 4
  %85 = load i32, i32* @INPUT_DEVICE_ID_MATCH_VERSION, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* @version, align 4
  %88 = call i32 @ADD(i8* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load i8*, i8** %6, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  %94 = call i32 @sprintf(i8* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %95 = load i32, i32* @flags, align 4
  %96 = load i32, i32* @INPUT_DEVICE_ID_MATCH_EVBIT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %3
  %100 = load i8*, i8** %6, align 8
  %101 = load i32*, i32** @evbit, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @INPUT_DEVICE_ID_EV_MAX, align 4
  %104 = call i32 @do_input(i8* %100, i32 %102, i32 0, i32 %103)
  br label %105

105:                                              ; preds = %99, %3
  %106 = load i8*, i8** %6, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = call i32 @strlen(i8* %107)
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %106, i64 %109
  %111 = call i32 @sprintf(i8* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %112 = load i32, i32* @flags, align 4
  %113 = load i32, i32* @INPUT_DEVICE_ID_MATCH_KEYBIT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %105
  %117 = load i8*, i8** %6, align 8
  %118 = load i32*, i32** @keybit, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @INPUT_DEVICE_ID_KEY_MIN_INTERESTING, align 4
  %121 = load i32, i32* @INPUT_DEVICE_ID_KEY_MAX, align 4
  %122 = call i32 @do_input(i8* %117, i32 %119, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %116, %105
  %124 = load i8*, i8** %6, align 8
  %125 = load i8*, i8** %6, align 8
  %126 = call i32 @strlen(i8* %125)
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  %129 = call i32 @sprintf(i8* %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %130 = load i32, i32* @flags, align 4
  %131 = load i32, i32* @INPUT_DEVICE_ID_MATCH_RELBIT, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %123
  %135 = load i8*, i8** %6, align 8
  %136 = load i32*, i32** @relbit, align 8
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @INPUT_DEVICE_ID_REL_MAX, align 4
  %139 = call i32 @do_input(i8* %135, i32 %137, i32 0, i32 %138)
  br label %140

140:                                              ; preds = %134, %123
  %141 = load i8*, i8** %6, align 8
  %142 = load i8*, i8** %6, align 8
  %143 = call i32 @strlen(i8* %142)
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %141, i64 %144
  %146 = call i32 @sprintf(i8* %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %147 = load i32, i32* @flags, align 4
  %148 = load i32, i32* @INPUT_DEVICE_ID_MATCH_ABSBIT, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %140
  %152 = load i8*, i8** %6, align 8
  %153 = load i32*, i32** @absbit, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @INPUT_DEVICE_ID_ABS_MAX, align 4
  %156 = call i32 @do_input(i8* %152, i32 %154, i32 0, i32 %155)
  br label %157

157:                                              ; preds = %151, %140
  %158 = load i8*, i8** %6, align 8
  %159 = load i8*, i8** %6, align 8
  %160 = call i32 @strlen(i8* %159)
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %158, i64 %161
  %163 = call i32 @sprintf(i8* %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %164 = load i32, i32* @flags, align 4
  %165 = load i32, i32* @INPUT_DEVICE_ID_MATCH_MSCIT, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %157
  %169 = load i8*, i8** %6, align 8
  %170 = load i32*, i32** @mscbit, align 8
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @INPUT_DEVICE_ID_MSC_MAX, align 4
  %173 = call i32 @do_input(i8* %169, i32 %171, i32 0, i32 %172)
  br label %174

174:                                              ; preds = %168, %157
  %175 = load i8*, i8** %6, align 8
  %176 = load i8*, i8** %6, align 8
  %177 = call i32 @strlen(i8* %176)
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %175, i64 %178
  %180 = call i32 @sprintf(i8* %179, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %181 = load i32, i32* @flags, align 4
  %182 = load i32, i32* @INPUT_DEVICE_ID_MATCH_LEDBIT, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %174
  %186 = load i8*, i8** %6, align 8
  %187 = load i32*, i32** @ledbit, align 8
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @INPUT_DEVICE_ID_LED_MAX, align 4
  %190 = call i32 @do_input(i8* %186, i32 %188, i32 0, i32 %189)
  br label %191

191:                                              ; preds = %185, %174
  %192 = load i8*, i8** %6, align 8
  %193 = load i8*, i8** %6, align 8
  %194 = call i32 @strlen(i8* %193)
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %192, i64 %195
  %197 = call i32 @sprintf(i8* %196, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %198 = load i32, i32* @flags, align 4
  %199 = load i32, i32* @INPUT_DEVICE_ID_MATCH_SNDBIT, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %191
  %203 = load i8*, i8** %6, align 8
  %204 = load i32*, i32** @sndbit, align 8
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @INPUT_DEVICE_ID_SND_MAX, align 4
  %207 = call i32 @do_input(i8* %203, i32 %205, i32 0, i32 %206)
  br label %208

208:                                              ; preds = %202, %191
  %209 = load i8*, i8** %6, align 8
  %210 = load i8*, i8** %6, align 8
  %211 = call i32 @strlen(i8* %210)
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, i8* %209, i64 %212
  %214 = call i32 @sprintf(i8* %213, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %215 = load i32, i32* @flags, align 4
  %216 = load i32, i32* @INPUT_DEVICE_ID_MATCH_FFBIT, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %208
  %220 = load i8*, i8** %6, align 8
  %221 = load i32*, i32** @ffbit, align 8
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @INPUT_DEVICE_ID_FF_MAX, align 4
  %224 = call i32 @do_input(i8* %220, i32 %222, i32 0, i32 %223)
  br label %225

225:                                              ; preds = %219, %208
  %226 = load i8*, i8** %6, align 8
  %227 = load i8*, i8** %6, align 8
  %228 = call i32 @strlen(i8* %227)
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %226, i64 %229
  %231 = call i32 @sprintf(i8* %230, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %232 = load i32, i32* @flags, align 4
  %233 = load i32, i32* @INPUT_DEVICE_ID_MATCH_SWBIT, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %242

236:                                              ; preds = %225
  %237 = load i8*, i8** %6, align 8
  %238 = load i32*, i32** @swbit, align 8
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @INPUT_DEVICE_ID_SW_MAX, align 4
  %241 = call i32 @do_input(i8* %237, i32 %239, i32 0, i32 %240)
  br label %242

242:                                              ; preds = %236, %225
  ret i32 1
}

declare dso_local i32 @DEF_FIELD(i8*, i32, i32) #1

declare dso_local i32 @DEF_FIELD_ADDR(i8*, i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @ADD(i8*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @do_input(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
