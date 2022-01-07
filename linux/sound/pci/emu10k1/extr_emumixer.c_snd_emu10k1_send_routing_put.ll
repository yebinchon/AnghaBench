; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emumixer.c_snd_emu10k1_send_routing_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emumixer.c_snd_emu10k1_send_routing_put.c"
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

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_emu10k1_send_routing_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_send_routing_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_emu10k1*, align 8
  %7 = alloca %struct.snd_emu10k1_pcm_mixer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = call %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol* %14)
  store %struct.snd_emu10k1* %15, %struct.snd_emu10k1** %6, align 8
  %16 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %17 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %16, i32 0, i32 2
  %18 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %17, align 8
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %20 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %21 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %20, i32 0, i32 1
  %22 = call i64 @snd_ctl_get_ioffidx(%struct.snd_kcontrol* %19, i32* %21)
  %23 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %18, i64 %22
  store %struct.snd_emu10k1_pcm_mixer* %23, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  store i32 0, i32* %8, align 4
  %24 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %25 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 8, i32 4
  store i32 %29, i32* %12, align 4
  %30 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %31 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 63, i32 15
  store i32 %35, i32* %13, align 4
  %36 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %37 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %36, i32 0, i32 0
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %94, %2
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %43, label %97

43:                                               ; preds = %40
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %90, %43
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %93

48:                                               ; preds = %44
  %49 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %50 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %12, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %53, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %13, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %11, align 4
  %64 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %65 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %64, i32 0, i32 0
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %48
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %80 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %79, i32 0, i32 0
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %78, i32* %88, align 4
  store i32 1, i32* %8, align 4
  br label %89

89:                                               ; preds = %77, %48
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %44

93:                                               ; preds = %44
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %40

97:                                               ; preds = %40
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %187

100:                                              ; preds = %97
  %101 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %102 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %101, i32 0, i32 1
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = icmp ne %struct.TYPE_8__* %103, null
  br i1 %104, label %105, label %187

105:                                              ; preds = %100
  %106 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %107 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %106, i32 0, i32 1
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %110, i64 0
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = icmp ne %struct.TYPE_7__* %112, null
  br i1 %113, label %114, label %158

114:                                              ; preds = %105
  %115 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %116 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %115, i32 0, i32 1
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %119, i64 1
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = icmp ne %struct.TYPE_7__* %121, null
  br i1 %122, label %123, label %158

123:                                              ; preds = %114
  %124 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %125 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %126 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %125, i32 0, i32 1
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %129, i64 0
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %135 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %134, i32 0, i32 0
  %136 = load i32**, i32*** %135, align 8
  %137 = getelementptr inbounds i32*, i32** %136, i64 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = call i32 @update_emu10k1_fxrt(%struct.snd_emu10k1* %124, i32 %133, i32* %139)
  %141 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %142 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %143 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %142, i32 0, i32 1
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %146, i64 1
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %152 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %151, i32 0, i32 0
  %153 = load i32**, i32*** %152, align 8
  %154 = getelementptr inbounds i32*, i32** %153, i64 2
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = call i32 @update_emu10k1_fxrt(%struct.snd_emu10k1* %141, i32 %150, i32* %156)
  br label %186

158:                                              ; preds = %114, %105
  %159 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %160 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %159, i32 0, i32 1
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %163, i64 0
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = icmp ne %struct.TYPE_7__* %165, null
  br i1 %166, label %167, label %185

167:                                              ; preds = %158
  %168 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %169 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %170 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %169, i32 0, i32 1
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %173, i64 0
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %179 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %178, i32 0, i32 0
  %180 = load i32**, i32*** %179, align 8
  %181 = getelementptr inbounds i32*, i32** %180, i64 0
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = call i32 @update_emu10k1_fxrt(%struct.snd_emu10k1* %168, i32 %177, i32* %183)
  br label %185

185:                                              ; preds = %167, %158
  br label %186

186:                                              ; preds = %185, %123
  br label %187

187:                                              ; preds = %186, %100, %97
  %188 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %189 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %188, i32 0, i32 0
  %190 = load i64, i64* %5, align 8
  %191 = call i32 @spin_unlock_irqrestore(i32* %189, i64 %190)
  %192 = load i32, i32* %8, align 4
  ret i32 %192
}

declare dso_local %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i64 @snd_ctl_get_ioffidx(%struct.snd_kcontrol*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @update_emu10k1_fxrt(%struct.snd_emu10k1*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
