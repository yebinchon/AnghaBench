; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.atiixp_dma* }
%struct.atiixp_dma = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.atiixp*)*, i32 (%struct.atiixp*, i32)*, i64 }
%struct.atiixp = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_atiixp_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_atiixp_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.atiixp*, align 8
  %7 = alloca %struct.atiixp_dma*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.atiixp* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.atiixp* %10, %struct.atiixp** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.atiixp_dma*, %struct.atiixp_dma** %14, align 8
  store %struct.atiixp_dma* %15, %struct.atiixp_dma** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %17 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32 (%struct.atiixp*, i32)*, i32 (%struct.atiixp*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.atiixp*, i32)* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %24 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (%struct.atiixp*)*, i32 (%struct.atiixp*)** %26, align 8
  %28 = icmp ne i32 (%struct.atiixp*)* %27, null
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %22, %2
  %31 = phi i1 [ true, %2 ], [ %29, %22 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @snd_BUG_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %147

38:                                               ; preds = %30
  %39 = load %struct.atiixp*, %struct.atiixp** %6, align 8
  %40 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %39, i32 0, i32 0
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load i32, i32* %5, align 4
  switch i32 %42, label %120 [
    i32 130, label %43
    i32 132, label %43
    i32 131, label %43
    i32 129, label %82
    i32 133, label %82
    i32 128, label %82
  ]

43:                                               ; preds = %38, %38, %38
  %44 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %45 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %43
  %49 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %50 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %48
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %54, 131
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %58 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.atiixp*, %struct.atiixp** %6, align 8
  %61 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %64 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %62, %67
  %69 = call i32 @writel(i32 %59, i64 %68)
  br label %70

70:                                               ; preds = %56, %53, %48, %43
  %71 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %72 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32 (%struct.atiixp*, i32)*, i32 (%struct.atiixp*, i32)** %74, align 8
  %76 = load %struct.atiixp*, %struct.atiixp** %6, align 8
  %77 = call i32 %75(%struct.atiixp* %76, i32 1)
  %78 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %79 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %81 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  br label %123

82:                                               ; preds = %38, %38, %38
  %83 = load i32, i32* %5, align 4
  %84 = icmp eq i32 %83, 128
  %85 = zext i1 %84 to i32
  %86 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %87 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %89 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %82
  %93 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %94 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %92
  %98 = load %struct.atiixp*, %struct.atiixp** %6, align 8
  %99 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %102 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %101, i32 0, i32 2
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %100, %105
  %107 = call i32 @readl(i64 %106)
  %108 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %109 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %97, %92, %82
  %111 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %112 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %111, i32 0, i32 2
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32 (%struct.atiixp*, i32)*, i32 (%struct.atiixp*, i32)** %114, align 8
  %116 = load %struct.atiixp*, %struct.atiixp** %6, align 8
  %117 = call i32 %115(%struct.atiixp* %116, i32 0)
  %118 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %119 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %118, i32 0, i32 0
  store i32 0, i32* %119, align 8
  br label %123

120:                                              ; preds = %38
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %120, %110, %70
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %142, label %126

126:                                              ; preds = %123
  %127 = load %struct.atiixp*, %struct.atiixp** %6, align 8
  %128 = call i32 @snd_atiixp_check_bus_busy(%struct.atiixp* %127)
  %129 = load i32, i32* %5, align 4
  %130 = icmp eq i32 %129, 129
  br i1 %130, label %131, label %141

131:                                              ; preds = %126
  %132 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %133 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %132, i32 0, i32 2
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32 (%struct.atiixp*)*, i32 (%struct.atiixp*)** %135, align 8
  %137 = load %struct.atiixp*, %struct.atiixp** %6, align 8
  %138 = call i32 %136(%struct.atiixp* %137)
  %139 = load %struct.atiixp*, %struct.atiixp** %6, align 8
  %140 = call i32 @snd_atiixp_check_bus_busy(%struct.atiixp* %139)
  br label %141

141:                                              ; preds = %131, %126
  br label %142

142:                                              ; preds = %141, %123
  %143 = load %struct.atiixp*, %struct.atiixp** %6, align 8
  %144 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %143, i32 0, i32 0
  %145 = call i32 @spin_unlock(i32* %144)
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %142, %35
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local %struct.atiixp* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @snd_atiixp_check_bus_busy(%struct.atiixp*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
