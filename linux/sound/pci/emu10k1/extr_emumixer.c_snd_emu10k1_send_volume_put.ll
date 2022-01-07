; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emumixer.c_snd_emu10k1_send_volume_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emumixer.c_snd_emu10k1_send_volume_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.snd_emu10k1 = type { i32, i64, %struct.snd_emu10k1_pcm_mixer* }
%struct.snd_emu10k1_pcm_mixer = type { i32**, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_emu10k1_send_volume_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_send_volume_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_emu10k1*, align 8
  %7 = alloca %struct.snd_emu10k1_pcm_mixer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = call %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.snd_emu10k1* %13, %struct.snd_emu10k1** %6, align 8
  %14 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %15 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %14, i32 0, i32 2
  %16 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %15, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %18 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %19 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %18, i32 0, i32 1
  %20 = call i64 @snd_ctl_get_ioffidx(%struct.snd_kcontrol* %17, i32* %19)
  %21 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %16, i64 %20
  store %struct.snd_emu10k1_pcm_mixer* %21, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  store i32 0, i32* %8, align 4
  %22 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %23 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 8, i32 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %29 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %28, i32 0, i32 0
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %82, %2
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %11, align 4
  %35 = mul nsw i32 3, %34
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %85

37:                                               ; preds = %32
  %38 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %39 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 255
  store i32 %47, i32* %10, align 4
  %48 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %49 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %48, i32 0, i32 0
  %50 = load i32**, i32*** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %11, align 4
  %53 = sdiv i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %50, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %11, align 4
  %59 = srem i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %37
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %68 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %67, i32 0, i32 0
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sdiv i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %69, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %11, align 4
  %78 = srem i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  store i32 %66, i32* %80, align 4
  store i32 1, i32* %8, align 4
  br label %81

81:                                               ; preds = %65, %37
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %32

85:                                               ; preds = %32
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %175

88:                                               ; preds = %85
  %89 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %90 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %89, i32 0, i32 1
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = icmp ne %struct.TYPE_8__* %91, null
  br i1 %92, label %93, label %175

93:                                               ; preds = %88
  %94 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %95 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %94, i32 0, i32 1
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %98, i64 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = icmp ne %struct.TYPE_7__* %100, null
  br i1 %101, label %102, label %146

102:                                              ; preds = %93
  %103 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %104 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %103, i32 0, i32 1
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %107, i64 1
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = icmp ne %struct.TYPE_7__* %109, null
  br i1 %110, label %111, label %146

111:                                              ; preds = %102
  %112 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %113 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %114 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %113, i32 0, i32 1
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %117, i64 0
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %123 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %122, i32 0, i32 0
  %124 = load i32**, i32*** %123, align 8
  %125 = getelementptr inbounds i32*, i32** %124, i64 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = call i32 @update_emu10k1_send_volume(%struct.snd_emu10k1* %112, i32 %121, i32* %127)
  %129 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %130 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %131 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %130, i32 0, i32 1
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %134, i64 1
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %140 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %139, i32 0, i32 0
  %141 = load i32**, i32*** %140, align 8
  %142 = getelementptr inbounds i32*, i32** %141, i64 2
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = call i32 @update_emu10k1_send_volume(%struct.snd_emu10k1* %129, i32 %138, i32* %144)
  br label %174

146:                                              ; preds = %102, %93
  %147 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %148 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %147, i32 0, i32 1
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %151, i64 0
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = icmp ne %struct.TYPE_7__* %153, null
  br i1 %154, label %155, label %173

155:                                              ; preds = %146
  %156 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %157 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %158 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %157, i32 0, i32 1
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %161, i64 0
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %167 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %166, i32 0, i32 0
  %168 = load i32**, i32*** %167, align 8
  %169 = getelementptr inbounds i32*, i32** %168, i64 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = call i32 @update_emu10k1_send_volume(%struct.snd_emu10k1* %156, i32 %165, i32* %171)
  br label %173

173:                                              ; preds = %155, %146
  br label %174

174:                                              ; preds = %173, %111
  br label %175

175:                                              ; preds = %174, %88, %85
  %176 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %177 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %176, i32 0, i32 0
  %178 = load i64, i64* %5, align 8
  %179 = call i32 @spin_unlock_irqrestore(i32* %177, i64 %178)
  %180 = load i32, i32* %8, align 4
  ret i32 %180
}

declare dso_local %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i64 @snd_ctl_get_ioffidx(%struct.snd_kcontrol*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @update_emu10k1_send_volume(%struct.snd_emu10k1*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
