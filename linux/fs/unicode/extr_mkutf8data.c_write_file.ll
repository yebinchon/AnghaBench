; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_write_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i8* }

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Writing %s\0A\00", align 1
@utf8_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"/* This file is generated code, do not edit. */\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"#ifndef __INCLUDED_FROM_UTF8NORM_C__\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"#error Only nls_utf8-norm.c should include this file.\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"static const unsigned int utf8vers = %#x;\0A\00", align 1
@unicode_maxage = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"static const unsigned int utf8agetab[] = {\0A\00", align 1
@ages_count = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"\09%#x%s\0A\00", align 1
@ages = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"static const struct utf8data utf8nfdicfdata[] = {\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"\09{ %#x, %d }%s\0A\00", align 1
@trees = common dso_local global %struct.TYPE_2__* null, align 8
@.str.15 = private unnamed_addr constant [49 x i8] c"static const struct utf8data utf8nfdidata[] = {\0A\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"static const unsigned char utf8data[%zd] = {\0A\00", align 1
@utf8data_size = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"\09/* %s_%x */\0A\00", align 1
@trees_count = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"0x%.2x%s\00", align 1
@utf8data = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_file() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i64, i64* @verbose, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i8*, i8** @utf8_name, align 8
  %10 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %9)
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i8*, i8** @utf8_name, align 8
  %13 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %13, i32** %1, align 8
  %14 = load i32*, i32** %1, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load i8*, i8** @utf8_name, align 8
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 @open_fail(i8* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %11
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %31 = load i32*, i32** %1, align 8
  %32 = load i32, i32* @unicode_maxage, align 4
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %59, %20
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @ages_count, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %38
  %43 = load i32*, i32** %1, align 8
  %44 = load i32*, i32** @ages, align 8
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** @ages, align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @unicode_maxage, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)
  %58 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %48, i8* %57)
  br label %59

59:                                               ; preds = %42
  %60 = load i32, i32* %2, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %2, align 4
  br label %38

62:                                               ; preds = %38
  %63 = load i32*, i32** %1, align 8
  %64 = call i32 (i32*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %65 = load i32*, i32** %1, align 8
  %66 = call i32 (i32*, i8*, ...) @fprintf(i32* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %67 = load i32*, i32** %1, align 8
  %68 = call i32 (i32*, i8*, ...) @fprintf(i32* %67, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %112, %62
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @ages_count, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %115

73:                                               ; preds = %69
  %74 = load i32*, i32** %1, align 8
  %75 = load i32*, i32** @ages, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trees, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** @ages, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @unicode_maxage, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)
  %95 = call i32 (i32*, i8*, ...) @fprintf(i32* %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %79, i32 %85, i8* %94)
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trees, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** @ages, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %101, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %73
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 2
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %108, %73
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %69

115:                                              ; preds = %69
  %116 = load i32*, i32** %1, align 8
  %117 = call i32 (i32*, i8*, ...) @fprintf(i32* %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %118 = load i32*, i32** %1, align 8
  %119 = call i32 (i32*, i8*, ...) @fprintf(i32* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %120 = load i32*, i32** %1, align 8
  %121 = call i32 (i32*, i8*, ...) @fprintf(i32* %120, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %165, %115
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @ages_count, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %168

126:                                              ; preds = %122
  %127 = load i32*, i32** %1, align 8
  %128 = load i32*, i32** @ages, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trees, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32*, i32** @ages, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @unicode_maxage, align 4
  %145 = icmp eq i32 %143, %144
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)
  %148 = call i32 (i32*, i8*, ...) @fprintf(i32* %127, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %132, i32 %138, i8* %147)
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trees, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** @ages, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %154, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %126
  %162 = load i32, i32* %4, align 4
  %163 = add nsw i32 %162, 2
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %161, %126
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %5, align 4
  br label %122

168:                                              ; preds = %122
  %169 = load i32*, i32** %1, align 8
  %170 = call i32 (i32*, i8*, ...) @fprintf(i32* %169, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %171 = load i32*, i32** %1, align 8
  %172 = call i32 (i32*, i8*, ...) @fprintf(i32* %171, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %173 = load i32*, i32** %1, align 8
  %174 = load i32, i32* @utf8data_size, align 4
  %175 = call i32 (i32*, i8*, ...) @fprintf(i32* %173, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i64 0, i64 0), i32 %174)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %176

176:                                              ; preds = %241, %168
  %177 = load i32, i32* %2, align 4
  %178 = load i32, i32* @utf8data_size, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %244

180:                                              ; preds = %176
  %181 = load i32, i32* %2, align 4
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trees, align 8
  %183 = load i32, i32* %4, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %181, %187
  br i1 %188, label %189, label %212

189:                                              ; preds = %180
  %190 = load i32*, i32** %1, align 8
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trees, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 2
  %196 = load i8*, i8** %195, align 8
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trees, align 8
  %198 = load i32, i32* %4, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (i32*, i8*, ...) @fprintf(i32* %190, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* %196, i32 %202)
  %204 = load i32, i32* %4, align 4
  %205 = load i32, i32* @trees_count, align 4
  %206 = sub nsw i32 %205, 1
  %207 = icmp slt i32 %204, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %189
  %209 = load i32, i32* %4, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %208, %189
  br label %212

212:                                              ; preds = %211, %180
  %213 = load i32*, i32** %1, align 8
  %214 = call i32 (i32*, i8*, ...) @fprintf(i32* %213, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %215 = load i32, i32* %2, align 4
  store i32 %215, i32* %3, align 4
  br label %216

216:                                              ; preds = %235, %212
  %217 = load i32, i32* %3, align 4
  %218 = load i32, i32* %2, align 4
  %219 = add nsw i32 %218, 16
  %220 = icmp ne i32 %217, %219
  br i1 %220, label %221, label %238

221:                                              ; preds = %216
  %222 = load i32*, i32** %1, align 8
  %223 = load i32*, i32** @utf8data, align 8
  %224 = load i32, i32* %3, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %3, align 4
  %229 = load i32, i32* @utf8data_size, align 4
  %230 = sub nsw i32 %229, 1
  %231 = icmp slt i32 %228, %230
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %234 = call i32 (i32*, i8*, ...) @fprintf(i32* %222, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %227, i8* %233)
  br label %235

235:                                              ; preds = %221
  %236 = load i32, i32* %3, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %3, align 4
  br label %216

238:                                              ; preds = %216
  %239 = load i32*, i32** %1, align 8
  %240 = call i32 (i32*, i8*, ...) @fprintf(i32* %239, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %241

241:                                              ; preds = %238
  %242 = load i32, i32* %2, align 4
  %243 = add nsw i32 %242, 16
  store i32 %243, i32* %2, align 4
  br label %176

244:                                              ; preds = %176
  %245 = load i32*, i32** %1, align 8
  %246 = call i32 (i32*, i8*, ...) @fprintf(i32* %245, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %247 = load i32*, i32** %1, align 8
  %248 = call i32 @fclose(i32* %247)
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @open_fail(i8*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
