; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_pcm_vol_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_pcm_vol_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.snd_ymfpci = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.snd_ymfpci_pcm* }
%struct.snd_ymfpci_pcm = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ymfpci_pcm_vol_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_pcm_vol_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_ymfpci*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm_substream*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.snd_ymfpci_pcm*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.snd_ymfpci* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_ymfpci* %12, %struct.snd_ymfpci** %6, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %25 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %23, %31
  br i1 %32, label %50, label %33

33:                                               ; preds = %2
  %34 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %35 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %42 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %40, %48
  br i1 %49, label %50, label %153

50:                                               ; preds = %33, %2
  %51 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %52 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %59 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32 %57, i32* %64, align 4
  %65 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %66 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %73 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %72, i32 0, i32 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  store i32 %71, i32* %78, align 4
  %79 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %80 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %79, i32 0, i32 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %86, 32768
  br i1 %87, label %88, label %96

88:                                               ; preds = %50
  %89 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %90 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %89, i32 0, i32 1
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  store i32 32768, i32* %95, align 4
  br label %96

96:                                               ; preds = %88, %50
  %97 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %98 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %97, i32 0, i32 1
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp sgt i32 %104, 32768
  br i1 %105, label %106, label %114

106:                                              ; preds = %96
  %107 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %108 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %107, i32 0, i32 1
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  store i32 32768, i32* %113, align 4
  br label %114

114:                                              ; preds = %106, %96
  %115 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %116 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to %struct.snd_pcm_substream*
  store %struct.snd_pcm_substream* %118, %struct.snd_pcm_substream** %8, align 8
  %119 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %120 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %119, i32 0, i32 0
  %121 = load i64, i64* %9, align 8
  %122 = call i32 @spin_lock_irqsave(i32* %120, i64 %121)
  %123 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %124 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %123, i32 0, i32 0
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = icmp ne %struct.TYPE_10__* %125, null
  br i1 %126, label %127, label %148

127:                                              ; preds = %114
  %128 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %129 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %128, i32 0, i32 0
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %131, align 8
  %133 = icmp ne %struct.snd_ymfpci_pcm* %132, null
  br i1 %133, label %134, label %148

134:                                              ; preds = %127
  %135 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %136 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %135, i32 0, i32 0
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %138, align 8
  store %struct.snd_ymfpci_pcm* %139, %struct.snd_ymfpci_pcm** %10, align 8
  %140 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %10, align 8
  %141 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %134
  %145 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %10, align 8
  %146 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %145, i32 0, i32 0
  store i32 2, i32* %146, align 4
  br label %147

147:                                              ; preds = %144, %134
  br label %148

148:                                              ; preds = %147, %127, %114
  %149 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %150 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %149, i32 0, i32 0
  %151 = load i64, i64* %9, align 8
  %152 = call i32 @spin_unlock_irqrestore(i32* %150, i64 %151)
  store i32 1, i32* %3, align 4
  br label %154

153:                                              ; preds = %33
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %153, %148
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.snd_ymfpci* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
