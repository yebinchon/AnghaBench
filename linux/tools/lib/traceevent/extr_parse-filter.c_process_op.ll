; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_process_op.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_process_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEP_FILTER_OP_NOT = common dso_local global i32 0, align 4
@TEP_FILTER_EXP_NONE = common dso_local global i32 0, align 4
@TEP_FILTER_CMP_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@TEP_FILTER_OP_AND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@TEP_FILTER_OP_OR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@OP_NOT = common dso_local global i32 0, align 4
@OP_BOOL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@TEP_FILTER_EXP_ADD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@TEP_FILTER_EXP_SUB = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@TEP_FILTER_EXP_MUL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@TEP_FILTER_EXP_DIV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@TEP_FILTER_EXP_MOD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@TEP_FILTER_EXP_RSHIFT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@TEP_FILTER_EXP_LSHIFT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@TEP_FILTER_EXP_AND = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@TEP_FILTER_EXP_OR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@TEP_FILTER_EXP_XOR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@TEP_FILTER_EXP_NOT = common dso_local global i32 0, align 4
@OP_EXP = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@TEP_FILTER_CMP_EQ = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@TEP_FILTER_CMP_NE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@TEP_FILTER_CMP_LT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [2 x i8] c">\00", align 1
@TEP_FILTER_CMP_GT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@TEP_FILTER_CMP_LE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@TEP_FILTER_CMP_GE = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [3 x i8] c"=~\00", align 1
@TEP_FILTER_CMP_REGEX = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [3 x i8] c"!~\00", align 1
@TEP_FILTER_CMP_NOT_REGEX = common dso_local global i32 0, align 4
@OP_NONE = common dso_local global i32 0, align 4
@OP_CMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*)* @process_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_op(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* @TEP_FILTER_OP_NOT, align 4
  %11 = load i32*, i32** %7, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @TEP_FILTER_EXP_NONE, align 4
  %13 = load i32*, i32** %9, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @TEP_FILTER_CMP_NONE, align 4
  %15 = load i32*, i32** %8, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @TEP_FILTER_OP_AND, align 4
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  br label %37

22:                                               ; preds = %4
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @TEP_FILTER_OP_OR, align 4
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  br label %36

29:                                               ; preds = %22
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @OP_NOT, align 4
  store i32 %34, i32* %5, align 4
  br label %205

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %26
  br label %37

37:                                               ; preds = %36, %19
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TEP_FILTER_OP_NOT, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @OP_BOOL, align 4
  store i32 %43, i32* %5, align 4
  br label %205

44:                                               ; preds = %37
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @TEP_FILTER_EXP_ADD, align 4
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  br label %131

51:                                               ; preds = %44
  %52 = load i8*, i8** %6, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @TEP_FILTER_EXP_SUB, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  br label %130

58:                                               ; preds = %51
  %59 = load i8*, i8** %6, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @TEP_FILTER_EXP_MUL, align 4
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  br label %129

65:                                               ; preds = %58
  %66 = load i8*, i8** %6, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @TEP_FILTER_EXP_DIV, align 4
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  br label %128

72:                                               ; preds = %65
  %73 = load i8*, i8** %6, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* @TEP_FILTER_EXP_MOD, align 4
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  br label %127

79:                                               ; preds = %72
  %80 = load i8*, i8** %6, align 8
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* @TEP_FILTER_EXP_RSHIFT, align 4
  %85 = load i32*, i32** %9, align 8
  store i32 %84, i32* %85, align 4
  br label %126

86:                                               ; preds = %79
  %87 = load i8*, i8** %6, align 8
  %88 = call i64 @strcmp(i8* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* @TEP_FILTER_EXP_LSHIFT, align 4
  %92 = load i32*, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  br label %125

93:                                               ; preds = %86
  %94 = load i8*, i8** %6, align 8
  %95 = call i64 @strcmp(i8* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* @TEP_FILTER_EXP_AND, align 4
  %99 = load i32*, i32** %9, align 8
  store i32 %98, i32* %99, align 4
  br label %124

100:                                              ; preds = %93
  %101 = load i8*, i8** %6, align 8
  %102 = call i64 @strcmp(i8* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* @TEP_FILTER_EXP_OR, align 4
  %106 = load i32*, i32** %9, align 8
  store i32 %105, i32* %106, align 4
  br label %123

107:                                              ; preds = %100
  %108 = load i8*, i8** %6, align 8
  %109 = call i64 @strcmp(i8* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i32, i32* @TEP_FILTER_EXP_XOR, align 4
  %113 = load i32*, i32** %9, align 8
  store i32 %112, i32* %113, align 4
  br label %122

114:                                              ; preds = %107
  %115 = load i8*, i8** %6, align 8
  %116 = call i64 @strcmp(i8* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, i32* @TEP_FILTER_EXP_NOT, align 4
  %120 = load i32*, i32** %9, align 8
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %118, %114
  br label %122

122:                                              ; preds = %121, %111
  br label %123

123:                                              ; preds = %122, %104
  br label %124

124:                                              ; preds = %123, %97
  br label %125

125:                                              ; preds = %124, %90
  br label %126

126:                                              ; preds = %125, %83
  br label %127

127:                                              ; preds = %126, %76
  br label %128

128:                                              ; preds = %127, %69
  br label %129

129:                                              ; preds = %128, %62
  br label %130

130:                                              ; preds = %129, %55
  br label %131

131:                                              ; preds = %130, %48
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @TEP_FILTER_EXP_NONE, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load i32, i32* @OP_EXP, align 4
  store i32 %137, i32* %5, align 4
  br label %205

138:                                              ; preds = %131
  %139 = load i8*, i8** %6, align 8
  %140 = call i64 @strcmp(i8* %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load i32, i32* @TEP_FILTER_CMP_EQ, align 4
  %144 = load i32*, i32** %8, align 8
  store i32 %143, i32* %144, align 4
  br label %203

145:                                              ; preds = %138
  %146 = load i8*, i8** %6, align 8
  %147 = call i64 @strcmp(i8* %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load i32, i32* @TEP_FILTER_CMP_NE, align 4
  %151 = load i32*, i32** %8, align 8
  store i32 %150, i32* %151, align 4
  br label %202

152:                                              ; preds = %145
  %153 = load i8*, i8** %6, align 8
  %154 = call i64 @strcmp(i8* %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i32, i32* @TEP_FILTER_CMP_LT, align 4
  %158 = load i32*, i32** %8, align 8
  store i32 %157, i32* %158, align 4
  br label %201

159:                                              ; preds = %152
  %160 = load i8*, i8** %6, align 8
  %161 = call i64 @strcmp(i8* %160, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load i32, i32* @TEP_FILTER_CMP_GT, align 4
  %165 = load i32*, i32** %8, align 8
  store i32 %164, i32* %165, align 4
  br label %200

166:                                              ; preds = %159
  %167 = load i8*, i8** %6, align 8
  %168 = call i64 @strcmp(i8* %167, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = load i32, i32* @TEP_FILTER_CMP_LE, align 4
  %172 = load i32*, i32** %8, align 8
  store i32 %171, i32* %172, align 4
  br label %199

173:                                              ; preds = %166
  %174 = load i8*, i8** %6, align 8
  %175 = call i64 @strcmp(i8* %174, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load i32, i32* @TEP_FILTER_CMP_GE, align 4
  %179 = load i32*, i32** %8, align 8
  store i32 %178, i32* %179, align 4
  br label %198

180:                                              ; preds = %173
  %181 = load i8*, i8** %6, align 8
  %182 = call i64 @strcmp(i8* %181, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load i32, i32* @TEP_FILTER_CMP_REGEX, align 4
  %186 = load i32*, i32** %8, align 8
  store i32 %185, i32* %186, align 4
  br label %197

187:                                              ; preds = %180
  %188 = load i8*, i8** %6, align 8
  %189 = call i64 @strcmp(i8* %188, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %187
  %192 = load i32, i32* @TEP_FILTER_CMP_NOT_REGEX, align 4
  %193 = load i32*, i32** %8, align 8
  store i32 %192, i32* %193, align 4
  br label %196

194:                                              ; preds = %187
  %195 = load i32, i32* @OP_NONE, align 4
  store i32 %195, i32* %5, align 4
  br label %205

196:                                              ; preds = %191
  br label %197

197:                                              ; preds = %196, %184
  br label %198

198:                                              ; preds = %197, %177
  br label %199

199:                                              ; preds = %198, %170
  br label %200

200:                                              ; preds = %199, %163
  br label %201

201:                                              ; preds = %200, %156
  br label %202

202:                                              ; preds = %201, %149
  br label %203

203:                                              ; preds = %202, %142
  %204 = load i32, i32* @OP_CMP, align 4
  store i32 %204, i32* %5, align 4
  br label %205

205:                                              ; preds = %203, %194, %136, %42, %33
  %206 = load i32, i32* %5, align 4
  ret i32 %206
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
