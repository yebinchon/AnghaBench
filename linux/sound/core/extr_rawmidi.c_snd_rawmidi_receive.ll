; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_snd_rawmidi_receive.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_snd_rawmidi_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { i64, i32, i32, %struct.snd_rawmidi_runtime* }
%struct.snd_rawmidi_runtime = type { i8*, i32, i32, i32, i32, i32, i32, i64, i64 }

@EBADFD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"snd_rawmidi_receive: input is not active!!!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_rawmidi_substream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_rawmidi_runtime*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %13 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %12, i32 0, i32 3
  %14 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %13, align 8
  store %struct.snd_rawmidi_runtime* %14, %struct.snd_rawmidi_runtime** %11, align 8
  %15 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %16 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EBADFD, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %241

22:                                               ; preds = %3
  %23 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %24 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %29 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @rmidi_dbg(i32 %30, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %241

34:                                               ; preds = %22
  %35 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %36 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %35, i32 0, i32 4
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %85

41:                                               ; preds = %34
  %42 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %43 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %47 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %50 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %79

53:                                               ; preds = %41
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %58 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %61 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %59, i64 %64
  store i8 %56, i8* %65, align 1
  %66 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %67 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %70 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = srem i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %74 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %84

79:                                               ; preds = %41
  %80 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %81 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %80, i32 0, i32 8
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %79, %53
  br label %213

85:                                               ; preds = %34
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %89 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, %87
  store i64 %91, i64* %89, align 8
  %92 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %93 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %96 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %94, %97
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %85
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %102, %85
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %107 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %110 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %108, %111
  %113 = icmp sgt i32 %105, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %104
  %115 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %116 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %119 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 %117, %120
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %114, %104
  %123 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %124 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %127 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %125, i64 %129
  %131 = load i8*, i8** %6, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @memcpy(i8* %130, i8* %131, i32 %132)
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %136 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %140 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %143 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = srem i32 %144, %141
  store i32 %145, i32* %143, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %148 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %7, align 4
  %153 = sub nsw i32 %152, %151
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %212

159:                                              ; preds = %122
  %160 = load i32, i32* %10, align 4
  %161 = load i8*, i8** %6, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  store i8* %163, i8** %6, align 8
  %164 = load i32, i32* %7, align 4
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %10, align 4
  %166 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %167 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %170 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = sub nsw i32 %168, %171
  %173 = icmp sgt i32 %165, %172
  br i1 %173, label %174, label %190

174:                                              ; preds = %159
  %175 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %176 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %179 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = sub nsw i32 %177, %180
  store i32 %181, i32* %10, align 4
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* %10, align 4
  %184 = sub nsw i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %187 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %186, i32 0, i32 8
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %188, %185
  store i64 %189, i64* %187, align 8
  br label %190

190:                                              ; preds = %174, %159
  %191 = load i32, i32* %10, align 4
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %211

193:                                              ; preds = %190
  %194 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %195 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = load i8*, i8** %6, align 8
  %198 = load i32, i32* %10, align 4
  %199 = call i32 @memcpy(i8* %196, i8* %197, i32 %198)
  %200 = load i32, i32* %10, align 4
  %201 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %202 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 8
  %203 = load i32, i32* %10, align 4
  %204 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %205 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = add nsw i32 %206, %203
  store i32 %207, i32* %205, align 8
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %209, %208
  store i32 %210, i32* %9, align 4
  br label %211

211:                                              ; preds = %193, %190
  br label %212

212:                                              ; preds = %211, %122
  br label %213

213:                                              ; preds = %212, %84
  %214 = load i32, i32* %9, align 4
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %235

216:                                              ; preds = %213
  %217 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %218 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %217, i32 0, i32 7
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %216
  %222 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %223 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %222, i32 0, i32 6
  %224 = call i32 @schedule_work(i32* %223)
  br label %234

225:                                              ; preds = %216
  %226 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %227 = call i64 @snd_rawmidi_ready(%struct.snd_rawmidi_substream* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %225
  %230 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %231 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %230, i32 0, i32 5
  %232 = call i32 @wake_up(i32* %231)
  br label %233

233:                                              ; preds = %229, %225
  br label %234

234:                                              ; preds = %233, %221
  br label %235

235:                                              ; preds = %234, %213
  %236 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %237 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %236, i32 0, i32 4
  %238 = load i64, i64* %8, align 8
  %239 = call i32 @spin_unlock_irqrestore(i32* %237, i64 %238)
  %240 = load i32, i32* %9, align 4
  store i32 %240, i32* %4, align 4
  br label %241

241:                                              ; preds = %235, %27, %19
  %242 = load i32, i32* %4, align 4
  ret i32 %242
}

declare dso_local i32 @rmidi_dbg(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i64 @snd_rawmidi_ready(%struct.snd_rawmidi_substream*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
