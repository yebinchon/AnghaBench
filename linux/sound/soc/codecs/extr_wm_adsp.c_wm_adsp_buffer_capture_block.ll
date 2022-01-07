; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_buffer_capture_block.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_buffer_capture_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.wm_adsp_compr = type { i32, %struct.wm_adsp_compr_buf* }
%struct.wm_adsp_compr_buf = type { i64, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }

@wm_adsp_fw = common dso_local global %struct.TYPE_8__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@WM_ADSP_DATA_WORD_SIZE = common dso_local global i32 0, align 4
@next_read_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm_adsp_compr*, i32)* @wm_adsp_buffer_capture_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_adsp_buffer_capture_block(%struct.wm_adsp_compr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wm_adsp_compr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm_adsp_compr_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wm_adsp_compr* %0, %struct.wm_adsp_compr** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %4, align 8
  %14 = getelementptr inbounds %struct.wm_adsp_compr, %struct.wm_adsp_compr* %13, i32 0, i32 1
  %15 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %14, align 8
  store %struct.wm_adsp_compr_buf* %15, %struct.wm_adsp_compr_buf** %6, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %45, %2
  %17 = load i32, i32* %11, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wm_adsp_fw, align 8
  %19 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %6, align 8
  %20 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %17, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %16
  %31 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %6, align 8
  %32 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %6, align 8
  %35 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %34, i32 0, i32 3
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %33, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %48

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %16

48:                                               ; preds = %43, %16
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wm_adsp_fw, align 8
  %51 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %6, align 8
  %52 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %51, i32 0, i32 2
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %49, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %194

65:                                               ; preds = %48
  %66 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %6, align 8
  %67 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %66, i32 0, i32 3
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %8, align 4
  %74 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %6, align 8
  %75 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %74, i32 0, i32 3
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = zext i32 %81 to i64
  %83 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %6, align 8
  %84 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %6, align 8
  %87 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %86, i32 0, i32 3
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = zext i32 %93 to i64
  %95 = sub nsw i64 %85, %94
  %96 = add nsw i64 %82, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %7, align 4
  %98 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %4, align 8
  %99 = call i32 @wm_adsp_compr_frag_words(%struct.wm_adsp_compr* %98)
  store i32 %99, i32* %10, align 4
  %100 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %6, align 8
  %101 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %100, i32 0, i32 3
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %6, align 8
  %109 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %107, %110
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %65
  %117 = load i32, i32* %5, align 4
  store i32 %117, i32* %9, align 4
  br label %118

118:                                              ; preds = %116, %65
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %6, align 8
  %121 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = icmp sgt i32 %119, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %6, align 8
  %126 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %124, %118
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %132, %128
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %194

138:                                              ; preds = %134
  %139 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %6, align 8
  %140 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %139, i32 0, i32 2
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %4, align 8
  %146 = getelementptr inbounds %struct.wm_adsp_compr, %struct.wm_adsp_compr* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @wm_adsp_read_data_block(%struct.TYPE_7__* %141, i32 %142, i32 %143, i32 %144, i32 %147)
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %12, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %138
  %152 = load i32, i32* %12, align 4
  store i32 %152, i32* %3, align 4
  br label %194

153:                                              ; preds = %138
  %154 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %4, align 8
  %155 = getelementptr inbounds %struct.wm_adsp_compr, %struct.wm_adsp_compr* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @WM_ADSP_DATA_WORD_SIZE, align 4
  %159 = call i32 @wm_adsp_remove_padding(i32 %156, i32 %157, i32 %158)
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %6, align 8
  %163 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, %161
  store i64 %165, i64* %163, align 8
  %166 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %6, align 8
  %167 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %6, align 8
  %170 = call i64 @wm_adsp_buffer_size(%struct.wm_adsp_compr_buf* %169)
  %171 = icmp eq i64 %168, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %153
  %173 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %6, align 8
  %174 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %173, i32 0, i32 0
  store i64 0, i64* %174, align 8
  br label %175

175:                                              ; preds = %172, %153
  %176 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %6, align 8
  %177 = load i32, i32* @next_read_index, align 4
  %178 = call i32 @HOST_BUFFER_FIELD(i32 %177)
  %179 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %6, align 8
  %180 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @wm_adsp_buffer_write(%struct.wm_adsp_compr_buf* %176, i32 %178, i64 %181)
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* %12, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %175
  %186 = load i32, i32* %12, align 4
  store i32 %186, i32* %3, align 4
  br label %194

187:                                              ; preds = %175
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %6, align 8
  %190 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = sub nsw i32 %191, %188
  store i32 %192, i32* %190, align 8
  %193 = load i32, i32* %9, align 4
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %187, %185, %151, %137, %62
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @wm_adsp_compr_frag_words(%struct.wm_adsp_compr*) #1

declare dso_local i32 @wm_adsp_read_data_block(%struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @wm_adsp_remove_padding(i32, i32, i32) #1

declare dso_local i64 @wm_adsp_buffer_size(%struct.wm_adsp_compr_buf*) #1

declare dso_local i32 @wm_adsp_buffer_write(%struct.wm_adsp_compr_buf*, i32, i64) #1

declare dso_local i32 @HOST_BUFFER_FIELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
