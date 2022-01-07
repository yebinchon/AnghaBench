; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_kallsyms.c_write_src.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_kallsyms.c_write_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@KSYM_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"#include <asm/bitsperlong.h>\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"#if BITS_PER_LONG == 64\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"#define PTR .quad\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"#define ALGN .balign 8\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"#else\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"#define PTR .long\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"#define ALGN .balign 4\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"\09.section .rodata, \22a\22\0A\00", align 1
@base_relative = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [19 x i8] c"kallsyms_addresses\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"kallsyms_offsets\00", align 1
@table_cnt = common dso_local global i32 0, align 4
@absolute_percpu = common dso_local global i32 0, align 4
@table = common dso_local global %struct.TYPE_3__* null, align 8
@relative_base = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [71 x i8] c"kallsyms failure: %s symbol value %#llx out of range in relative mode\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"absolute\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"relative\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"\09.long\09%#x\0A\00", align 1
@_text = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [20 x i8] c"\09PTR\09_text + %#llx\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"\09PTR\09_text - %#llx\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"\09PTR\09%#llx\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"kallsyms_relative_base\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"kallsyms_num_syms\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"\09.long\09%u\0A\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"kallsyms failure: unable to allocate required memory\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"kallsyms_names\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"\09.byte 0x%02x\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c", 0x%02x\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"kallsyms_markers\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"kallsyms_token_table\00", align 1
@best_table = common dso_local global i32* null, align 8
@best_table_len = common dso_local global i32* null, align 8
@.str.28 = private unnamed_addr constant [14 x i8] c"\09.asciz\09\22%s\22\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"kallsyms_token_index\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"\09.short\09%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_src() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [256 x i32], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @KSYM_NAME_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %23 = load i64, i64* @base_relative, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %0
  %26 = call i32 @output_label(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %29

27:                                               ; preds = %0
  %28 = call i32 @output_label(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %25
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %177, %29
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* @table_cnt, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %180

34:                                               ; preds = %30
  %35 = load i64, i64* @base_relative, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %130

37:                                               ; preds = %34
  %38 = load i32, i32* @absolute_percpu, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %37
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @table, align 8
  %42 = load i32, i32* %1, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @relative_base, align 4
  %48 = sub nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %40
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @UINT_MAX, align 8
  %55 = icmp sgt i64 %53, %54
  br label %56

56:                                               ; preds = %52, %40
  %57 = phi i1 [ true, %40 ], [ %55, %52 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %9, align 4
  br label %104

59:                                               ; preds = %37
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @table, align 8
  %61 = load i32, i32* %1, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = call i64 @symbol_absolute(%struct.TYPE_3__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %59
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @table, align 8
  %68 = load i32, i32* %1, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %66
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @INT_MAX, align 8
  %79 = icmp sgt i64 %77, %78
  br label %80

80:                                               ; preds = %76, %66
  %81 = phi i1 [ true, %66 ], [ %79, %76 ]
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %9, align 4
  br label %103

83:                                               ; preds = %59
  %84 = load i32, i32* @relative_base, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** @table, align 8
  %86 = load i32, i32* %1, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %84, %90
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %8, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* @INT_MIN, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %100, label %97

97:                                               ; preds = %83
  %98 = load i64, i64* %8, align 8
  %99 = icmp sge i64 %98, 0
  br label %100

100:                                              ; preds = %97, %83
  %101 = phi i1 [ true, %83 ], [ %99, %97 ]
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %100, %80
  br label %104

104:                                              ; preds = %103, %56
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %104
  %108 = load i32, i32* @stderr, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** @table, align 8
  %110 = load i32, i32* %1, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = call i64 @symbol_absolute(%struct.TYPE_3__* %112)
  %114 = icmp ne i64 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** @table, align 8
  %118 = load i32, i32* %1, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.11, i64 0, i64 0), i8* %116, i32 %122)
  %124 = load i32, i32* @EXIT_FAILURE, align 4
  %125 = call i32 @exit(i32 %124) #4
  unreachable

126:                                              ; preds = %104
  %127 = load i64, i64* %8, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %128)
  br label %176

130:                                              ; preds = %34
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** @table, align 8
  %132 = load i32, i32* %1, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = call i64 @symbol_absolute(%struct.TYPE_3__* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %167, label %137

137:                                              ; preds = %130
  %138 = load i32, i32* @_text, align 4
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** @table, align 8
  %140 = load i32, i32* %1, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp sle i32 %138, %144
  br i1 %145, label %146, label %156

146:                                              ; preds = %137
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** @table, align 8
  %148 = load i32, i32* %1, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @_text, align 4
  %154 = sub nsw i32 %152, %153
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 %154)
  br label %166

156:                                              ; preds = %137
  %157 = load i32, i32* @_text, align 4
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** @table, align 8
  %159 = load i32, i32* %1, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sub nsw i32 %157, %163
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %156, %146
  br label %175

167:                                              ; preds = %130
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** @table, align 8
  %169 = load i32, i32* %1, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %167, %166
  br label %176

176:                                              ; preds = %175, %126
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %1, align 4
  %179 = add i32 %178, 1
  store i32 %179, i32* %1, align 4
  br label %30

180:                                              ; preds = %30
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %182 = load i64, i64* @base_relative, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %180
  %185 = call i32 @output_label(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %186 = load i32, i32* @_text, align 4
  %187 = load i32, i32* @relative_base, align 4
  %188 = sub nsw i32 %186, %187
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %188)
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  br label %191

191:                                              ; preds = %184, %180
  %192 = call i32 @output_label(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  %193 = load i32, i32* @table_cnt, align 4
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32 %193)
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %196 = load i32, i32* @table_cnt, align 4
  %197 = add i32 %196, 255
  %198 = udiv i32 %197, 256
  %199 = zext i32 %198 to i64
  %200 = mul i64 4, %199
  %201 = trunc i64 %200 to i32
  %202 = call i32* @malloc(i32 %201)
  store i32* %202, i32** %5, align 8
  %203 = load i32*, i32** %5, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %210, label %205

205:                                              ; preds = %191
  %206 = load i32, i32* @stderr, align 4
  %207 = call i32 (i32, i8*, ...) @fprintf(i32 %206, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i64 0, i64 0))
  %208 = load i32, i32* @EXIT_FAILURE, align 4
  %209 = call i32 @exit(i32 %208) #4
  unreachable

210:                                              ; preds = %191
  %211 = call i32 @output_label(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %212

212:                                              ; preds = %270, %210
  %213 = load i32, i32* %1, align 4
  %214 = load i32, i32* @table_cnt, align 4
  %215 = icmp ult i32 %213, %214
  br i1 %215, label %216, label %273

216:                                              ; preds = %212
  %217 = load i32, i32* %1, align 4
  %218 = and i32 %217, 255
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %216
  %221 = load i32, i32* %3, align 4
  %222 = load i32*, i32** %5, align 8
  %223 = load i32, i32* %1, align 4
  %224 = lshr i32 %223, 8
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  store i32 %221, i32* %226, align 4
  br label %227

227:                                              ; preds = %220, %216
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** @table, align 8
  %229 = load i32, i32* %1, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i32 %233)
  store i32 0, i32* %2, align 4
  br label %235

235:                                              ; preds = %256, %227
  %236 = load i32, i32* %2, align 4
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** @table, align 8
  %238 = load i32, i32* %1, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = icmp ult i32 %236, %242
  br i1 %243, label %244, label %259

244:                                              ; preds = %235
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** @table, align 8
  %246 = load i32, i32* %1, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 2
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %2, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 %254)
  br label %256

256:                                              ; preds = %244
  %257 = load i32, i32* %2, align 4
  %258 = add i32 %257, 1
  store i32 %258, i32* %2, align 4
  br label %235

259:                                              ; preds = %235
  %260 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** @table, align 8
  %262 = load i32, i32* %1, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = add nsw i32 %266, 1
  %268 = load i32, i32* %3, align 4
  %269 = add i32 %268, %267
  store i32 %269, i32* %3, align 4
  br label %270

270:                                              ; preds = %259
  %271 = load i32, i32* %1, align 4
  %272 = add i32 %271, 1
  store i32 %272, i32* %1, align 4
  br label %212

273:                                              ; preds = %212
  %274 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %275 = call i32 @output_label(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %276

276:                                              ; preds = %289, %273
  %277 = load i32, i32* %1, align 4
  %278 = load i32, i32* @table_cnt, align 4
  %279 = add i32 %278, 255
  %280 = lshr i32 %279, 8
  %281 = icmp ult i32 %277, %280
  br i1 %281, label %282, label %292

282:                                              ; preds = %276
  %283 = load i32*, i32** %5, align 8
  %284 = load i32, i32* %1, align 4
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32 %287)
  br label %289

289:                                              ; preds = %282
  %290 = load i32, i32* %1, align 4
  %291 = add i32 %290, 1
  store i32 %291, i32* %1, align 4
  br label %276

292:                                              ; preds = %276
  %293 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %294 = load i32*, i32** %5, align 8
  %295 = call i32 @free(i32* %294)
  %296 = call i32 @output_label(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %297

297:                                              ; preds = %323, %292
  %298 = load i32, i32* %1, align 4
  %299 = icmp ult i32 %298, 256
  br i1 %299, label %300, label %326

300:                                              ; preds = %297
  %301 = load i32, i32* %3, align 4
  %302 = load i32, i32* %1, align 4
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 %303
  store i32 %301, i32* %304, align 4
  %305 = load i32*, i32** @best_table, align 8
  %306 = load i32, i32* %1, align 4
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load i32*, i32** @best_table_len, align 8
  %311 = load i32, i32* %1, align 4
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @expand_symbol(i32 %309, i32 %314, i8* %13)
  %316 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i8* %13)
  %317 = call i64 @strlen(i8* %13)
  %318 = add nsw i64 %317, 1
  %319 = load i32, i32* %3, align 4
  %320 = zext i32 %319 to i64
  %321 = add nsw i64 %320, %318
  %322 = trunc i64 %321 to i32
  store i32 %322, i32* %3, align 4
  br label %323

323:                                              ; preds = %300
  %324 = load i32, i32* %1, align 4
  %325 = add i32 %324, 1
  store i32 %325, i32* %1, align 4
  br label %297

326:                                              ; preds = %297
  %327 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %328 = call i32 @output_label(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %329

329:                                              ; preds = %338, %326
  %330 = load i32, i32* %1, align 4
  %331 = icmp ult i32 %330, 256
  br i1 %331, label %332, label %341

332:                                              ; preds = %329
  %333 = load i32, i32* %1, align 4
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i32 %336)
  br label %338

338:                                              ; preds = %332
  %339 = load i32, i32* %1, align 4
  %340 = add i32 %339, 1
  store i32 %340, i32* %1, align 4
  br label %329

341:                                              ; preds = %329
  %342 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %343 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %343)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @output_label(i8*) #2

declare dso_local i64 @symbol_absolute(%struct.TYPE_3__*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @expand_symbol(i32, i32, i8*) #2

declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
