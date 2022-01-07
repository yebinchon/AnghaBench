; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_mixer_delWTD.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_mixer_delWTD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@VORTEX_MIXER_SR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"mix ALARM %x\0A\00", align 1
@VORTEX_MIXER_CHNBASE = common dso_local global i8 0, align 1
@VORTEX_MIXER_RTBASE = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"mixdelWTD: error lifeboat overflow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8, i8)* @vortex_mixer_delWTD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vortex_mixer_delWTD(%struct.TYPE_6__* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @VORTEX_MIXER_SR, align 4
  %19 = call i32 @hwread(i32 %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i8, i8* %7, align 1
  %21 = zext i8 %20 to i32
  %22 = shl i32 1, %21
  %23 = load i32, i32* %10, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 (i32, i8*, ...) @dev_err(i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 0, i32* %4, align 4
  br label %206

34:                                               ; preds = %3
  %35 = load i8, i8* @VORTEX_MIXER_CHNBASE, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* %7, align 1
  %38 = zext i8 %37 to i32
  %39 = shl i32 %38, 2
  %40 = add nsw i32 %36, %39
  store i32 %40, i32* %13, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @hwread(i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, 16
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %196

49:                                               ; preds = %34
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, 15
  store i32 %51, i32* %11, align 4
  %52 = load i8, i8* %6, align 1
  %53 = zext i8 %52 to i32
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %49
  %57 = load i8, i8* @VORTEX_MIXER_RTBASE, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* %6, align 1
  %60 = zext i8 %59 to i32
  %61 = shl i32 %60, 2
  %62 = add nsw i32 %58, %61
  store i32 %62, i32* %11, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @hwread(i32 %65, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @hwwrite(i32 %70, i32 %71, i32 %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @hwwrite(i32 %76, i32 %77, i32 0)
  br label %195

79:                                               ; preds = %49
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i8, i8* @VORTEX_MIXER_RTBASE, align 1
  %84 = zext i8 %83 to i32
  %85 = load i32, i32* %11, align 4
  %86 = shl i32 %85, 2
  %87 = add nsw i32 %84, %86
  %88 = call i32 @hwread(i32 %82, i32 %87)
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %105, %79
  %90 = load i32, i32* %12, align 4
  %91 = and i32 %90, 15
  %92 = load i8, i8* %6, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp ne i32 %91, %93
  br i1 %94, label %95, label %121

95:                                               ; preds = %89
  %96 = load i32, i32* %14, align 4
  %97 = icmp sgt i32 %96, 15
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, ...) @dev_err(i32 %103, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %206

105:                                              ; preds = %95
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %12, align 4
  %108 = and i32 %107, 15
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = shl i32 %109, 2
  store i32 %110, i32* %13, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i8, i8* @VORTEX_MIXER_RTBASE, align 1
  %115 = zext i8 %114 to i32
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %115, %116
  %118 = call i32 @hwread(i32 %113, i32 %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %14, align 4
  br label %89

121:                                              ; preds = %89
  %122 = load i32, i32* %11, align 4
  %123 = shl i32 %122, 2
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %12, align 4
  %125 = and i32 %124, 16
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %153

127:                                              ; preds = %121
  %128 = load i8, i8* @VORTEX_MIXER_RTBASE, align 1
  %129 = zext i8 %128 to i32
  %130 = load i32, i32* %12, align 4
  %131 = and i32 %130, 15
  %132 = shl i32 %131, 2
  %133 = add nsw i32 %129, %132
  store i32 %133, i32* %11, align 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @hwread(i32 %136, i32 %137)
  store i32 %138, i32* %12, align 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i8, i8* @VORTEX_MIXER_RTBASE, align 1
  %143 = zext i8 %142 to i32
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %143, %144
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @hwwrite(i32 %141, i32 %145, i32 %146)
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @hwwrite(i32 %150, i32 %151, i32 0)
  br label %194

153:                                              ; preds = %121
  %154 = load i32, i32* %8, align 4
  %155 = icmp eq i32 %154, -1
  br i1 %155, label %156, label %169

156:                                              ; preds = %153
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i8, i8* @VORTEX_MIXER_CHNBASE, align 1
  %161 = zext i8 %160 to i32
  %162 = load i8, i8* %7, align 1
  %163 = zext i8 %162 to i32
  %164 = shl i32 %163, 2
  %165 = add nsw i32 %161, %164
  %166 = load i32, i32* %9, align 4
  %167 = and i32 %166, 239
  %168 = call i32 @hwwrite(i32 %159, i32 %165, i32 %167)
  br label %185

169:                                              ; preds = %153
  %170 = load i32, i32* %12, align 4
  %171 = and i32 -32, %170
  %172 = load i32, i32* %11, align 4
  %173 = and i32 15, %172
  %174 = or i32 %171, %173
  store i32 %174, i32* %11, align 4
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i8, i8* @VORTEX_MIXER_RTBASE, align 1
  %179 = zext i8 %178 to i32
  %180 = load i32, i32* %8, align 4
  %181 = shl i32 %180, 2
  %182 = add nsw i32 %179, %181
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @hwwrite(i32 %177, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %169, %156
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i8, i8* @VORTEX_MIXER_RTBASE, align 1
  %190 = zext i8 %189 to i32
  %191 = load i32, i32* %13, align 4
  %192 = add nsw i32 %190, %191
  %193 = call i32 @hwwrite(i32 %188, i32 %192, i32 0)
  store i32 1, i32* %4, align 4
  br label %206

194:                                              ; preds = %127
  br label %195

195:                                              ; preds = %194, %56
  br label %205

196:                                              ; preds = %34
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %198 = load i8, i8* %7, align 1
  %199 = call i32 @vortex_mixer_dis_sr(%struct.TYPE_6__* %197, i8 zeroext %198)
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %13, align 4
  %204 = call i32 @hwwrite(i32 %202, i32 %203, i32 0)
  br label %205

205:                                              ; preds = %196, %195
  store i32 1, i32* %4, align 4
  br label %206

206:                                              ; preds = %205, %185, %98, %26
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local i32 @hwread(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @hwwrite(i32, i32, i32) #1

declare dso_local i32 @vortex_mixer_dis_sr(%struct.TYPE_6__*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
