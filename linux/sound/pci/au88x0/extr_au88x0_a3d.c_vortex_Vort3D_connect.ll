; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_a3d.c_vortex_Vort3D_connect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_a3d.c_vortex_Vort3D_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64*, i32*, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }

@VORTEX_RESOURCE_MIXIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"vortex_Vort3D: ERROR: not enough free mixer resources.\0A\00", align 1
@MIX_DEFIGAIN = common dso_local global i32 0, align 4
@VOL_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32)* @vortex_Vort3D_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_Vort3D_connect(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @VORTEX_RESOURCE_MIXIN, align 4
  %12 = call i8* @vortex_adb_checkinout(%struct.TYPE_10__* %6, i32 %9, i32 %10, i32 %11)
  %13 = ptrtoint i8* %12 to i64
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  store i64 %13, i64* %17, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_warn(i32 %29, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %240

31:                                               ; preds = %2
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @VORTEX_RESOURCE_MIXIN, align 4
  %38 = call i8* @vortex_adb_checkinout(%struct.TYPE_10__* %32, i32 %35, i32 %36, i32 %37)
  %39 = ptrtoint i8* %38 to i64
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  store i64 %39, i64* %43, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %31
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_warn(i32 %55, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %240

57:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %80, %57
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %59, 4
  br i1 %60, label %61, label %83

61:                                               ; preds = %58
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = mul nsw i32 %64, 2
  %66 = call i64 @ADB_A3DOUT(i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @ADB_XTALKIN(i32 %67)
  %69 = call i32 @vortex_route(%struct.TYPE_10__* %62, i32 %63, i32 17, i64 %66, i32 %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = mul nsw i32 %72, 2
  %74 = call i64 @ADB_A3DOUT(i32 %73)
  %75 = add nsw i64 %74, 1
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 5, %76
  %78 = call i32 @ADB_XTALKIN(i32 %77)
  %79 = call i32 @vortex_route(%struct.TYPE_10__* %70, i32 %71, i32 17, i64 %75, i32 %78)
  br label %80

80:                                               ; preds = %61
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %58

83:                                               ; preds = %58
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i64 @ADB_XTALKOUT(i32 0)
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @ADB_MIXIN(i64 %91)
  %93 = call i32 @vortex_route(%struct.TYPE_10__* %84, i32 %85, i32 17, i64 %86, i32 %92)
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %95 = load i32, i32* %4, align 4
  %96 = call i64 @ADB_XTALKOUT(i32 1)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @ADB_MIXIN(i64 %101)
  %103 = call i32 @vortex_route(%struct.TYPE_10__* %94, i32 %95, i32 17, i64 %96, i32 %102)
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %105 = load i32, i32* %4, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @vortex_connection_mixin_mix(%struct.TYPE_10__* %104, i32 %105, i64 %110, i32 %115, i32 0)
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %118 = load i32, i32* %4, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @vortex_connection_mixin_mix(%struct.TYPE_10__* %117, i32 %118, i64 %123, i32 %128, i32 0)
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 0
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %83
  %144 = load i32, i32* @MIX_DEFIGAIN, align 4
  br label %147

145:                                              ; preds = %83
  %146 = load i32, i32* @VOL_MIN, align 4
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  %149 = call i32 @vortex_mix_setinputvolumebyte(%struct.TYPE_10__* %130, i32 %135, i64 %140, i32 %148)
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i64*, i64** %157, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 1
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* %4, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %147
  %164 = load i32, i32* @MIX_DEFIGAIN, align 4
  br label %167

165:                                              ; preds = %147
  %166 = load i32, i32* @VOL_MIN, align 4
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i32 [ %164, %163 ], [ %166, %165 ]
  %169 = call i32 @vortex_mix_setinputvolumebyte(%struct.TYPE_10__* %150, i32 %155, i64 %160, i32 %168)
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %171 = call i64 @VORTEX_IS_QUAD(%struct.TYPE_10__* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %240

173:                                              ; preds = %167
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %175 = load i32, i32* %4, align 4
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load i64*, i64** %177, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 2
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @vortex_connection_mixin_mix(%struct.TYPE_10__* %174, i32 %175, i64 %180, i32 %185, i32 0)
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %188 = load i32, i32* %4, align 4
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i64*, i64** %190, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 1
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 3
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @vortex_connection_mixin_mix(%struct.TYPE_10__* %187, i32 %188, i64 %193, i32 %198, i32 0)
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i64*, i64** %207, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 0
  %210 = load i64, i64* %209, align 8
  %211 = load i32, i32* %4, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %173
  %214 = load i32, i32* @MIX_DEFIGAIN, align 4
  br label %217

215:                                              ; preds = %173
  %216 = load i32, i32* @VOL_MIN, align 4
  br label %217

217:                                              ; preds = %215, %213
  %218 = phi i32 [ %214, %213 ], [ %216, %215 ]
  %219 = call i32 @vortex_mix_setinputvolumebyte(%struct.TYPE_10__* %200, i32 %205, i64 %210, i32 %218)
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 3
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = load i64*, i64** %227, align 8
  %229 = getelementptr inbounds i64, i64* %228, i64 1
  %230 = load i64, i64* %229, align 8
  %231 = load i32, i32* %4, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %217
  %234 = load i32, i32* @MIX_DEFIGAIN, align 4
  br label %237

235:                                              ; preds = %217
  %236 = load i32, i32* @VOL_MIN, align 4
  br label %237

237:                                              ; preds = %235, %233
  %238 = phi i32 [ %234, %233 ], [ %236, %235 ]
  %239 = call i32 @vortex_mix_setinputvolumebyte(%struct.TYPE_10__* %220, i32 %225, i64 %230, i32 %238)
  br label %240

240:                                              ; preds = %24, %50, %237, %167
  ret void
}

declare dso_local i8* @vortex_adb_checkinout(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @vortex_route(%struct.TYPE_10__*, i32, i32, i64, i32) #1

declare dso_local i64 @ADB_A3DOUT(i32) #1

declare dso_local i32 @ADB_XTALKIN(i32) #1

declare dso_local i64 @ADB_XTALKOUT(i32) #1

declare dso_local i32 @ADB_MIXIN(i64) #1

declare dso_local i32 @vortex_connection_mixin_mix(%struct.TYPE_10__*, i32, i64, i32, i32) #1

declare dso_local i32 @vortex_mix_setinputvolumebyte(%struct.TYPE_10__*, i32, i64, i32) #1

declare dso_local i64 @VORTEX_IS_QUAD(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
