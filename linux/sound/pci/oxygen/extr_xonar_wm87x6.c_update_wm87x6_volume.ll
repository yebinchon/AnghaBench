; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_wm87x6.c_update_wm87x6_volume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_wm87x6.c_update_wm87x6_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32*, %struct.xonar_wm87x6* }
%struct.xonar_wm87x6 = type { i32* }

@update_wm87x6_volume.wm8766_regs = internal constant [6 x i64] [i64 133, i64 130, i64 132, i64 129, i64 131, i64 128], align 16
@WM8766_MASTDA = common dso_local global i64 0, align 8
@WM8766_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @update_wm87x6_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_wm87x6_volume(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_wm87x6*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %6 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %7 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %6, i32 0, i32 1
  %8 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %7, align 8
  store %struct.xonar_wm87x6* %8, %struct.xonar_wm87x6** %3, align 8
  %9 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %10 = call i32 @update_wm8776_volume(%struct.oxygen* %9)
  %11 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %12 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %17 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %15, %20
  br i1 %21, label %22, label %131

22:                                               ; preds = %1
  %23 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %24 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %29 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %27, %32
  br i1 %33, label %34, label %131

34:                                               ; preds = %22
  %35 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %36 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %41 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 5
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %39, %44
  br i1 %45, label %46, label %131

46:                                               ; preds = %34
  %47 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %48 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %53 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 6
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %51, %56
  br i1 %57, label %58, label %131

58:                                               ; preds = %46
  %59 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %60 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %65 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 7
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %63, %68
  br i1 %69, label %70, label %131

70:                                               ; preds = %58
  store i64 0, i64* %5, align 8
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %92, %70
  %72 = load i32, i32* %4, align 4
  %73 = icmp ult i32 %72, 6
  br i1 %73, label %74, label %95

74:                                               ; preds = %71
  %75 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %76 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %81 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [6 x i64], [6 x i64]* @update_wm87x6_volume.wm8766_regs, i64 0, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %79, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %74
  store i64 1, i64* %5, align 8
  br label %91

91:                                               ; preds = %90, %74
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %4, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %71

95:                                               ; preds = %71
  %96 = load i64, i64* %5, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %130

98:                                               ; preds = %95
  %99 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %100 = load i64, i64* @WM8766_MASTDA, align 8
  %101 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %102 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @WM8766_UPDATE, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @wm8766_write(%struct.oxygen* %99, i64 %100, i32 %107)
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %126, %98
  %110 = load i32, i32* %4, align 4
  %111 = icmp ult i32 %110, 6
  br i1 %111, label %112, label %129

112:                                              ; preds = %109
  %113 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %114 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %119 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [6 x i64], [6 x i64]* @update_wm87x6_volume.wm8766_regs, i64 0, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  store i32 %117, i32* %125, align 4
  br label %126

126:                                              ; preds = %112
  %127 = load i32, i32* %4, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %4, align 4
  br label %109

129:                                              ; preds = %109
  br label %130

130:                                              ; preds = %129, %95
  br label %206

131:                                              ; preds = %58, %46, %34, %22, %1
  store i64 0, i64* %5, align 8
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %160, %131
  %133 = load i32, i32* %4, align 4
  %134 = icmp ult i32 %133, 6
  br i1 %134, label %135, label %163

135:                                              ; preds = %132
  %136 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %137 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %4, align 4
  %140 = add i32 2, %139
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %145 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %4, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds [6 x i64], [6 x i64]* @update_wm87x6_volume.wm8766_regs, i64 0, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds i32, i32* %146, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %143, %152
  %154 = zext i1 %153 to i32
  %155 = load i32, i32* %4, align 4
  %156 = shl i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = load i64, i64* %5, align 8
  %159 = or i64 %158, %157
  store i64 %159, i64* %5, align 8
  br label %160

160:                                              ; preds = %135
  %161 = load i32, i32* %4, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %4, align 4
  br label %132

163:                                              ; preds = %132
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %202, %163
  %165 = load i32, i32* %4, align 4
  %166 = icmp ult i32 %165, 6
  br i1 %166, label %167, label %205

167:                                              ; preds = %164
  %168 = load i64, i64* %5, align 8
  %169 = load i32, i32* %4, align 4
  %170 = shl i32 1, %169
  %171 = sext i32 %170 to i64
  %172 = and i64 %168, %171
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %201

174:                                              ; preds = %167
  %175 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %176 = load i32, i32* %4, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds [6 x i64], [6 x i64]* @update_wm87x6_volume.wm8766_regs, i64 0, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %181 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %4, align 4
  %184 = add i32 2, %183
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i64, i64* %5, align 8
  %189 = load i32, i32* %4, align 4
  %190 = shl i32 62, %189
  %191 = sext i32 %190 to i64
  %192 = and i64 %188, %191
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %174
  br label %197

195:                                              ; preds = %174
  %196 = load i32, i32* @WM8766_UPDATE, align 4
  br label %197

197:                                              ; preds = %195, %194
  %198 = phi i32 [ 0, %194 ], [ %196, %195 ]
  %199 = or i32 %187, %198
  %200 = call i32 @wm8766_write(%struct.oxygen* %175, i64 %179, i32 %199)
  br label %201

201:                                              ; preds = %197, %167
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %4, align 4
  %204 = add i32 %203, 1
  store i32 %204, i32* %4, align 4
  br label %164

205:                                              ; preds = %164
  br label %206

206:                                              ; preds = %205, %130
  ret void
}

declare dso_local i32 @update_wm8776_volume(%struct.oxygen*) #1

declare dso_local i32 @wm8766_write(%struct.oxygen*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
