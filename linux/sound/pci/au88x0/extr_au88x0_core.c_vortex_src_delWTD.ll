; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_src_delWTD.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_src_delWTD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@VORTEX_SRCBLOCK_SR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"src alarm\0A\00", align 1
@VORTEX_SRC_CHNBASE = common dso_local global i8 0, align 1
@VORTEX_SRC_RTBASE = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"srcdelWTD: error, lifeboat overflow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8, i8)* @vortex_src_delWTD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vortex_src_delWTD(%struct.TYPE_6__* %0, i8 zeroext %1, i8 zeroext %2) #0 {
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
  %18 = load i32, i32* @VORTEX_SRCBLOCK_SR, align 4
  %19 = call i32 @hwread(i32 %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i8, i8* %7, align 1
  %21 = zext i8 %20 to i32
  %22 = shl i32 1, %21
  %23 = load i32, i32* %10, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %205

33:                                               ; preds = %3
  %34 = load i8, i8* @VORTEX_SRC_CHNBASE, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* %7, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 2
  %39 = add nsw i32 %35, %38
  store i32 %39, i32* %13, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @hwread(i32 %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, 16
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %195

48:                                               ; preds = %33
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 15
  store i32 %50, i32* %11, align 4
  %51 = load i8, i8* %6, align 1
  %52 = zext i8 %51 to i32
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %48
  %56 = load i8, i8* @VORTEX_SRC_RTBASE, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* %6, align 1
  %59 = zext i8 %58 to i32
  %60 = shl i32 %59, 2
  %61 = add nsw i32 %57, %60
  store i32 %61, i32* %11, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @hwread(i32 %64, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @hwwrite(i32 %69, i32 %70, i32 %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @hwwrite(i32 %75, i32 %76, i32 0)
  br label %194

78:                                               ; preds = %48
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i8, i8* @VORTEX_SRC_RTBASE, align 1
  %83 = zext i8 %82 to i32
  %84 = load i32, i32* %11, align 4
  %85 = shl i32 %84, 2
  %86 = add nsw i32 %83, %85
  %87 = call i32 @hwread(i32 %81, i32 %86)
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %104, %78
  %89 = load i32, i32* %12, align 4
  %90 = and i32 %89, 15
  %91 = load i8, i8* %6, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp ne i32 %90, %92
  br i1 %93, label %94, label %120

94:                                               ; preds = %88
  %95 = load i32, i32* %14, align 4
  %96 = icmp sgt i32 %95, 15
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dev_warn(i32 %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %205

104:                                              ; preds = %94
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %12, align 4
  %107 = and i32 %106, 15
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = shl i32 %108, 2
  store i32 %109, i32* %13, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i8, i8* @VORTEX_SRC_RTBASE, align 1
  %114 = zext i8 %113 to i32
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %114, %115
  %117 = call i32 @hwread(i32 %112, i32 %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %88

120:                                              ; preds = %88
  %121 = load i32, i32* %11, align 4
  %122 = shl i32 %121, 2
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %12, align 4
  %124 = and i32 %123, 16
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %152

126:                                              ; preds = %120
  %127 = load i8, i8* @VORTEX_SRC_RTBASE, align 1
  %128 = zext i8 %127 to i32
  %129 = load i32, i32* %12, align 4
  %130 = and i32 %129, 15
  %131 = shl i32 %130, 2
  %132 = add nsw i32 %128, %131
  store i32 %132, i32* %11, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @hwread(i32 %135, i32 %136)
  store i32 %137, i32* %12, align 4
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i8, i8* @VORTEX_SRC_RTBASE, align 1
  %142 = zext i8 %141 to i32
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %142, %143
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @hwwrite(i32 %140, i32 %144, i32 %145)
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @hwwrite(i32 %149, i32 %150, i32 0)
  br label %193

152:                                              ; preds = %120
  %153 = load i32, i32* %8, align 4
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %155, label %168

155:                                              ; preds = %152
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i8, i8* @VORTEX_SRC_CHNBASE, align 1
  %160 = zext i8 %159 to i32
  %161 = load i8, i8* %7, align 1
  %162 = zext i8 %161 to i32
  %163 = shl i32 %162, 2
  %164 = add nsw i32 %160, %163
  %165 = load i32, i32* %9, align 4
  %166 = and i32 %165, 239
  %167 = call i32 @hwwrite(i32 %158, i32 %164, i32 %166)
  br label %184

168:                                              ; preds = %152
  %169 = load i32, i32* %12, align 4
  %170 = and i32 -32, %169
  %171 = load i32, i32* %11, align 4
  %172 = and i32 15, %171
  %173 = or i32 %170, %172
  store i32 %173, i32* %11, align 4
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i8, i8* @VORTEX_SRC_RTBASE, align 1
  %178 = zext i8 %177 to i32
  %179 = load i32, i32* %8, align 4
  %180 = shl i32 %179, 2
  %181 = add nsw i32 %178, %180
  %182 = load i32, i32* %11, align 4
  %183 = call i32 @hwwrite(i32 %176, i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %168, %155
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i8, i8* @VORTEX_SRC_RTBASE, align 1
  %189 = zext i8 %188 to i32
  %190 = load i32, i32* %13, align 4
  %191 = add nsw i32 %189, %190
  %192 = call i32 @hwwrite(i32 %187, i32 %191, i32 0)
  store i32 1, i32* %4, align 4
  br label %205

193:                                              ; preds = %126
  br label %194

194:                                              ; preds = %193, %55
  br label %204

195:                                              ; preds = %33
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %197 = load i8, i8* %7, align 1
  %198 = call i32 @vortex_src_dis_sr(%struct.TYPE_6__* %196, i8 zeroext %197)
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @hwwrite(i32 %201, i32 %202, i32 0)
  br label %204

204:                                              ; preds = %195, %194
  store i32 1, i32* %4, align 4
  br label %205

205:                                              ; preds = %204, %184, %97, %26
  %206 = load i32, i32* %4, align 4
  ret i32 %206
}

declare dso_local i32 @hwread(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @hwwrite(i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @vortex_src_dis_sr(%struct.TYPE_6__*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
