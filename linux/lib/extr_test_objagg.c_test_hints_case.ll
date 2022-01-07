; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_test_hints_case.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_test_hints_case.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hints_case = type { i32, i32*, i32, i32 }
%struct.objagg_obj = type { i32 }
%struct.objagg_hints = type opaque
%struct.world = type { i32 }
%struct.objagg = type opaque

@delta_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Stats: %s\0A\00", align 1
@OBJAGG_OPT_ALGO_SIMPLE_GREEDY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Hints stats: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Stats2: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hints_case*)* @test_hints_case to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_hints_case(%struct.hints_case* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hints_case*, align 8
  %4 = alloca %struct.objagg_obj*, align 8
  %5 = alloca %struct.objagg_hints*, align 8
  %6 = alloca %struct.world, align 4
  %7 = alloca %struct.world, align 4
  %8 = alloca %struct.objagg*, align 8
  %9 = alloca %struct.objagg*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hints_case* %0, %struct.hints_case** %3, align 8
  %13 = bitcast %struct.world* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = bitcast %struct.world* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 4, i1 false)
  %15 = call %struct.objagg_obj* @objagg_create(i32* @delta_ops, %struct.objagg_obj* null, %struct.world* %7)
  %16 = bitcast %struct.objagg_obj* %15 to %struct.objagg*
  store %struct.objagg* %16, %struct.objagg** %9, align 8
  %17 = load %struct.objagg*, %struct.objagg** %9, align 8
  %18 = bitcast %struct.objagg* %17 to %struct.objagg_obj*
  %19 = call i64 @IS_ERR(%struct.objagg_obj* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.objagg*, %struct.objagg** %9, align 8
  %23 = bitcast %struct.objagg* %22 to %struct.objagg_obj*
  %24 = call i32 @PTR_ERR(%struct.objagg_obj* %23)
  store i32 %24, i32* %2, align 4
  br label %210

25:                                               ; preds = %1
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %50, %25
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.hints_case*, %struct.hints_case** %3, align 8
  %29 = getelementptr inbounds %struct.hints_case, %struct.hints_case* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %26
  %33 = load %struct.objagg*, %struct.objagg** %9, align 8
  %34 = bitcast %struct.objagg* %33 to %struct.objagg_obj*
  %35 = load %struct.hints_case*, %struct.hints_case** %3, align 8
  %36 = getelementptr inbounds %struct.hints_case, %struct.hints_case* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.objagg_obj* @world_obj_get(%struct.world* %7, %struct.objagg_obj* %34, i32 %41)
  store %struct.objagg_obj* %42, %struct.objagg_obj** %4, align 8
  %43 = load %struct.objagg_obj*, %struct.objagg_obj** %4, align 8
  %44 = call i64 @IS_ERR(%struct.objagg_obj* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %32
  %47 = load %struct.objagg_obj*, %struct.objagg_obj** %4, align 8
  %48 = call i32 @PTR_ERR(%struct.objagg_obj* %47)
  store i32 %48, i32* %12, align 4
  br label %185

49:                                               ; preds = %32
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %26

53:                                               ; preds = %26
  %54 = load %struct.objagg*, %struct.objagg** %9, align 8
  %55 = bitcast %struct.objagg* %54 to %struct.objagg_obj*
  %56 = call i32 @pr_debug_stats(%struct.objagg_obj* %55)
  %57 = load %struct.objagg*, %struct.objagg** %9, align 8
  %58 = bitcast %struct.objagg* %57 to %struct.objagg_obj*
  %59 = load %struct.hints_case*, %struct.hints_case** %3, align 8
  %60 = getelementptr inbounds %struct.hints_case, %struct.hints_case* %59, i32 0, i32 3
  %61 = call i32 @check_expect_stats(%struct.objagg_obj* %58, i32* %60, i8** %10)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %65)
  br label %184

67:                                               ; preds = %53
  %68 = load %struct.objagg*, %struct.objagg** %9, align 8
  %69 = bitcast %struct.objagg* %68 to %struct.objagg_obj*
  %70 = load i32, i32* @OBJAGG_OPT_ALGO_SIMPLE_GREEDY, align 4
  %71 = call %struct.objagg_obj* @objagg_hints_get(%struct.objagg_obj* %69, i32 %70)
  %72 = bitcast %struct.objagg_obj* %71 to %struct.objagg_hints*
  store %struct.objagg_hints* %72, %struct.objagg_hints** %5, align 8
  %73 = load %struct.objagg_hints*, %struct.objagg_hints** %5, align 8
  %74 = bitcast %struct.objagg_hints* %73 to %struct.objagg_obj*
  %75 = call i64 @IS_ERR(%struct.objagg_obj* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %67
  %78 = load %struct.objagg_hints*, %struct.objagg_hints** %5, align 8
  %79 = bitcast %struct.objagg_hints* %78 to %struct.objagg_obj*
  %80 = call i32 @PTR_ERR(%struct.objagg_obj* %79)
  store i32 %80, i32* %12, align 4
  br label %183

81:                                               ; preds = %67
  %82 = load %struct.objagg_hints*, %struct.objagg_hints** %5, align 8
  %83 = bitcast %struct.objagg_hints* %82 to %struct.objagg_obj*
  %84 = call i32 @pr_debug_hints_stats(%struct.objagg_obj* %83)
  %85 = load %struct.objagg_hints*, %struct.objagg_hints** %5, align 8
  %86 = bitcast %struct.objagg_hints* %85 to %struct.objagg_obj*
  %87 = load %struct.hints_case*, %struct.hints_case** %3, align 8
  %88 = getelementptr inbounds %struct.hints_case, %struct.hints_case* %87, i32 0, i32 2
  %89 = call i32 @check_expect_hints_stats(%struct.objagg_obj* %86, i32* %88, i8** %10)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %81
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %93)
  br label %182

95:                                               ; preds = %81
  %96 = load %struct.objagg_hints*, %struct.objagg_hints** %5, align 8
  %97 = bitcast %struct.objagg_hints* %96 to %struct.objagg_obj*
  %98 = call %struct.objagg_obj* @objagg_create(i32* @delta_ops, %struct.objagg_obj* %97, %struct.world* %6)
  %99 = bitcast %struct.objagg_obj* %98 to %struct.objagg*
  store %struct.objagg* %99, %struct.objagg** %8, align 8
  %100 = load %struct.objagg*, %struct.objagg** %8, align 8
  %101 = bitcast %struct.objagg* %100 to %struct.objagg_obj*
  %102 = call i64 @IS_ERR(%struct.objagg_obj* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %95
  %105 = load %struct.objagg*, %struct.objagg** %8, align 8
  %106 = bitcast %struct.objagg* %105 to %struct.objagg_obj*
  %107 = call i32 @PTR_ERR(%struct.objagg_obj* %106)
  store i32 %107, i32* %2, align 4
  br label %210

108:                                              ; preds = %95
  store i32 0, i32* %11, align 4
  br label %109

109:                                              ; preds = %133, %108
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.hints_case*, %struct.hints_case** %3, align 8
  %112 = getelementptr inbounds %struct.hints_case, %struct.hints_case* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %136

115:                                              ; preds = %109
  %116 = load %struct.objagg*, %struct.objagg** %8, align 8
  %117 = bitcast %struct.objagg* %116 to %struct.objagg_obj*
  %118 = load %struct.hints_case*, %struct.hints_case** %3, align 8
  %119 = getelementptr inbounds %struct.hints_case, %struct.hints_case* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call %struct.objagg_obj* @world_obj_get(%struct.world* %6, %struct.objagg_obj* %117, i32 %124)
  store %struct.objagg_obj* %125, %struct.objagg_obj** %4, align 8
  %126 = load %struct.objagg_obj*, %struct.objagg_obj** %4, align 8
  %127 = call i64 @IS_ERR(%struct.objagg_obj* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %115
  %130 = load %struct.objagg_obj*, %struct.objagg_obj** %4, align 8
  %131 = call i32 @PTR_ERR(%struct.objagg_obj* %130)
  store i32 %131, i32* %12, align 4
  br label %152

132:                                              ; preds = %115
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  br label %109

136:                                              ; preds = %109
  %137 = load %struct.objagg*, %struct.objagg** %8, align 8
  %138 = bitcast %struct.objagg* %137 to %struct.objagg_obj*
  %139 = call i32 @pr_debug_stats(%struct.objagg_obj* %138)
  %140 = load %struct.objagg*, %struct.objagg** %8, align 8
  %141 = bitcast %struct.objagg* %140 to %struct.objagg_obj*
  %142 = load %struct.hints_case*, %struct.hints_case** %3, align 8
  %143 = getelementptr inbounds %struct.hints_case, %struct.hints_case* %142, i32 0, i32 2
  %144 = call i32 @check_expect_stats(%struct.objagg_obj* %141, i32* %143, i8** %10)
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %136
  %148 = load i8*, i8** %10, align 8
  %149 = call i32 @pr_err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %148)
  br label %151

150:                                              ; preds = %136
  store i32 0, i32* %12, align 4
  br label %151

151:                                              ; preds = %150, %147
  br label %152

152:                                              ; preds = %151, %129
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %11, align 4
  br label %155

155:                                              ; preds = %169, %152
  %156 = load i32, i32* %11, align 4
  %157 = icmp sge i32 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %155
  %159 = load %struct.objagg*, %struct.objagg** %9, align 8
  %160 = bitcast %struct.objagg* %159 to %struct.objagg_obj*
  %161 = load %struct.hints_case*, %struct.hints_case** %3, align 8
  %162 = getelementptr inbounds %struct.hints_case, %struct.hints_case* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @world_obj_put(%struct.world* %6, %struct.objagg_obj* %160, i32 %167)
  br label %169

169:                                              ; preds = %158
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %11, align 4
  br label %155

172:                                              ; preds = %155
  %173 = load %struct.objagg_hints*, %struct.objagg_hints** %5, align 8
  %174 = bitcast %struct.objagg_hints* %173 to %struct.objagg_obj*
  %175 = call i32 @objagg_hints_put(%struct.objagg_obj* %174)
  %176 = load %struct.objagg*, %struct.objagg** %8, align 8
  %177 = bitcast %struct.objagg* %176 to %struct.objagg_obj*
  %178 = call i32 @objagg_destroy(%struct.objagg_obj* %177)
  %179 = load %struct.hints_case*, %struct.hints_case** %3, align 8
  %180 = getelementptr inbounds %struct.hints_case, %struct.hints_case* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  store i32 %181, i32* %11, align 4
  br label %182

182:                                              ; preds = %172, %92
  br label %183

183:                                              ; preds = %182, %77
  br label %184

184:                                              ; preds = %183, %64
  br label %185

185:                                              ; preds = %184, %46
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %11, align 4
  br label %188

188:                                              ; preds = %202, %185
  %189 = load i32, i32* %11, align 4
  %190 = icmp sge i32 %189, 0
  br i1 %190, label %191, label %205

191:                                              ; preds = %188
  %192 = load %struct.objagg*, %struct.objagg** %9, align 8
  %193 = bitcast %struct.objagg* %192 to %struct.objagg_obj*
  %194 = load %struct.hints_case*, %struct.hints_case** %3, align 8
  %195 = getelementptr inbounds %struct.hints_case, %struct.hints_case* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @world_obj_put(%struct.world* %7, %struct.objagg_obj* %193, i32 %200)
  br label %202

202:                                              ; preds = %191
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %203, -1
  store i32 %204, i32* %11, align 4
  br label %188

205:                                              ; preds = %188
  %206 = load %struct.objagg*, %struct.objagg** %9, align 8
  %207 = bitcast %struct.objagg* %206 to %struct.objagg_obj*
  %208 = call i32 @objagg_destroy(%struct.objagg_obj* %207)
  %209 = load i32, i32* %12, align 4
  store i32 %209, i32* %2, align 4
  br label %210

210:                                              ; preds = %205, %104, %21
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.objagg_obj* @objagg_create(i32*, %struct.objagg_obj*, %struct.world*) #2

declare dso_local i64 @IS_ERR(%struct.objagg_obj*) #2

declare dso_local i32 @PTR_ERR(%struct.objagg_obj*) #2

declare dso_local %struct.objagg_obj* @world_obj_get(%struct.world*, %struct.objagg_obj*, i32) #2

declare dso_local i32 @pr_debug_stats(%struct.objagg_obj*) #2

declare dso_local i32 @check_expect_stats(%struct.objagg_obj*, i32*, i8**) #2

declare dso_local i32 @pr_err(i8*, i8*) #2

declare dso_local %struct.objagg_obj* @objagg_hints_get(%struct.objagg_obj*, i32) #2

declare dso_local i32 @pr_debug_hints_stats(%struct.objagg_obj*) #2

declare dso_local i32 @check_expect_hints_stats(%struct.objagg_obj*, i32*, i8**) #2

declare dso_local i32 @world_obj_put(%struct.world*, %struct.objagg_obj*, i32) #2

declare dso_local i32 @objagg_hints_put(%struct.objagg_obj*) #2

declare dso_local i32 @objagg_destroy(%struct.objagg_obj*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
