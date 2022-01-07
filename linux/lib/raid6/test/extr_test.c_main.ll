; ModuleID = '/home/carl/AnghaBench/linux/lib/raid6/test/extr_test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/lib/raid6/test/extr_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid6_recov_calls = type { i8*, i32, i32, i32 (...)* }
%struct.raid6_calls = type { i32 (i32, i32, i32, i32, i8**)*, i32 (i32, i32, i8**)*, i32 (...)* }

@NDISKS = common dso_local global i32 0, align 4
@raid6_recov_algos = common dso_local global %struct.raid6_recov_calls** null, align 8
@raid6_2data_recov = common dso_local global i32 0, align 4
@raid6_datap_recov = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"using recovery %s\0A\00", align 1
@raid6_algos = common dso_local global %struct.raid6_calls** null, align 8
@raid6_call = common dso_local global %struct.raid6_calls zeroinitializer, align 8
@data = common dso_local global i32* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@dataptrs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"\0A*** ERRORS FOUND ***\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.raid6_calls**, align 8
  %7 = alloca %struct.raid6_recov_calls**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @NDISKS, align 4
  %14 = sub nsw i32 %13, 1
  %15 = call i32 @makedata(i32 0, i32 %14)
  %16 = load %struct.raid6_recov_calls**, %struct.raid6_recov_calls*** @raid6_recov_algos, align 8
  store %struct.raid6_recov_calls** %16, %struct.raid6_recov_calls*** %7, align 8
  br label %17

17:                                               ; preds = %186, %2
  %18 = load %struct.raid6_recov_calls**, %struct.raid6_recov_calls*** %7, align 8
  %19 = load %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %18, align 8
  %20 = icmp ne %struct.raid6_recov_calls* %19, null
  br i1 %20, label %21, label %189

21:                                               ; preds = %17
  %22 = load %struct.raid6_recov_calls**, %struct.raid6_recov_calls*** %7, align 8
  %23 = load %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %22, align 8
  %24 = getelementptr inbounds %struct.raid6_recov_calls, %struct.raid6_recov_calls* %23, i32 0, i32 3
  %25 = load i32 (...)*, i32 (...)** %24, align 8
  %26 = icmp ne i32 (...)* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.raid6_recov_calls**, %struct.raid6_recov_calls*** %7, align 8
  %29 = load %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %28, align 8
  %30 = getelementptr inbounds %struct.raid6_recov_calls, %struct.raid6_recov_calls* %29, i32 0, i32 3
  %31 = load i32 (...)*, i32 (...)** %30, align 8
  %32 = call i32 (...) %31()
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %186

35:                                               ; preds = %27, %21
  %36 = load %struct.raid6_recov_calls**, %struct.raid6_recov_calls*** %7, align 8
  %37 = load %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %36, align 8
  %38 = getelementptr inbounds %struct.raid6_recov_calls, %struct.raid6_recov_calls* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* @raid6_2data_recov, align 4
  %40 = load %struct.raid6_recov_calls**, %struct.raid6_recov_calls*** %7, align 8
  %41 = load %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %40, align 8
  %42 = getelementptr inbounds %struct.raid6_recov_calls, %struct.raid6_recov_calls* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* @raid6_datap_recov, align 4
  %44 = load %struct.raid6_recov_calls**, %struct.raid6_recov_calls*** %7, align 8
  %45 = load %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %44, align 8
  %46 = getelementptr inbounds %struct.raid6_recov_calls, %struct.raid6_recov_calls* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = load %struct.raid6_calls**, %struct.raid6_calls*** @raid6_algos, align 8
  store %struct.raid6_calls** %49, %struct.raid6_calls*** %6, align 8
  br label %50

50:                                               ; preds = %181, %35
  %51 = load %struct.raid6_calls**, %struct.raid6_calls*** %6, align 8
  %52 = load %struct.raid6_calls*, %struct.raid6_calls** %51, align 8
  %53 = icmp ne %struct.raid6_calls* %52, null
  br i1 %53, label %54, label %184

54:                                               ; preds = %50
  %55 = load %struct.raid6_calls**, %struct.raid6_calls*** %6, align 8
  %56 = load %struct.raid6_calls*, %struct.raid6_calls** %55, align 8
  %57 = getelementptr inbounds %struct.raid6_calls, %struct.raid6_calls* %56, i32 0, i32 2
  %58 = load i32 (...)*, i32 (...)** %57, align 8
  %59 = icmp ne i32 (...)* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load %struct.raid6_calls**, %struct.raid6_calls*** %6, align 8
  %62 = load %struct.raid6_calls*, %struct.raid6_calls** %61, align 8
  %63 = getelementptr inbounds %struct.raid6_calls, %struct.raid6_calls* %62, i32 0, i32 2
  %64 = load i32 (...)*, i32 (...)** %63, align 8
  %65 = call i32 (...) %64()
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  br label %181

68:                                               ; preds = %60, %54
  %69 = load %struct.raid6_calls**, %struct.raid6_calls*** %6, align 8
  %70 = load %struct.raid6_calls*, %struct.raid6_calls** %69, align 8
  %71 = bitcast %struct.raid6_calls* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.raid6_calls* @raid6_call to i8*), i8* align 8 %71, i64 24, i1 false)
  %72 = load i32*, i32** @data, align 8
  %73 = load i32, i32* @NDISKS, align 4
  %74 = sub nsw i32 %73, 2
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = mul nsw i32 2, %78
  %80 = call i32 @memset(i32 %77, i32 238, i32 %79)
  %81 = load i32 (i32, i32, i8**)*, i32 (i32, i32, i8**)** getelementptr inbounds (%struct.raid6_calls, %struct.raid6_calls* @raid6_call, i32 0, i32 1), align 8
  %82 = load i32, i32* @NDISKS, align 4
  %83 = load i32, i32* @PAGE_SIZE, align 4
  %84 = call i32 %81(i32 %82, i32 %83, i8** bitcast (i32* @dataptrs to i8**))
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %109, %68
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @NDISKS, align 4
  %88 = sub nsw i32 %87, 1
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %112

90:                                               ; preds = %85
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %105, %90
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @NDISKS, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i64 @test_disks(i32 %98, i32 %99)
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %97
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %93

108:                                              ; preds = %93
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %85

112:                                              ; preds = %85
  %113 = load i32 (i32, i32, i32, i32, i8**)*, i32 (i32, i32, i32, i32, i8**)** getelementptr inbounds (%struct.raid6_calls, %struct.raid6_calls* @raid6_call, i32 0, i32 0), align 8
  %114 = icmp ne i32 (i32, i32, i32, i32, i8**)* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  br label %181

116:                                              ; preds = %112
  store i32 0, i32* %10, align 4
  br label %117

117:                                              ; preds = %177, %116
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @NDISKS, align 4
  %120 = sub nsw i32 %119, 2
  %121 = icmp slt i32 %118, %120
  br i1 %121, label %122, label %180

122:                                              ; preds = %117
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %173, %122
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @NDISKS, align 4
  %127 = sub nsw i32 %126, 2
  %128 = icmp slt i32 %125, %127
  br i1 %128, label %129, label %176

129:                                              ; preds = %124
  %130 = load i32 (i32, i32, i32, i32, i8**)*, i32 (i32, i32, i32, i32, i8**)** getelementptr inbounds (%struct.raid6_calls, %struct.raid6_calls* @raid6_call, i32 0, i32 0), align 8
  %131 = load i32, i32* @NDISKS, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* @PAGE_SIZE, align 4
  %135 = call i32 %130(i32 %131, i32 %132, i32 %133, i32 %134, i8** bitcast (i32* @dataptrs to i8**))
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @makedata(i32 %136, i32 %137)
  %139 = load i32 (i32, i32, i32, i32, i8**)*, i32 (i32, i32, i32, i32, i8**)** getelementptr inbounds (%struct.raid6_calls, %struct.raid6_calls* @raid6_call, i32 0, i32 0), align 8
  %140 = load i32, i32* @NDISKS, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @PAGE_SIZE, align 4
  %144 = call i32 %139(i32 %140, i32 %141, i32 %142, i32 %143, i8** bitcast (i32* @dataptrs to i8**))
  store i32 0, i32* %8, align 4
  br label %145

145:                                              ; preds = %169, %129
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @NDISKS, align 4
  %148 = sub nsw i32 %147, 1
  %149 = icmp slt i32 %146, %148
  br i1 %149, label %150, label %172

150:                                              ; preds = %145
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %153

153:                                              ; preds = %165, %150
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* @NDISKS, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %168

157:                                              ; preds = %153
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %9, align 4
  %160 = call i64 @test_disks(i32 %158, i32 %159)
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %162, %160
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %12, align 4
  br label %165

165:                                              ; preds = %157
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %9, align 4
  br label %153

168:                                              ; preds = %153
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %8, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %8, align 4
  br label %145

172:                                              ; preds = %145
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %11, align 4
  br label %124

176:                                              ; preds = %124
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %10, align 4
  br label %117

180:                                              ; preds = %117
  br label %181

181:                                              ; preds = %180, %115, %67
  %182 = load %struct.raid6_calls**, %struct.raid6_calls*** %6, align 8
  %183 = getelementptr inbounds %struct.raid6_calls*, %struct.raid6_calls** %182, i32 1
  store %struct.raid6_calls** %183, %struct.raid6_calls*** %6, align 8
  br label %50

184:                                              ; preds = %50
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %34
  %187 = load %struct.raid6_recov_calls**, %struct.raid6_recov_calls*** %7, align 8
  %188 = getelementptr inbounds %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %187, i32 1
  store %struct.raid6_recov_calls** %188, %struct.raid6_recov_calls*** %7, align 8
  br label %17

189:                                              ; preds = %17
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %191 = call i32 (...) @raid6_select_algo()
  %192 = load i32, i32* %12, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %196

196:                                              ; preds = %194, %189
  %197 = load i32, i32* %12, align 4
  ret i32 %197
}

declare dso_local i32 @makedata(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @test_disks(i32, i32) #1

declare dso_local i32 @raid6_select_algo(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
