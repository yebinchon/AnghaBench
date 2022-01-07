; ModuleID = '/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_stereo_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_stereo_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_at73c213 = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_at73c213_stereo_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_at73c213_stereo_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_at73c213*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %18 = call %struct.snd_at73c213* @snd_kcontrol_chip(%struct.snd_kcontrol* %17)
  store %struct.snd_at73c213* %18, %struct.snd_at73c213** %6, align 8
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %20 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 255
  store i32 %22, i32* %7, align 4
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %24 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 8
  %27 = and i32 %26, 255
  store i32 %27, i32* %8, align 4
  %28 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %29 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 7
  store i32 %32, i32* %9, align 4
  %33 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %34 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 19
  %37 = and i32 %36, 7
  store i32 %37, i32* %10, align 4
  %38 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %39 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 24
  %42 = and i32 %41, 255
  store i32 %42, i32* %11, align 4
  %43 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %44 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 22
  %47 = and i32 %46, 1
  store i32 %47, i32* %12, align 4
  %48 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %49 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %54, %55
  %57 = trunc i32 %56 to i16
  store i16 %57, i16* %15, align 2
  %58 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %59 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %11, align 4
  %66 = and i32 %64, %65
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %16, align 2
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %2
  %71 = load i32, i32* %11, align 4
  %72 = load i16, i16* %15, align 2
  %73 = zext i16 %72 to i32
  %74 = sub nsw i32 %71, %73
  %75 = trunc i32 %74 to i16
  store i16 %75, i16* %15, align 2
  %76 = load i32, i32* %11, align 4
  %77 = load i16, i16* %16, align 2
  %78 = zext i16 %77 to i32
  %79 = sub nsw i32 %76, %78
  %80 = trunc i32 %79 to i16
  store i16 %80, i16* %16, align 2
  br label %81

81:                                               ; preds = %70, %2
  %82 = load i32, i32* %9, align 4
  %83 = load i16, i16* %15, align 2
  %84 = zext i16 %83 to i32
  %85 = shl i32 %84, %82
  %86 = trunc i32 %85 to i16
  store i16 %86, i16* %15, align 2
  %87 = load i32, i32* %10, align 4
  %88 = load i16, i16* %16, align 2
  %89 = zext i16 %88 to i32
  %90 = shl i32 %89, %87
  %91 = trunc i32 %90 to i16
  store i16 %91, i16* %16, align 2
  %92 = load %struct.snd_at73c213*, %struct.snd_at73c213** %6, align 8
  %93 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %92, i32 0, i32 1
  %94 = call i32 @mutex_lock(i32* %93)
  %95 = load %struct.snd_at73c213*, %struct.snd_at73c213** %6, align 8
  %96 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %9, align 4
  %104 = shl i32 %102, %103
  %105 = xor i32 %104, -1
  %106 = and i32 %101, %105
  %107 = load i16, i16* %15, align 2
  %108 = zext i16 %107 to i32
  %109 = or i32 %106, %108
  %110 = trunc i32 %109 to i16
  store i16 %110, i16* %15, align 2
  %111 = load %struct.snd_at73c213*, %struct.snd_at73c213** %6, align 8
  %112 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %10, align 4
  %120 = shl i32 %118, %119
  %121 = xor i32 %120, -1
  %122 = and i32 %117, %121
  %123 = load i16, i16* %16, align 2
  %124 = zext i16 %123 to i32
  %125 = or i32 %122, %124
  %126 = trunc i32 %125 to i16
  store i16 %126, i16* %16, align 2
  %127 = load i16, i16* %15, align 2
  %128 = zext i16 %127 to i32
  %129 = load %struct.snd_at73c213*, %struct.snd_at73c213** %6, align 8
  %130 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %128, %135
  br i1 %136, label %148, label %137

137:                                              ; preds = %81
  %138 = load i16, i16* %16, align 2
  %139 = zext i16 %138 to i32
  %140 = load %struct.snd_at73c213*, %struct.snd_at73c213** %6, align 8
  %141 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %139, %146
  br label %148

148:                                              ; preds = %137, %81
  %149 = phi i1 [ true, %81 ], [ %147, %137 ]
  %150 = zext i1 %149 to i32
  store i32 %150, i32* %13, align 4
  %151 = load %struct.snd_at73c213*, %struct.snd_at73c213** %6, align 8
  %152 = load i32, i32* %7, align 4
  %153 = load i16, i16* %15, align 2
  %154 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %151, i32 %152, i16 zeroext %153)
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %14, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %148
  %158 = load %struct.snd_at73c213*, %struct.snd_at73c213** %6, align 8
  %159 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %158, i32 0, i32 1
  %160 = call i32 @mutex_unlock(i32* %159)
  br label %177

161:                                              ; preds = %148
  %162 = load %struct.snd_at73c213*, %struct.snd_at73c213** %6, align 8
  %163 = load i32, i32* %8, align 4
  %164 = load i16, i16* %16, align 2
  %165 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %162, i32 %163, i16 zeroext %164)
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %14, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %161
  %169 = load %struct.snd_at73c213*, %struct.snd_at73c213** %6, align 8
  %170 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %169, i32 0, i32 1
  %171 = call i32 @mutex_unlock(i32* %170)
  br label %177

172:                                              ; preds = %161
  %173 = load %struct.snd_at73c213*, %struct.snd_at73c213** %6, align 8
  %174 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %173, i32 0, i32 1
  %175 = call i32 @mutex_unlock(i32* %174)
  %176 = load i32, i32* %13, align 4
  store i32 %176, i32* %3, align 4
  br label %179

177:                                              ; preds = %168, %157
  %178 = load i32, i32* %14, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %177, %172
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.snd_at73c213* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_at73c213_write_reg(%struct.snd_at73c213*, i32, i16 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
