; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctmixer.c_ct_mixer_get_resources.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctmixer.c_ct_mixer_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_mixer = type { %struct.sum**, %struct.amixer**, %struct.TYPE_4__* }
%struct.sum = type { i32 }
%struct.amixer = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i64* }
%struct.TYPE_3__ = type { i32 }
%struct.sum_mgr = type { i32 (%struct.sum_mgr*, %struct.sum_desc*, %struct.sum.0**)*, i32 (%struct.sum_mgr*, %struct.sum.1*)* }
%struct.sum_desc = type opaque
%struct.sum.0 = type opaque
%struct.sum.1 = type opaque
%struct.sum_desc.2 = type { i32, i32 }
%struct.amixer_mgr = type { i32 (%struct.amixer_mgr*, %struct.amixer_desc*, %struct.amixer**)*, i32 (%struct.amixer_mgr*, %struct.amixer*)* }
%struct.amixer_desc = type opaque
%struct.amixer_desc.3 = type { i32, i32 }

@SUM = common dso_local global i64 0, align 8
@NUM_CT_SUMS = common dso_local global i32 0, align 4
@CHN_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed to get sum resources for front output!\0A\00", align 1
@AMIXER = common dso_local global i64 0, align 8
@NUM_CT_AMIXERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Failed to get amixer resources for mixer obj!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_mixer*)* @ct_mixer_get_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_mixer_get_resources(%struct.ct_mixer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ct_mixer*, align 8
  %4 = alloca %struct.sum_mgr*, align 8
  %5 = alloca %struct.sum*, align 8
  %6 = alloca %struct.sum_desc.2, align 4
  %7 = alloca %struct.amixer_mgr*, align 8
  %8 = alloca %struct.amixer*, align 8
  %9 = alloca %struct.amixer_desc.3, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ct_mixer* %0, %struct.ct_mixer** %3, align 8
  %12 = bitcast %struct.sum_desc.2* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = bitcast %struct.amixer_desc.3* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %15 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @SUM, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.sum_mgr*
  store %struct.sum_mgr* %22, %struct.sum_mgr** %4, align 8
  %23 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %24 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.sum_desc.2, %struct.sum_desc.2* %6, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %62, %1
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @NUM_CT_SUMS, align 4
  %32 = load i32, i32* @CHN_NUM, align 4
  %33 = mul nsw i32 %31, %32
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %29
  %36 = load %struct.sum_mgr*, %struct.sum_mgr** %4, align 8
  %37 = getelementptr inbounds %struct.sum_mgr, %struct.sum_mgr* %36, i32 0, i32 0
  %38 = load i32 (%struct.sum_mgr*, %struct.sum_desc*, %struct.sum.0**)*, i32 (%struct.sum_mgr*, %struct.sum_desc*, %struct.sum.0**)** %37, align 8
  %39 = load %struct.sum_mgr*, %struct.sum_mgr** %4, align 8
  %40 = bitcast %struct.sum_desc.2* %6 to %struct.sum_desc*
  %41 = bitcast %struct.sum** %5 to %struct.sum.0**
  %42 = call i32 %38(%struct.sum_mgr* %39, %struct.sum_desc* %40, %struct.sum.0** %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %35
  %46 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %47 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %65

54:                                               ; preds = %35
  %55 = load %struct.sum*, %struct.sum** %5, align 8
  %56 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %57 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %56, i32 0, i32 0
  %58 = load %struct.sum**, %struct.sum*** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.sum*, %struct.sum** %58, i64 %60
  store %struct.sum* %55, %struct.sum** %61, align 8
  br label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %29

65:                                               ; preds = %45, %29
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %166

69:                                               ; preds = %65
  %70 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %71 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* @AMIXER, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.amixer_mgr*
  store %struct.amixer_mgr* %78, %struct.amixer_mgr** %7, align 8
  %79 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %80 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %79, i32 0, i32 2
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.amixer_desc.3, %struct.amixer_desc.3* %9, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  store i32 0, i32* %11, align 4
  br label %85

85:                                               ; preds = %117, %69
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @NUM_CT_AMIXERS, align 4
  %88 = load i32, i32* @CHN_NUM, align 4
  %89 = mul nsw i32 %87, %88
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %120

91:                                               ; preds = %85
  %92 = load %struct.amixer_mgr*, %struct.amixer_mgr** %7, align 8
  %93 = getelementptr inbounds %struct.amixer_mgr, %struct.amixer_mgr* %92, i32 0, i32 0
  %94 = load i32 (%struct.amixer_mgr*, %struct.amixer_desc*, %struct.amixer**)*, i32 (%struct.amixer_mgr*, %struct.amixer_desc*, %struct.amixer**)** %93, align 8
  %95 = load %struct.amixer_mgr*, %struct.amixer_mgr** %7, align 8
  %96 = bitcast %struct.amixer_desc.3* %9 to %struct.amixer_desc*
  %97 = call i32 %94(%struct.amixer_mgr* %95, %struct.amixer_desc* %96, %struct.amixer** %8)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %91
  %101 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %102 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %101, i32 0, i32 2
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %120

109:                                              ; preds = %91
  %110 = load %struct.amixer*, %struct.amixer** %8, align 8
  %111 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %112 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %111, i32 0, i32 1
  %113 = load %struct.amixer**, %struct.amixer*** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.amixer*, %struct.amixer** %113, i64 %115
  store %struct.amixer* %110, %struct.amixer** %116, align 8
  br label %117

117:                                              ; preds = %109
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %85

120:                                              ; preds = %100, %85
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %125

124:                                              ; preds = %120
  store i32 0, i32* %2, align 4
  br label %208

125:                                              ; preds = %123
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %162, %125
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @NUM_CT_AMIXERS, align 4
  %129 = load i32, i32* @CHN_NUM, align 4
  %130 = mul nsw i32 %128, %129
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %165

132:                                              ; preds = %126
  %133 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %134 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %133, i32 0, i32 1
  %135 = load %struct.amixer**, %struct.amixer*** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.amixer*, %struct.amixer** %135, i64 %137
  %139 = load %struct.amixer*, %struct.amixer** %138, align 8
  %140 = icmp ne %struct.amixer* null, %139
  br i1 %140, label %141, label %161

141:                                              ; preds = %132
  %142 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %143 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %142, i32 0, i32 1
  %144 = load %struct.amixer**, %struct.amixer*** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.amixer*, %struct.amixer** %144, i64 %146
  %148 = load %struct.amixer*, %struct.amixer** %147, align 8
  store %struct.amixer* %148, %struct.amixer** %8, align 8
  %149 = load %struct.amixer_mgr*, %struct.amixer_mgr** %7, align 8
  %150 = getelementptr inbounds %struct.amixer_mgr, %struct.amixer_mgr* %149, i32 0, i32 1
  %151 = load i32 (%struct.amixer_mgr*, %struct.amixer*)*, i32 (%struct.amixer_mgr*, %struct.amixer*)** %150, align 8
  %152 = load %struct.amixer_mgr*, %struct.amixer_mgr** %7, align 8
  %153 = load %struct.amixer*, %struct.amixer** %8, align 8
  %154 = call i32 %151(%struct.amixer_mgr* %152, %struct.amixer* %153)
  %155 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %156 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %155, i32 0, i32 1
  %157 = load %struct.amixer**, %struct.amixer*** %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.amixer*, %struct.amixer** %157, i64 %159
  store %struct.amixer* null, %struct.amixer** %160, align 8
  br label %161

161:                                              ; preds = %141, %132
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %11, align 4
  br label %126

165:                                              ; preds = %126
  br label %166

166:                                              ; preds = %165, %68
  store i32 0, i32* %11, align 4
  br label %167

167:                                              ; preds = %203, %166
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* @NUM_CT_SUMS, align 4
  %170 = load i32, i32* @CHN_NUM, align 4
  %171 = mul nsw i32 %169, %170
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %206

173:                                              ; preds = %167
  %174 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %175 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %174, i32 0, i32 0
  %176 = load %struct.sum**, %struct.sum*** %175, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.sum*, %struct.sum** %176, i64 %178
  %180 = load %struct.sum*, %struct.sum** %179, align 8
  %181 = icmp ne %struct.sum* null, %180
  br i1 %181, label %182, label %202

182:                                              ; preds = %173
  %183 = load %struct.sum_mgr*, %struct.sum_mgr** %4, align 8
  %184 = getelementptr inbounds %struct.sum_mgr, %struct.sum_mgr* %183, i32 0, i32 1
  %185 = load i32 (%struct.sum_mgr*, %struct.sum.1*)*, i32 (%struct.sum_mgr*, %struct.sum.1*)** %184, align 8
  %186 = load %struct.sum_mgr*, %struct.sum_mgr** %4, align 8
  %187 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %188 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %187, i32 0, i32 0
  %189 = load %struct.sum**, %struct.sum*** %188, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.sum*, %struct.sum** %189, i64 %191
  %193 = load %struct.sum*, %struct.sum** %192, align 8
  %194 = bitcast %struct.sum* %193 to %struct.sum.1*
  %195 = call i32 %185(%struct.sum_mgr* %186, %struct.sum.1* %194)
  %196 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %197 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %196, i32 0, i32 0
  %198 = load %struct.sum**, %struct.sum*** %197, align 8
  %199 = load i32, i32* %11, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.sum*, %struct.sum** %198, i64 %200
  store %struct.sum* null, %struct.sum** %201, align 8
  br label %202

202:                                              ; preds = %182, %173
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %11, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %11, align 4
  br label %167

206:                                              ; preds = %167
  %207 = load i32, i32* %10, align 4
  store i32 %207, i32* %2, align 4
  br label %208

208:                                              ; preds = %206, %124
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_err(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
