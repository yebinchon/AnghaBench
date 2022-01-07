; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_symbol.c_sym_check_print_recursive.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_symbol.c_sym_check_print_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dep_stack = type { i32*, %struct.symbol*, %struct.property*, %struct.dep_stack*, %struct.dep_stack* }
%struct.symbol = type { i8*, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.property* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.property = type { i32, i32, %struct.TYPE_9__*, %struct.menu*, %struct.property* }
%struct.TYPE_9__ = type { i8* }
%struct.menu = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }

@check_top = common dso_local global %struct.dep_stack* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"unexpected recursive dependency error\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"%s:%d:error: recursive dependency detected!\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%s:%d:\09choice %s contains symbol %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"<choice>\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"%s:%d:\09symbol %s is part of choice %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%s:%d:\09symbol %s depends on %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"%s:%d:\09symbol %s is selected by %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"%s:%d:\09symbol %s is implied by %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"%s:%d:\09symbol %s %s value contains %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"%s:%d:\09symbol %s %s is visible depending on %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [124 x i8] c"For a resolution refer to Documentation/kbuild/kconfig-language.rst\0Asubsection \22Kconfig recursive dependency limitations\22\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.symbol*)* @sym_check_print_recursive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_check_print_recursive(%struct.symbol* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca %struct.dep_stack*, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca %struct.menu*, align 8
  %7 = alloca %struct.property*, align 8
  %8 = alloca %struct.dep_stack, align 8
  store %struct.symbol* %0, %struct.symbol** %2, align 8
  store %struct.menu* null, %struct.menu** %6, align 8
  %9 = load %struct.symbol*, %struct.symbol** %2, align 8
  %10 = call i64 @sym_is_choice_value(%struct.symbol* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.symbol*, %struct.symbol** %2, align 8
  %14 = call i32 @dep_stack_insert(%struct.dep_stack* %8, %struct.symbol* %13)
  %15 = load %struct.symbol*, %struct.symbol** %2, align 8
  %16 = call i32 @sym_get_choice_prop(%struct.symbol* %15)
  %17 = call %struct.symbol* @prop_get_symbol(i32 %16)
  store %struct.symbol* %17, %struct.symbol** %2, align 8
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.dep_stack*, %struct.dep_stack** @check_top, align 8
  store %struct.dep_stack* %19, %struct.dep_stack** %3, align 8
  br label %20

20:                                               ; preds = %31, %18
  %21 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %22 = icmp ne %struct.dep_stack* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %25 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %24, i32 0, i32 1
  %26 = load %struct.symbol*, %struct.symbol** %25, align 8
  %27 = load %struct.symbol*, %struct.symbol** %2, align 8
  %28 = icmp eq %struct.symbol* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %35

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %33 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %32, i32 0, i32 4
  %34 = load %struct.dep_stack*, %struct.dep_stack** %33, align 8
  store %struct.dep_stack* %34, %struct.dep_stack** %3, align 8
  br label %20

35:                                               ; preds = %29, %20
  %36 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %37 = icmp ne %struct.dep_stack* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %414

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %403, %41
  %43 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %44 = icmp ne %struct.dep_stack* %43, null
  br i1 %44, label %45, label %407

45:                                               ; preds = %42
  %46 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %47 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %46, i32 0, i32 1
  %48 = load %struct.symbol*, %struct.symbol** %47, align 8
  store %struct.symbol* %48, %struct.symbol** %4, align 8
  %49 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %50 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %49, i32 0, i32 3
  %51 = load %struct.dep_stack*, %struct.dep_stack** %50, align 8
  %52 = icmp ne %struct.dep_stack* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %55 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %54, i32 0, i32 3
  %56 = load %struct.dep_stack*, %struct.dep_stack** %55, align 8
  %57 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %56, i32 0, i32 1
  %58 = load %struct.symbol*, %struct.symbol** %57, align 8
  br label %61

59:                                               ; preds = %45
  %60 = load %struct.symbol*, %struct.symbol** %2, align 8
  br label %61

61:                                               ; preds = %59, %53
  %62 = phi %struct.symbol* [ %58, %53 ], [ %60, %59 ]
  store %struct.symbol* %62, %struct.symbol** %5, align 8
  %63 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %64 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %63, i32 0, i32 2
  %65 = load %struct.property*, %struct.property** %64, align 8
  store %struct.property* %65, %struct.property** %7, align 8
  %66 = load %struct.property*, %struct.property** %7, align 8
  %67 = icmp eq %struct.property* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %70 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %69, i32 0, i32 1
  %71 = load %struct.symbol*, %struct.symbol** %70, align 8
  %72 = getelementptr inbounds %struct.symbol, %struct.symbol* %71, i32 0, i32 4
  %73 = load %struct.property*, %struct.property** %72, align 8
  store %struct.property* %73, %struct.property** %7, align 8
  br label %74

74:                                               ; preds = %68, %61
  %75 = load %struct.symbol*, %struct.symbol** %4, align 8
  %76 = call i64 @sym_is_choice(%struct.symbol* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load %struct.symbol*, %struct.symbol** %4, align 8
  %80 = call i64 @sym_is_choice_value(%struct.symbol* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %78, %74
  %83 = load %struct.symbol*, %struct.symbol** %4, align 8
  %84 = getelementptr inbounds %struct.symbol, %struct.symbol* %83, i32 0, i32 4
  %85 = load %struct.property*, %struct.property** %84, align 8
  store %struct.property* %85, %struct.property** %7, align 8
  br label %86

86:                                               ; preds = %99, %82
  %87 = load %struct.property*, %struct.property** %7, align 8
  %88 = icmp ne %struct.property* %87, null
  br i1 %88, label %89, label %103

89:                                               ; preds = %86
  %90 = load %struct.property*, %struct.property** %7, align 8
  %91 = getelementptr inbounds %struct.property, %struct.property* %90, i32 0, i32 3
  %92 = load %struct.menu*, %struct.menu** %91, align 8
  store %struct.menu* %92, %struct.menu** %6, align 8
  %93 = load %struct.property*, %struct.property** %7, align 8
  %94 = getelementptr inbounds %struct.property, %struct.property* %93, i32 0, i32 3
  %95 = load %struct.menu*, %struct.menu** %94, align 8
  %96 = icmp ne %struct.menu* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %103

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.property*, %struct.property** %7, align 8
  %101 = getelementptr inbounds %struct.property, %struct.property* %100, i32 0, i32 4
  %102 = load %struct.property*, %struct.property** %101, align 8
  store %struct.property* %102, %struct.property** %7, align 8
  br label %86

103:                                              ; preds = %97, %86
  br label %104

104:                                              ; preds = %103, %78
  %105 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %106 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %105, i32 0, i32 1
  %107 = load %struct.symbol*, %struct.symbol** %106, align 8
  %108 = load %struct.symbol*, %struct.symbol** %2, align 8
  %109 = icmp eq %struct.symbol* %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %104
  %111 = load i32, i32* @stderr, align 4
  %112 = load %struct.property*, %struct.property** %7, align 8
  %113 = getelementptr inbounds %struct.property, %struct.property* %112, i32 0, i32 2
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.property*, %struct.property** %7, align 8
  %118 = getelementptr inbounds %struct.property, %struct.property* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %116, i32 %119)
  br label %121

121:                                              ; preds = %110, %104
  %122 = load %struct.symbol*, %struct.symbol** %4, align 8
  %123 = call i64 @sym_is_choice(%struct.symbol* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %158

125:                                              ; preds = %121
  %126 = load i32, i32* @stderr, align 4
  %127 = load %struct.menu*, %struct.menu** %6, align 8
  %128 = getelementptr inbounds %struct.menu, %struct.menu* %127, i32 0, i32 1
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.menu*, %struct.menu** %6, align 8
  %133 = getelementptr inbounds %struct.menu, %struct.menu* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.symbol*, %struct.symbol** %4, align 8
  %136 = getelementptr inbounds %struct.symbol, %struct.symbol* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %125
  %140 = load %struct.symbol*, %struct.symbol** %4, align 8
  %141 = getelementptr inbounds %struct.symbol, %struct.symbol* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  br label %144

143:                                              ; preds = %125
  br label %144

144:                                              ; preds = %143, %139
  %145 = phi i8* [ %142, %139 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %143 ]
  %146 = load %struct.symbol*, %struct.symbol** %5, align 8
  %147 = getelementptr inbounds %struct.symbol, %struct.symbol* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load %struct.symbol*, %struct.symbol** %5, align 8
  %152 = getelementptr inbounds %struct.symbol, %struct.symbol* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  br label %155

154:                                              ; preds = %144
  br label %155

155:                                              ; preds = %154, %150
  %156 = phi i8* [ %153, %150 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %154 ]
  %157 = call i32 (i32, i8*, ...) @fprintf(i32 %126, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %131, i32 %134, i8* %145, i8* %156)
  br label %402

158:                                              ; preds = %121
  %159 = load %struct.symbol*, %struct.symbol** %4, align 8
  %160 = call i64 @sym_is_choice_value(%struct.symbol* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %195

162:                                              ; preds = %158
  %163 = load i32, i32* @stderr, align 4
  %164 = load %struct.menu*, %struct.menu** %6, align 8
  %165 = getelementptr inbounds %struct.menu, %struct.menu* %164, i32 0, i32 1
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.menu*, %struct.menu** %6, align 8
  %170 = getelementptr inbounds %struct.menu, %struct.menu* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.symbol*, %struct.symbol** %4, align 8
  %173 = getelementptr inbounds %struct.symbol, %struct.symbol* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %180

176:                                              ; preds = %162
  %177 = load %struct.symbol*, %struct.symbol** %4, align 8
  %178 = getelementptr inbounds %struct.symbol, %struct.symbol* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  br label %181

180:                                              ; preds = %162
  br label %181

181:                                              ; preds = %180, %176
  %182 = phi i8* [ %179, %176 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %180 ]
  %183 = load %struct.symbol*, %struct.symbol** %5, align 8
  %184 = getelementptr inbounds %struct.symbol, %struct.symbol* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %187, label %191

187:                                              ; preds = %181
  %188 = load %struct.symbol*, %struct.symbol** %5, align 8
  %189 = getelementptr inbounds %struct.symbol, %struct.symbol* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  br label %192

191:                                              ; preds = %181
  br label %192

192:                                              ; preds = %191, %187
  %193 = phi i8* [ %190, %187 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %191 ]
  %194 = call i32 (i32, i8*, ...) @fprintf(i32 %163, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %168, i32 %171, i8* %182, i8* %193)
  br label %401

195:                                              ; preds = %158
  %196 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %197 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = load %struct.symbol*, %struct.symbol** %4, align 8
  %200 = getelementptr inbounds %struct.symbol, %struct.symbol* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = icmp eq i32* %198, %201
  br i1 %202, label %203, label %236

203:                                              ; preds = %195
  %204 = load i32, i32* @stderr, align 4
  %205 = load %struct.property*, %struct.property** %7, align 8
  %206 = getelementptr inbounds %struct.property, %struct.property* %205, i32 0, i32 2
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = load %struct.property*, %struct.property** %7, align 8
  %211 = getelementptr inbounds %struct.property, %struct.property* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.symbol*, %struct.symbol** %4, align 8
  %214 = getelementptr inbounds %struct.symbol, %struct.symbol* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %221

217:                                              ; preds = %203
  %218 = load %struct.symbol*, %struct.symbol** %4, align 8
  %219 = getelementptr inbounds %struct.symbol, %struct.symbol* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  br label %222

221:                                              ; preds = %203
  br label %222

222:                                              ; preds = %221, %217
  %223 = phi i8* [ %220, %217 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %221 ]
  %224 = load %struct.symbol*, %struct.symbol** %5, align 8
  %225 = getelementptr inbounds %struct.symbol, %struct.symbol* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %228, label %232

228:                                              ; preds = %222
  %229 = load %struct.symbol*, %struct.symbol** %5, align 8
  %230 = getelementptr inbounds %struct.symbol, %struct.symbol* %229, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  br label %233

232:                                              ; preds = %222
  br label %233

233:                                              ; preds = %232, %228
  %234 = phi i8* [ %231, %228 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %232 ]
  %235 = call i32 (i32, i8*, ...) @fprintf(i32 %204, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %209, i32 %212, i8* %223, i8* %234)
  br label %400

236:                                              ; preds = %195
  %237 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %238 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = load %struct.symbol*, %struct.symbol** %4, align 8
  %241 = getelementptr inbounds %struct.symbol, %struct.symbol* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = icmp eq i32* %239, %242
  br i1 %243, label %244, label %277

244:                                              ; preds = %236
  %245 = load i32, i32* @stderr, align 4
  %246 = load %struct.property*, %struct.property** %7, align 8
  %247 = getelementptr inbounds %struct.property, %struct.property* %246, i32 0, i32 2
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = load %struct.property*, %struct.property** %7, align 8
  %252 = getelementptr inbounds %struct.property, %struct.property* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.symbol*, %struct.symbol** %4, align 8
  %255 = getelementptr inbounds %struct.symbol, %struct.symbol* %254, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  %257 = icmp ne i8* %256, null
  br i1 %257, label %258, label %262

258:                                              ; preds = %244
  %259 = load %struct.symbol*, %struct.symbol** %4, align 8
  %260 = getelementptr inbounds %struct.symbol, %struct.symbol* %259, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8
  br label %263

262:                                              ; preds = %244
  br label %263

263:                                              ; preds = %262, %258
  %264 = phi i8* [ %261, %258 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %262 ]
  %265 = load %struct.symbol*, %struct.symbol** %5, align 8
  %266 = getelementptr inbounds %struct.symbol, %struct.symbol* %265, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %269, label %273

269:                                              ; preds = %263
  %270 = load %struct.symbol*, %struct.symbol** %5, align 8
  %271 = getelementptr inbounds %struct.symbol, %struct.symbol* %270, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  br label %274

273:                                              ; preds = %263
  br label %274

274:                                              ; preds = %273, %269
  %275 = phi i8* [ %272, %269 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %273 ]
  %276 = call i32 (i32, i8*, ...) @fprintf(i32 %245, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %250, i32 %253, i8* %264, i8* %275)
  br label %399

277:                                              ; preds = %236
  %278 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %279 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = load %struct.symbol*, %struct.symbol** %4, align 8
  %282 = getelementptr inbounds %struct.symbol, %struct.symbol* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 0
  %284 = icmp eq i32* %280, %283
  br i1 %284, label %285, label %318

285:                                              ; preds = %277
  %286 = load i32, i32* @stderr, align 4
  %287 = load %struct.property*, %struct.property** %7, align 8
  %288 = getelementptr inbounds %struct.property, %struct.property* %287, i32 0, i32 2
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 0
  %291 = load i8*, i8** %290, align 8
  %292 = load %struct.property*, %struct.property** %7, align 8
  %293 = getelementptr inbounds %struct.property, %struct.property* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.symbol*, %struct.symbol** %4, align 8
  %296 = getelementptr inbounds %struct.symbol, %struct.symbol* %295, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8
  %298 = icmp ne i8* %297, null
  br i1 %298, label %299, label %303

299:                                              ; preds = %285
  %300 = load %struct.symbol*, %struct.symbol** %4, align 8
  %301 = getelementptr inbounds %struct.symbol, %struct.symbol* %300, i32 0, i32 0
  %302 = load i8*, i8** %301, align 8
  br label %304

303:                                              ; preds = %285
  br label %304

304:                                              ; preds = %303, %299
  %305 = phi i8* [ %302, %299 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %303 ]
  %306 = load %struct.symbol*, %struct.symbol** %5, align 8
  %307 = getelementptr inbounds %struct.symbol, %struct.symbol* %306, i32 0, i32 0
  %308 = load i8*, i8** %307, align 8
  %309 = icmp ne i8* %308, null
  br i1 %309, label %310, label %314

310:                                              ; preds = %304
  %311 = load %struct.symbol*, %struct.symbol** %5, align 8
  %312 = getelementptr inbounds %struct.symbol, %struct.symbol* %311, i32 0, i32 0
  %313 = load i8*, i8** %312, align 8
  br label %315

314:                                              ; preds = %304
  br label %315

315:                                              ; preds = %314, %310
  %316 = phi i8* [ %313, %310 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %314 ]
  %317 = call i32 (i32, i8*, ...) @fprintf(i32 %286, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* %291, i32 %294, i8* %305, i8* %316)
  br label %398

318:                                              ; preds = %277
  %319 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %320 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %319, i32 0, i32 0
  %321 = load i32*, i32** %320, align 8
  %322 = icmp ne i32* %321, null
  br i1 %322, label %323, label %360

323:                                              ; preds = %318
  %324 = load i32, i32* @stderr, align 4
  %325 = load %struct.property*, %struct.property** %7, align 8
  %326 = getelementptr inbounds %struct.property, %struct.property* %325, i32 0, i32 2
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 0
  %329 = load i8*, i8** %328, align 8
  %330 = load %struct.property*, %struct.property** %7, align 8
  %331 = getelementptr inbounds %struct.property, %struct.property* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.symbol*, %struct.symbol** %4, align 8
  %334 = getelementptr inbounds %struct.symbol, %struct.symbol* %333, i32 0, i32 0
  %335 = load i8*, i8** %334, align 8
  %336 = icmp ne i8* %335, null
  br i1 %336, label %337, label %341

337:                                              ; preds = %323
  %338 = load %struct.symbol*, %struct.symbol** %4, align 8
  %339 = getelementptr inbounds %struct.symbol, %struct.symbol* %338, i32 0, i32 0
  %340 = load i8*, i8** %339, align 8
  br label %342

341:                                              ; preds = %323
  br label %342

342:                                              ; preds = %341, %337
  %343 = phi i8* [ %340, %337 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %341 ]
  %344 = load %struct.property*, %struct.property** %7, align 8
  %345 = getelementptr inbounds %struct.property, %struct.property* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = call i8* @prop_get_type_name(i32 %346)
  %348 = load %struct.symbol*, %struct.symbol** %5, align 8
  %349 = getelementptr inbounds %struct.symbol, %struct.symbol* %348, i32 0, i32 0
  %350 = load i8*, i8** %349, align 8
  %351 = icmp ne i8* %350, null
  br i1 %351, label %352, label %356

352:                                              ; preds = %342
  %353 = load %struct.symbol*, %struct.symbol** %5, align 8
  %354 = getelementptr inbounds %struct.symbol, %struct.symbol* %353, i32 0, i32 0
  %355 = load i8*, i8** %354, align 8
  br label %357

356:                                              ; preds = %342
  br label %357

357:                                              ; preds = %356, %352
  %358 = phi i8* [ %355, %352 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %356 ]
  %359 = call i32 (i32, i8*, ...) @fprintf(i32 %324, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i8* %329, i32 %332, i8* %343, i8* %347, i8* %358)
  br label %397

360:                                              ; preds = %318
  %361 = load i32, i32* @stderr, align 4
  %362 = load %struct.property*, %struct.property** %7, align 8
  %363 = getelementptr inbounds %struct.property, %struct.property* %362, i32 0, i32 2
  %364 = load %struct.TYPE_9__*, %struct.TYPE_9__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %364, i32 0, i32 0
  %366 = load i8*, i8** %365, align 8
  %367 = load %struct.property*, %struct.property** %7, align 8
  %368 = getelementptr inbounds %struct.property, %struct.property* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.symbol*, %struct.symbol** %4, align 8
  %371 = getelementptr inbounds %struct.symbol, %struct.symbol* %370, i32 0, i32 0
  %372 = load i8*, i8** %371, align 8
  %373 = icmp ne i8* %372, null
  br i1 %373, label %374, label %378

374:                                              ; preds = %360
  %375 = load %struct.symbol*, %struct.symbol** %4, align 8
  %376 = getelementptr inbounds %struct.symbol, %struct.symbol* %375, i32 0, i32 0
  %377 = load i8*, i8** %376, align 8
  br label %379

378:                                              ; preds = %360
  br label %379

379:                                              ; preds = %378, %374
  %380 = phi i8* [ %377, %374 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %378 ]
  %381 = load %struct.property*, %struct.property** %7, align 8
  %382 = getelementptr inbounds %struct.property, %struct.property* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = call i8* @prop_get_type_name(i32 %383)
  %385 = load %struct.symbol*, %struct.symbol** %5, align 8
  %386 = getelementptr inbounds %struct.symbol, %struct.symbol* %385, i32 0, i32 0
  %387 = load i8*, i8** %386, align 8
  %388 = icmp ne i8* %387, null
  br i1 %388, label %389, label %393

389:                                              ; preds = %379
  %390 = load %struct.symbol*, %struct.symbol** %5, align 8
  %391 = getelementptr inbounds %struct.symbol, %struct.symbol* %390, i32 0, i32 0
  %392 = load i8*, i8** %391, align 8
  br label %394

393:                                              ; preds = %379
  br label %394

394:                                              ; preds = %393, %389
  %395 = phi i8* [ %392, %389 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %393 ]
  %396 = call i32 (i32, i8*, ...) @fprintf(i32 %361, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i8* %366, i32 %369, i8* %380, i8* %384, i8* %395)
  br label %397

397:                                              ; preds = %394, %357
  br label %398

398:                                              ; preds = %397, %315
  br label %399

399:                                              ; preds = %398, %274
  br label %400

400:                                              ; preds = %399, %233
  br label %401

401:                                              ; preds = %400, %192
  br label %402

402:                                              ; preds = %401, %155
  br label %403

403:                                              ; preds = %402
  %404 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %405 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %404, i32 0, i32 3
  %406 = load %struct.dep_stack*, %struct.dep_stack** %405, align 8
  store %struct.dep_stack* %406, %struct.dep_stack** %3, align 8
  br label %42

407:                                              ; preds = %42
  %408 = load i32, i32* @stderr, align 4
  %409 = call i32 (i32, i8*, ...) @fprintf(i32 %408, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.10, i64 0, i64 0))
  %410 = load %struct.dep_stack*, %struct.dep_stack** @check_top, align 8
  %411 = icmp eq %struct.dep_stack* %410, %8
  br i1 %411, label %412, label %414

412:                                              ; preds = %407
  %413 = call i32 (...) @dep_stack_remove()
  br label %414

414:                                              ; preds = %38, %412, %407
  ret void
}

declare dso_local i64 @sym_is_choice_value(%struct.symbol*) #1

declare dso_local i32 @dep_stack_insert(%struct.dep_stack*, %struct.symbol*) #1

declare dso_local %struct.symbol* @prop_get_symbol(i32) #1

declare dso_local i32 @sym_get_choice_prop(%struct.symbol*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @sym_is_choice(%struct.symbol*) #1

declare dso_local i8* @prop_get_type_name(i32) #1

declare dso_local i32 @dep_stack_remove(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
