; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_asn1_compiler.c_render_element.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_asn1_compiler.c_render_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.element = type { i32, i32, i64, i64, i32, i32, %struct.TYPE_10__*, %struct.element*, %struct.element*, %struct.element*, %struct.TYPE_12__*, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.element* }
%struct.TYPE_7__ = type { i32 }

@ELEMENT_SKIPPABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"\09// %s\0A\00", align 1
@ELEMENT_CONDITIONAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"COND_\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_ACT\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"ASN1_OP_%sMATCH_ANY%s%s,\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"_OR_SKIP\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\09\09// %s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"ASN1_OP_%sMATCH%s%s,\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"_JUMP\00", align 1
@ASN1_UNIV = common dso_local global i64 0, align 8
@ASN1_PRIM = common dso_local global i64 0, align 8
@ELEMENT_TAG_SPECIFIED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"_tag(%s, %s, %s),\0A\00", align 1
@asn1_classes = common dso_local global i32* null, align 8
@asn1_methods = common dso_local global i32* null, align 8
@asn1_universal_tags = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [21 x i8] c"_tagn(%s, %s, %2u),\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"ASN1_OP_%sACT,\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"MAYBE_\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"_jump_target(%u),\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"\09\09// --> %s\00", align 1
@ELEMENT_RENDERED = common dso_local global i32 0, align 4
@render_list_p = common dso_local global %struct.element** null, align 8
@render_depth = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [20 x i8] c"ASN1_OP_END_SEQ%s,\0A\00", align 1
@nr_entries = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [23 x i8] c"ASN1_OP_END_SEQ_OF%s,\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"ASN1_OP_END_SET_OF%s,\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"_jump_target(%u),\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [48 x i8] c"The ASN.1 SET type is not currently supported.\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"ASN1_OP_COND_FAIL,\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"ASN1_OP_ACT,\0A\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"_action(ACT_%s),\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.element*, %struct.element*)* @render_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_element(i32* %0, %struct.element* %1, %struct.element* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.element*, align 8
  %6 = alloca %struct.element*, align 8
  %7 = alloca %struct.element*, align 8
  %8 = alloca %struct.element*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.element* %1, %struct.element** %5, align 8
  store %struct.element* %2, %struct.element** %6, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.element*, %struct.element** %5, align 8
  %15 = getelementptr inbounds %struct.element, %struct.element* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ELEMENT_SKIPPABLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %3
  %21 = load %struct.element*, %struct.element** %6, align 8
  %22 = icmp ne %struct.element* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.element*, %struct.element** %6, align 8
  %25 = getelementptr inbounds %struct.element, %struct.element* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ELEMENT_SKIPPABLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %3
  store i32 1, i32* %12, align 4
  br label %31

31:                                               ; preds = %30, %23, %20
  %32 = load %struct.element*, %struct.element** %5, align 8
  %33 = getelementptr inbounds %struct.element, %struct.element* %32, i32 0, i32 10
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = icmp ne %struct.TYPE_12__* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.element*, %struct.element** %5, align 8
  %38 = getelementptr inbounds %struct.element, %struct.element* %37, i32 0, i32 10
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %46, label %43

43:                                               ; preds = %36, %31
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %36
  store i32 1, i32* %13, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load %struct.element*, %struct.element** %5, align 8
  %49 = getelementptr inbounds %struct.element, %struct.element* %48, i32 0, i32 10
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = icmp ne %struct.TYPE_12__* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load i32*, i32** %4, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.element*, %struct.element** %5, align 8
  %58 = getelementptr inbounds %struct.element, %struct.element* %57, i32 0, i32 10
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32*, i8*, ...) @render_more(i32* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %55, %52, %47
  %66 = load %struct.element*, %struct.element** %5, align 8
  %67 = getelementptr inbounds %struct.element, %struct.element* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ELEMENT_CONDITIONAL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %65
  %73 = load %struct.element*, %struct.element** %6, align 8
  %74 = icmp ne %struct.element* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.element*, %struct.element** %6, align 8
  %77 = getelementptr inbounds %struct.element, %struct.element* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @ELEMENT_CONDITIONAL, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br label %82

82:                                               ; preds = %75, %72
  %83 = phi i1 [ false, %72 ], [ %81, %75 ]
  br label %84

84:                                               ; preds = %82, %65
  %85 = phi i1 [ true, %65 ], [ %83, %82 ]
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  store i8* %87, i8** %9, align 8
  %88 = load %struct.element*, %struct.element** %5, align 8
  %89 = getelementptr inbounds %struct.element, %struct.element* %88, i32 0, i32 6
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = icmp ne %struct.TYPE_10__* %90, null
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  store i8* %93, i8** %10, align 8
  %94 = load %struct.element*, %struct.element** %5, align 8
  %95 = getelementptr inbounds %struct.element, %struct.element* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %159 [
    i32 135, label %97
    i32 129, label %121
    i32 133, label %127
    i32 132, label %127
    i32 131, label %127
    i32 130, label %127
    i32 134, label %139
    i32 128, label %140
  ]

97:                                               ; preds = %84
  %98 = load i32*, i32** %4, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %105 = call i32 (i32*, i8*, ...) @render_opcode(i32* %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %99, i8* %100, i8* %104)
  %106 = load %struct.element*, %struct.element** %5, align 8
  %107 = getelementptr inbounds %struct.element, %struct.element* %106, i32 0, i32 12
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = icmp ne %struct.TYPE_7__* %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %97
  %111 = load i32*, i32** %4, align 8
  %112 = load %struct.element*, %struct.element** %5, align 8
  %113 = getelementptr inbounds %struct.element, %struct.element* %112, i32 0, i32 12
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32*, i8*, ...) @render_more(i32* %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %110, %97
  %119 = load i32*, i32** %4, align 8
  %120 = call i32 (i32*, i8*, ...) @render_more(i32* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %272

121:                                              ; preds = %84
  %122 = load i32*, i32** %4, align 8
  %123 = load %struct.element*, %struct.element** %5, align 8
  %124 = getelementptr inbounds %struct.element, %struct.element* %123, i32 0, i32 8
  %125 = load %struct.element*, %struct.element** %124, align 8
  %126 = load %struct.element*, %struct.element** %5, align 8
  call void @render_element(i32* %122, %struct.element* %125, %struct.element* %126)
  br label %496

127:                                              ; preds = %84, %84, %84, %84
  %128 = load i32*, i32** %4, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %138 = call i32 (i32*, i8*, ...) @render_opcode(i32* %128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %129, i8* %133, i8* %137)
  br label %168

139:                                              ; preds = %84
  br label %272

140:                                              ; preds = %84
  %141 = load %struct.element*, %struct.element** %5, align 8
  %142 = getelementptr inbounds %struct.element, %struct.element* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @ASN1_UNIV, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %158

146:                                              ; preds = %140
  %147 = load %struct.element*, %struct.element** %5, align 8
  %148 = getelementptr inbounds %struct.element, %struct.element* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @ASN1_PRIM, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %146
  %153 = load %struct.element*, %struct.element** %5, align 8
  %154 = getelementptr inbounds %struct.element, %struct.element* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %272

158:                                              ; preds = %152, %146, %140
  br label %159

159:                                              ; preds = %84, %158
  %160 = load i32*, i32** %4, align 8
  %161 = load i8*, i8** %9, align 8
  %162 = load i8*, i8** %10, align 8
  %163 = load i32, i32* %12, align 4
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %167 = call i32 (i32*, i8*, ...) @render_opcode(i32* %160, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %161, i8* %162, i8* %166)
  br label %168

168:                                              ; preds = %159, %127
  %169 = load %struct.element*, %struct.element** %6, align 8
  %170 = icmp ne %struct.element* %169, null
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  br label %174

172:                                              ; preds = %168
  %173 = load %struct.element*, %struct.element** %5, align 8
  br label %174

174:                                              ; preds = %172, %171
  %175 = phi %struct.element* [ %169, %171 ], [ %173, %172 ]
  store %struct.element* %175, %struct.element** %8, align 8
  %176 = load %struct.element*, %struct.element** %8, align 8
  %177 = getelementptr inbounds %struct.element, %struct.element* %176, i32 0, i32 12
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = icmp ne %struct.TYPE_7__* %178, null
  br i1 %179, label %180, label %188

180:                                              ; preds = %174
  %181 = load i32*, i32** %4, align 8
  %182 = load %struct.element*, %struct.element** %8, align 8
  %183 = getelementptr inbounds %struct.element, %struct.element* %182, i32 0, i32 12
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (i32*, i8*, ...) @render_more(i32* %181, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %186)
  br label %188

188:                                              ; preds = %180, %174
  %189 = load i32*, i32** %4, align 8
  %190 = call i32 (i32*, i8*, ...) @render_more(i32* %189, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %191 = load %struct.element*, %struct.element** %6, align 8
  %192 = icmp ne %struct.element* %191, null
  br i1 %192, label %193, label %200

193:                                              ; preds = %188
  %194 = load %struct.element*, %struct.element** %6, align 8
  %195 = getelementptr inbounds %struct.element, %struct.element* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @ELEMENT_TAG_SPECIFIED, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %193, %188
  %201 = load %struct.element*, %struct.element** %5, align 8
  store %struct.element* %201, %struct.element** %6, align 8
  br label %202

202:                                              ; preds = %200, %193
  %203 = load %struct.element*, %struct.element** %6, align 8
  %204 = getelementptr inbounds %struct.element, %struct.element* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @ASN1_UNIV, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %249

208:                                              ; preds = %202
  %209 = load %struct.element*, %struct.element** %6, align 8
  %210 = getelementptr inbounds %struct.element, %struct.element* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 14
  br i1 %212, label %213, label %249

213:                                              ; preds = %208
  %214 = load %struct.element*, %struct.element** %6, align 8
  %215 = getelementptr inbounds %struct.element, %struct.element* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 15
  br i1 %217, label %218, label %249

218:                                              ; preds = %213
  %219 = load %struct.element*, %struct.element** %6, align 8
  %220 = getelementptr inbounds %struct.element, %struct.element* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 31
  br i1 %222, label %223, label %249

223:                                              ; preds = %218
  %224 = load i32*, i32** %4, align 8
  %225 = load i32*, i32** @asn1_classes, align 8
  %226 = load %struct.element*, %struct.element** %6, align 8
  %227 = getelementptr inbounds %struct.element, %struct.element* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds i32, i32* %225, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** @asn1_methods, align 8
  %232 = load %struct.element*, %struct.element** %6, align 8
  %233 = getelementptr inbounds %struct.element, %struct.element* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.element*, %struct.element** %5, align 8
  %236 = getelementptr inbounds %struct.element, %struct.element* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = or i64 %234, %237
  %239 = getelementptr inbounds i32, i32* %231, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load i32*, i32** @asn1_universal_tags, align 8
  %242 = load %struct.element*, %struct.element** %6, align 8
  %243 = getelementptr inbounds %struct.element, %struct.element* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %241, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = call i32 (i32*, i8*, ...) @render_opcode(i32* %224, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %230, i32 %240, i32 %247)
  br label %271

249:                                              ; preds = %218, %213, %208, %202
  %250 = load i32*, i32** %4, align 8
  %251 = load i32*, i32** @asn1_classes, align 8
  %252 = load %struct.element*, %struct.element** %6, align 8
  %253 = getelementptr inbounds %struct.element, %struct.element* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = getelementptr inbounds i32, i32* %251, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load i32*, i32** @asn1_methods, align 8
  %258 = load %struct.element*, %struct.element** %6, align 8
  %259 = getelementptr inbounds %struct.element, %struct.element* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.element*, %struct.element** %5, align 8
  %262 = getelementptr inbounds %struct.element, %struct.element* %261, i32 0, i32 3
  %263 = load i64, i64* %262, align 8
  %264 = or i64 %260, %263
  %265 = getelementptr inbounds i32, i32* %257, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.element*, %struct.element** %6, align 8
  %268 = getelementptr inbounds %struct.element, %struct.element* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = call i32 (i32*, i8*, ...) @render_opcode(i32* %250, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %256, i32 %266, i32 %269)
  br label %271

271:                                              ; preds = %249, %223
  store %struct.element* null, %struct.element** %6, align 8
  br label %272

272:                                              ; preds = %271, %157, %139, %118
  %273 = load %struct.element*, %struct.element** %5, align 8
  %274 = getelementptr inbounds %struct.element, %struct.element* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  switch i32 %275, label %482 [
    i32 128, label %276
    i32 133, label %298
    i32 132, label %371
    i32 130, label %371
    i32 131, label %448
    i32 134, label %452
  ]

276:                                              ; preds = %272
  %277 = load i32*, i32** %4, align 8
  %278 = load %struct.element*, %struct.element** %5, align 8
  %279 = getelementptr inbounds %struct.element, %struct.element* %278, i32 0, i32 11
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 0
  %284 = load %struct.element*, %struct.element** %283, align 8
  %285 = load %struct.element*, %struct.element** %6, align 8
  call void @render_element(i32* %277, %struct.element* %284, %struct.element* %285)
  %286 = load %struct.element*, %struct.element** %5, align 8
  %287 = getelementptr inbounds %struct.element, %struct.element* %286, i32 0, i32 6
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %287, align 8
  %289 = icmp ne %struct.TYPE_10__* %288, null
  br i1 %289, label %290, label %297

290:                                              ; preds = %276
  %291 = load i32*, i32** %4, align 8
  %292 = load i32, i32* %12, align 4
  %293 = icmp ne i32 %292, 0
  %294 = zext i1 %293 to i64
  %295 = select i1 %293, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %296 = call i32 (i32*, i8*, ...) @render_opcode(i32* %291, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* %295)
  br label %297

297:                                              ; preds = %290, %276
  br label %483

298:                                              ; preds = %272
  %299 = load i32, i32* %13, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %348

301:                                              ; preds = %298
  %302 = load i32*, i32** %4, align 8
  %303 = load %struct.element*, %struct.element** %5, align 8
  %304 = getelementptr inbounds %struct.element, %struct.element* %303, i32 0, i32 5
  %305 = load i32, i32* %304, align 4
  %306 = call i32 (i32*, i8*, ...) @render_opcode(i32* %302, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %305)
  %307 = load %struct.element*, %struct.element** %5, align 8
  %308 = getelementptr inbounds %struct.element, %struct.element* %307, i32 0, i32 10
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** %308, align 8
  %310 = icmp ne %struct.TYPE_12__* %309, null
  br i1 %310, label %311, label %328

311:                                              ; preds = %301
  %312 = load %struct.element*, %struct.element** %5, align 8
  %313 = getelementptr inbounds %struct.element, %struct.element* %312, i32 0, i32 10
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 1
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %315, align 8
  %317 = icmp ne %struct.TYPE_11__* %316, null
  br i1 %317, label %318, label %328

318:                                              ; preds = %311
  %319 = load i32*, i32** %4, align 8
  %320 = load %struct.element*, %struct.element** %5, align 8
  %321 = getelementptr inbounds %struct.element, %struct.element* %320, i32 0, i32 10
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 1
  %324 = load %struct.TYPE_11__*, %struct.TYPE_11__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = call i32 (i32*, i8*, ...) @render_more(i32* %319, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 %326)
  br label %328

328:                                              ; preds = %318, %311, %301
  %329 = load i32*, i32** %4, align 8
  %330 = call i32 (i32*, i8*, ...) @render_more(i32* %329, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %331 = load %struct.element*, %struct.element** %5, align 8
  %332 = getelementptr inbounds %struct.element, %struct.element* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @ELEMENT_RENDERED, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %347, label %337

337:                                              ; preds = %328
  %338 = load i32, i32* @ELEMENT_RENDERED, align 4
  %339 = load %struct.element*, %struct.element** %5, align 8
  %340 = getelementptr inbounds %struct.element, %struct.element* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = or i32 %341, %338
  store i32 %342, i32* %340, align 8
  %343 = load %struct.element*, %struct.element** %5, align 8
  %344 = load %struct.element**, %struct.element*** @render_list_p, align 8
  store %struct.element* %343, %struct.element** %344, align 8
  %345 = load %struct.element*, %struct.element** %5, align 8
  %346 = getelementptr inbounds %struct.element, %struct.element* %345, i32 0, i32 9
  store %struct.element** %346, %struct.element*** @render_list_p, align 8
  br label %347

347:                                              ; preds = %337, %328
  br label %496

348:                                              ; preds = %298
  %349 = load i32, i32* @render_depth, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* @render_depth, align 4
  %351 = load %struct.element*, %struct.element** %5, align 8
  %352 = getelementptr inbounds %struct.element, %struct.element* %351, i32 0, i32 8
  %353 = load %struct.element*, %struct.element** %352, align 8
  store %struct.element* %353, %struct.element** %7, align 8
  br label %354

354:                                              ; preds = %360, %348
  %355 = load %struct.element*, %struct.element** %7, align 8
  %356 = icmp ne %struct.element* %355, null
  br i1 %356, label %357, label %364

357:                                              ; preds = %354
  %358 = load i32*, i32** %4, align 8
  %359 = load %struct.element*, %struct.element** %7, align 8
  call void @render_element(i32* %358, %struct.element* %359, %struct.element* null)
  br label %360

360:                                              ; preds = %357
  %361 = load %struct.element*, %struct.element** %7, align 8
  %362 = getelementptr inbounds %struct.element, %struct.element* %361, i32 0, i32 7
  %363 = load %struct.element*, %struct.element** %362, align 8
  store %struct.element* %363, %struct.element** %7, align 8
  br label %354

364:                                              ; preds = %354
  %365 = load i32, i32* @render_depth, align 4
  %366 = add nsw i32 %365, -1
  store i32 %366, i32* @render_depth, align 4
  %367 = load i32*, i32** %4, align 8
  %368 = load i8*, i8** %10, align 8
  %369 = call i32 (i32*, i8*, ...) @render_opcode(i32* %367, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8* %368)
  br label %370

370:                                              ; preds = %364
  br label %483

371:                                              ; preds = %272, %272
  %372 = load i32, i32* %13, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %421

374:                                              ; preds = %371
  %375 = load i32*, i32** %4, align 8
  %376 = load %struct.element*, %struct.element** %5, align 8
  %377 = getelementptr inbounds %struct.element, %struct.element* %376, i32 0, i32 5
  %378 = load i32, i32* %377, align 4
  %379 = call i32 (i32*, i8*, ...) @render_opcode(i32* %375, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %378)
  %380 = load %struct.element*, %struct.element** %5, align 8
  %381 = getelementptr inbounds %struct.element, %struct.element* %380, i32 0, i32 10
  %382 = load %struct.TYPE_12__*, %struct.TYPE_12__** %381, align 8
  %383 = icmp ne %struct.TYPE_12__* %382, null
  br i1 %383, label %384, label %401

384:                                              ; preds = %374
  %385 = load %struct.element*, %struct.element** %5, align 8
  %386 = getelementptr inbounds %struct.element, %struct.element* %385, i32 0, i32 10
  %387 = load %struct.TYPE_12__*, %struct.TYPE_12__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %387, i32 0, i32 1
  %389 = load %struct.TYPE_11__*, %struct.TYPE_11__** %388, align 8
  %390 = icmp ne %struct.TYPE_11__* %389, null
  br i1 %390, label %391, label %401

391:                                              ; preds = %384
  %392 = load i32*, i32** %4, align 8
  %393 = load %struct.element*, %struct.element** %5, align 8
  %394 = getelementptr inbounds %struct.element, %struct.element* %393, i32 0, i32 10
  %395 = load %struct.TYPE_12__*, %struct.TYPE_12__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %395, i32 0, i32 1
  %397 = load %struct.TYPE_11__*, %struct.TYPE_11__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 4
  %400 = call i32 (i32*, i8*, ...) @render_more(i32* %392, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 %399)
  br label %401

401:                                              ; preds = %391, %384, %374
  %402 = load i32*, i32** %4, align 8
  %403 = call i32 (i32*, i8*, ...) @render_more(i32* %402, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %404 = load %struct.element*, %struct.element** %5, align 8
  %405 = getelementptr inbounds %struct.element, %struct.element* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = load i32, i32* @ELEMENT_RENDERED, align 4
  %408 = and i32 %406, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %420, label %410

410:                                              ; preds = %401
  %411 = load i32, i32* @ELEMENT_RENDERED, align 4
  %412 = load %struct.element*, %struct.element** %5, align 8
  %413 = getelementptr inbounds %struct.element, %struct.element* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = or i32 %414, %411
  store i32 %415, i32* %413, align 8
  %416 = load %struct.element*, %struct.element** %5, align 8
  %417 = load %struct.element**, %struct.element*** @render_list_p, align 8
  store %struct.element* %416, %struct.element** %417, align 8
  %418 = load %struct.element*, %struct.element** %5, align 8
  %419 = getelementptr inbounds %struct.element, %struct.element* %418, i32 0, i32 9
  store %struct.element** %419, %struct.element*** @render_list_p, align 8
  br label %420

420:                                              ; preds = %410, %401
  br label %496

421:                                              ; preds = %371
  %422 = load i32, i32* @nr_entries, align 4
  store i32 %422, i32* %11, align 4
  %423 = load i32, i32* @render_depth, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* @render_depth, align 4
  %425 = load i32*, i32** %4, align 8
  %426 = load %struct.element*, %struct.element** %5, align 8
  %427 = getelementptr inbounds %struct.element, %struct.element* %426, i32 0, i32 8
  %428 = load %struct.element*, %struct.element** %427, align 8
  call void @render_element(i32* %425, %struct.element* %428, %struct.element* null)
  %429 = load i32, i32* @render_depth, align 4
  %430 = add nsw i32 %429, -1
  store i32 %430, i32* @render_depth, align 4
  %431 = load %struct.element*, %struct.element** %5, align 8
  %432 = getelementptr inbounds %struct.element, %struct.element* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = icmp eq i32 %433, 132
  br i1 %434, label %435, label %439

435:                                              ; preds = %421
  %436 = load i32*, i32** %4, align 8
  %437 = load i8*, i8** %10, align 8
  %438 = call i32 (i32*, i8*, ...) @render_opcode(i32* %436, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i8* %437)
  br label %443

439:                                              ; preds = %421
  %440 = load i32*, i32** %4, align 8
  %441 = load i8*, i8** %10, align 8
  %442 = call i32 (i32*, i8*, ...) @render_opcode(i32* %440, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i8* %441)
  br label %443

443:                                              ; preds = %439, %435
  %444 = load i32*, i32** %4, align 8
  %445 = load i32, i32* %11, align 4
  %446 = call i32 (i32*, i8*, ...) @render_opcode(i32* %444, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i32 %445)
  br label %447

447:                                              ; preds = %443
  br label %483

448:                                              ; preds = %272
  %449 = load i32, i32* @stderr, align 4
  %450 = call i32 @fprintf(i32 %449, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.20, i64 0, i64 0))
  %451 = call i32 @exit(i32 1) #3
  unreachable

452:                                              ; preds = %272
  %453 = load %struct.element*, %struct.element** %5, align 8
  %454 = getelementptr inbounds %struct.element, %struct.element* %453, i32 0, i32 8
  %455 = load %struct.element*, %struct.element** %454, align 8
  store %struct.element* %455, %struct.element** %7, align 8
  br label %456

456:                                              ; preds = %463, %452
  %457 = load %struct.element*, %struct.element** %7, align 8
  %458 = icmp ne %struct.element* %457, null
  br i1 %458, label %459, label %467

459:                                              ; preds = %456
  %460 = load i32*, i32** %4, align 8
  %461 = load %struct.element*, %struct.element** %7, align 8
  %462 = load %struct.element*, %struct.element** %7, align 8
  call void @render_element(i32* %460, %struct.element* %461, %struct.element* %462)
  br label %463

463:                                              ; preds = %459
  %464 = load %struct.element*, %struct.element** %7, align 8
  %465 = getelementptr inbounds %struct.element, %struct.element* %464, i32 0, i32 7
  %466 = load %struct.element*, %struct.element** %465, align 8
  store %struct.element* %466, %struct.element** %7, align 8
  br label %456

467:                                              ; preds = %456
  %468 = load i32, i32* %12, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %473, label %470

470:                                              ; preds = %467
  %471 = load i32*, i32** %4, align 8
  %472 = call i32 (i32*, i8*, ...) @render_opcode(i32* %471, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0))
  br label %473

473:                                              ; preds = %470, %467
  %474 = load %struct.element*, %struct.element** %5, align 8
  %475 = getelementptr inbounds %struct.element, %struct.element* %474, i32 0, i32 6
  %476 = load %struct.TYPE_10__*, %struct.TYPE_10__** %475, align 8
  %477 = icmp ne %struct.TYPE_10__* %476, null
  br i1 %477, label %478, label %481

478:                                              ; preds = %473
  %479 = load i32*, i32** %4, align 8
  %480 = call i32 (i32*, i8*, ...) @render_opcode(i32* %479, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  br label %481

481:                                              ; preds = %478, %473
  br label %483

482:                                              ; preds = %272
  br label %483

483:                                              ; preds = %482, %481, %447, %370, %297
  %484 = load %struct.element*, %struct.element** %5, align 8
  %485 = getelementptr inbounds %struct.element, %struct.element* %484, i32 0, i32 6
  %486 = load %struct.TYPE_10__*, %struct.TYPE_10__** %485, align 8
  %487 = icmp ne %struct.TYPE_10__* %486, null
  br i1 %487, label %488, label %496

488:                                              ; preds = %483
  %489 = load i32*, i32** %4, align 8
  %490 = load %struct.element*, %struct.element** %5, align 8
  %491 = getelementptr inbounds %struct.element, %struct.element* %490, i32 0, i32 6
  %492 = load %struct.TYPE_10__*, %struct.TYPE_10__** %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 4
  %495 = call i32 (i32*, i8*, ...) @render_opcode(i32* %489, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 %494)
  br label %496

496:                                              ; preds = %121, %347, %420, %488, %483
  ret void
}

declare dso_local i32 @render_more(i32*, i8*, ...) #1

declare dso_local i32 @render_opcode(i32*, i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
