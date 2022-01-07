; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_put_double.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_put_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_wss = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_wss_put_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_wss*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = call %struct.snd_wss* @snd_kcontrol_chip(%struct.snd_kcontrol* %16)
  store %struct.snd_wss* %17, %struct.snd_wss** %5, align 8
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %19 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 255
  store i32 %21, i32* %7, align 4
  %22 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %23 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 8
  %26 = and i32 %25, 255
  store i32 %26, i32* %8, align 4
  %27 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %28 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 16
  %31 = and i32 %30, 7
  store i32 %31, i32* %9, align 4
  %32 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %33 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 19
  %36 = and i32 %35, 7
  store i32 %36, i32* %10, align 4
  %37 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %38 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 24
  %41 = and i32 %40, 255
  store i32 %41, i32* %11, align 4
  %42 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %43 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 22
  %46 = and i32 %45, 1
  store i32 %46, i32* %12, align 4
  %47 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %48 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = and i32 %53, %54
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* %14, align 2
  %57 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %58 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %63, %64
  %66 = trunc i32 %65 to i16
  store i16 %66, i16* %15, align 2
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %2
  %70 = load i32, i32* %11, align 4
  %71 = load i16, i16* %14, align 2
  %72 = zext i16 %71 to i32
  %73 = sub nsw i32 %70, %72
  %74 = trunc i32 %73 to i16
  store i16 %74, i16* %14, align 2
  %75 = load i32, i32* %11, align 4
  %76 = load i16, i16* %15, align 2
  %77 = zext i16 %76 to i32
  %78 = sub nsw i32 %75, %77
  %79 = trunc i32 %78 to i16
  store i16 %79, i16* %15, align 2
  br label %80

80:                                               ; preds = %69, %2
  %81 = load i32, i32* %9, align 4
  %82 = load i16, i16* %14, align 2
  %83 = zext i16 %82 to i32
  %84 = shl i32 %83, %81
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %14, align 2
  %86 = load i32, i32* %10, align 4
  %87 = load i16, i16* %15, align 2
  %88 = zext i16 %87 to i32
  %89 = shl i32 %88, %86
  %90 = trunc i32 %89 to i16
  store i16 %90, i16* %15, align 2
  %91 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %92 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %91, i32 0, i32 1
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @spin_lock_irqsave(i32* %92, i64 %93)
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %163

98:                                               ; preds = %80
  %99 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %100 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %9, align 4
  %108 = shl i32 %106, %107
  %109 = xor i32 %108, -1
  %110 = and i32 %105, %109
  %111 = load i16, i16* %14, align 2
  %112 = zext i16 %111 to i32
  %113 = or i32 %110, %112
  %114 = trunc i32 %113 to i16
  store i16 %114, i16* %14, align 2
  %115 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %116 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %10, align 4
  %124 = shl i32 %122, %123
  %125 = xor i32 %124, -1
  %126 = and i32 %121, %125
  %127 = load i16, i16* %15, align 2
  %128 = zext i16 %127 to i32
  %129 = or i32 %126, %128
  %130 = trunc i32 %129 to i16
  store i16 %130, i16* %15, align 2
  %131 = load i16, i16* %14, align 2
  %132 = zext i16 %131 to i32
  %133 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %134 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %132, %139
  br i1 %140, label %152, label %141

141:                                              ; preds = %98
  %142 = load i16, i16* %15, align 2
  %143 = zext i16 %142 to i32
  %144 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %145 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %143, %150
  br label %152

152:                                              ; preds = %141, %98
  %153 = phi i1 [ true, %98 ], [ %151, %141 ]
  %154 = zext i1 %153 to i32
  store i32 %154, i32* %13, align 4
  %155 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load i16, i16* %14, align 2
  %158 = call i32 @snd_wss_out(%struct.snd_wss* %155, i32 %156, i16 zeroext %157)
  %159 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %160 = load i32, i32* %8, align 4
  %161 = load i16, i16* %15, align 2
  %162 = call i32 @snd_wss_out(%struct.snd_wss* %159, i32 %160, i16 zeroext %161)
  br label %203

163:                                              ; preds = %80
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* %9, align 4
  %166 = shl i32 %164, %165
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %10, align 4
  %169 = shl i32 %167, %168
  %170 = or i32 %166, %169
  store i32 %170, i32* %11, align 4
  %171 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %172 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %11, align 4
  %179 = xor i32 %178, -1
  %180 = and i32 %177, %179
  %181 = load i16, i16* %14, align 2
  %182 = zext i16 %181 to i32
  %183 = or i32 %180, %182
  %184 = load i16, i16* %15, align 2
  %185 = zext i16 %184 to i32
  %186 = or i32 %183, %185
  %187 = trunc i32 %186 to i16
  store i16 %187, i16* %14, align 2
  %188 = load i16, i16* %14, align 2
  %189 = zext i16 %188 to i32
  %190 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %191 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %189, %196
  %198 = zext i1 %197 to i32
  store i32 %198, i32* %13, align 4
  %199 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %200 = load i32, i32* %7, align 4
  %201 = load i16, i16* %14, align 2
  %202 = call i32 @snd_wss_out(%struct.snd_wss* %199, i32 %200, i16 zeroext %201)
  br label %203

203:                                              ; preds = %163, %152
  %204 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %205 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %204, i32 0, i32 1
  %206 = load i64, i64* %6, align 8
  %207 = call i32 @spin_unlock_irqrestore(i32* %205, i64 %206)
  %208 = load i32, i32* %13, align 4
  ret i32 %208
}

declare dso_local %struct.snd_wss* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_wss_out(%struct.snd_wss*, i32, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
