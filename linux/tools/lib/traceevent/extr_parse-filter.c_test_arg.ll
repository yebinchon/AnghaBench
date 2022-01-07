; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_test_arg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_test_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_filter_arg = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.tep_filter_arg*, i32, %struct.tep_filter_arg* }
%struct.TYPE_7__ = type { %struct.tep_filter_arg*, %struct.tep_filter_arg* }
%struct.TYPE_6__ = type { %struct.tep_filter_arg*, %struct.tep_filter_arg* }
%struct.TYPE_5__ = type { i32 }

@TEP_FILTER_OP_NOT = common dso_local global i32 0, align 4
@TEP_FILTER_OP_OR = common dso_local global i32 0, align 4
@TEP_FILTER_OP_AND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"bad arg in filter tree\00", align 1
@TEP_ERRNO__BAD_FILTER_ARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_filter_arg*, %struct.tep_filter_arg*, i8*)* @test_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_arg(%struct.tep_filter_arg* %0, %struct.tep_filter_arg* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tep_filter_arg*, align 8
  %6 = alloca %struct.tep_filter_arg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tep_filter_arg* %0, %struct.tep_filter_arg** %5, align 8
  store %struct.tep_filter_arg* %1, %struct.tep_filter_arg** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %11 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %211 [
    i32 134, label %13
    i32 129, label %19
    i32 128, label %19
    i32 132, label %19
    i32 133, label %20
    i32 131, label %45
    i32 130, label %70
  ]

13:                                               ; preds = %3
  %14 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %15 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 137, %17
  store i32 %18, i32* %4, align 4
  br label %215

19:                                               ; preds = %3, %3, %3
  store i32 136, i32* %4, align 4
  br label %215

20:                                               ; preds = %3
  %21 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %22 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %23 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %24, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @test_arg(%struct.tep_filter_arg* %21, %struct.tep_filter_arg* %25, i8* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 136
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %215

32:                                               ; preds = %20
  %33 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %34 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %35 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %36, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @test_arg(%struct.tep_filter_arg* %33, %struct.tep_filter_arg* %37, i8* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 136
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %215

44:                                               ; preds = %32
  store i32 136, i32* %4, align 4
  br label %215

45:                                               ; preds = %3
  %46 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %47 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %48 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %49, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @test_arg(%struct.tep_filter_arg* %46, %struct.tep_filter_arg* %50, i8* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 136
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %215

57:                                               ; preds = %45
  %58 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %59 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %60 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %61, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @test_arg(%struct.tep_filter_arg* %58, %struct.tep_filter_arg* %62, i8* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 136
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %4, align 4
  br label %215

69:                                               ; preds = %57
  store i32 136, i32* %4, align 4
  br label %215

70:                                               ; preds = %3
  %71 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %72 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @TEP_FILTER_OP_NOT, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %148

77:                                               ; preds = %70
  %78 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %79 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %80 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %81, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @test_arg(%struct.tep_filter_arg* %78, %struct.tep_filter_arg* %82, i8* %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  switch i32 %85, label %145 [
    i32 136, label %86
    i32 135, label %87
    i32 137, label %116
  ]

86:                                               ; preds = %77
  br label %147

87:                                               ; preds = %77
  %88 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %89 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @TEP_FILTER_OP_OR, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  store i32 135, i32* %4, align 4
  br label %215

95:                                               ; preds = %87
  %96 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %97 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %98 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %99, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @test_arg(%struct.tep_filter_arg* %96, %struct.tep_filter_arg* %100, i8* %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 136
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %4, align 4
  br label %215

107:                                              ; preds = %95
  %108 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %109 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %110 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %111 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  %113 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %112, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = call i32 @reparent_op_arg(%struct.tep_filter_arg* %108, %struct.tep_filter_arg* %109, %struct.tep_filter_arg* %113, i8* %114)
  store i32 %115, i32* %4, align 4
  br label %215

116:                                              ; preds = %77
  %117 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %118 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @TEP_FILTER_OP_AND, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  store i32 137, i32* %4, align 4
  br label %215

124:                                              ; preds = %116
  %125 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %126 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %127 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %128, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = call i32 @test_arg(%struct.tep_filter_arg* %125, %struct.tep_filter_arg* %129, i8* %130)
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 136
  br i1 %133, label %134, label %136

134:                                              ; preds = %124
  %135 = load i32, i32* %9, align 4
  store i32 %135, i32* %4, align 4
  br label %215

136:                                              ; preds = %124
  %137 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %138 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %139 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %140 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %141, align 8
  %143 = load i8*, i8** %7, align 8
  %144 = call i32 @reparent_op_arg(%struct.tep_filter_arg* %137, %struct.tep_filter_arg* %138, %struct.tep_filter_arg* %142, i8* %143)
  store i32 %144, i32* %4, align 4
  br label %215

145:                                              ; preds = %77
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %4, align 4
  br label %215

147:                                              ; preds = %86
  br label %148

148:                                              ; preds = %147, %70
  %149 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %150 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %151 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  %153 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %152, align 8
  %154 = load i8*, i8** %7, align 8
  %155 = call i32 @test_arg(%struct.tep_filter_arg* %149, %struct.tep_filter_arg* %153, i8* %154)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  switch i32 %156, label %158 [
    i32 136, label %157
    i32 135, label %159
    i32 137, label %184
  ]

157:                                              ; preds = %148
  br label %158

158:                                              ; preds = %148, %157
  br label %209

159:                                              ; preds = %148
  %160 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %161 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @TEP_FILTER_OP_OR, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  store i32 135, i32* %4, align 4
  br label %215

167:                                              ; preds = %159
  %168 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %169 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @TEP_FILTER_OP_NOT, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  store i32 137, i32* %4, align 4
  br label %215

175:                                              ; preds = %167
  %176 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %177 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %178 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %179 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %180, align 8
  %182 = load i8*, i8** %7, align 8
  %183 = call i32 @reparent_op_arg(%struct.tep_filter_arg* %176, %struct.tep_filter_arg* %177, %struct.tep_filter_arg* %181, i8* %182)
  store i32 %183, i32* %4, align 4
  br label %215

184:                                              ; preds = %148
  %185 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %186 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @TEP_FILTER_OP_AND, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %184
  store i32 137, i32* %4, align 4
  br label %215

192:                                              ; preds = %184
  %193 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %194 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @TEP_FILTER_OP_NOT, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  store i32 135, i32* %4, align 4
  br label %215

200:                                              ; preds = %192
  %201 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %202 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %203 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %204 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %205, align 8
  %207 = load i8*, i8** %7, align 8
  %208 = call i32 @reparent_op_arg(%struct.tep_filter_arg* %201, %struct.tep_filter_arg* %202, %struct.tep_filter_arg* %206, i8* %207)
  store i32 %208, i32* %4, align 4
  br label %215

209:                                              ; preds = %158
  %210 = load i32, i32* %9, align 4
  store i32 %210, i32* %4, align 4
  br label %215

211:                                              ; preds = %3
  %212 = load i8*, i8** %7, align 8
  %213 = call i32 @show_error(i8* %212, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %214 = load i32, i32* @TEP_ERRNO__BAD_FILTER_ARG, align 4
  store i32 %214, i32* %4, align 4
  br label %215

215:                                              ; preds = %211, %209, %200, %199, %191, %175, %174, %166, %145, %136, %134, %123, %107, %105, %94, %69, %67, %55, %44, %42, %30, %19, %13
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local i32 @reparent_op_arg(%struct.tep_filter_arg*, %struct.tep_filter_arg*, %struct.tep_filter_arg*, i8*) #1

declare dso_local i32 @show_error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
