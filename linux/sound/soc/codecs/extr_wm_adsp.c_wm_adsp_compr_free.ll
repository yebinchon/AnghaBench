; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_compr_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_compr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wm_adsp_compr* }
%struct.wm_adsp_compr = type { %struct.wm_adsp_compr*, i32, %struct.wm_adsp* }
%struct.wm_adsp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm_adsp_compr_free(%struct.snd_compr_stream* %0) #0 {
  %2 = alloca %struct.snd_compr_stream*, align 8
  %3 = alloca %struct.wm_adsp_compr*, align 8
  %4 = alloca %struct.wm_adsp*, align 8
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %2, align 8
  %5 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %8, align 8
  store %struct.wm_adsp_compr* %9, %struct.wm_adsp_compr** %3, align 8
  %10 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %3, align 8
  %11 = getelementptr inbounds %struct.wm_adsp_compr, %struct.wm_adsp_compr* %10, i32 0, i32 2
  %12 = load %struct.wm_adsp*, %struct.wm_adsp** %11, align 8
  store %struct.wm_adsp* %12, %struct.wm_adsp** %4, align 8
  %13 = load %struct.wm_adsp*, %struct.wm_adsp** %4, align 8
  %14 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %3, align 8
  %17 = call i32 @wm_adsp_compr_detach(%struct.wm_adsp_compr* %16)
  %18 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %3, align 8
  %19 = getelementptr inbounds %struct.wm_adsp_compr, %struct.wm_adsp_compr* %18, i32 0, i32 1
  %20 = call i32 @list_del(i32* %19)
  %21 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %3, align 8
  %22 = getelementptr inbounds %struct.wm_adsp_compr, %struct.wm_adsp_compr* %21, i32 0, i32 0
  %23 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %22, align 8
  %24 = call i32 @kfree(%struct.wm_adsp_compr* %23)
  %25 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %3, align 8
  %26 = call i32 @kfree(%struct.wm_adsp_compr* %25)
  %27 = load %struct.wm_adsp*, %struct.wm_adsp** %4, align 8
  %28 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm_adsp_compr_detach(%struct.wm_adsp_compr*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.wm_adsp_compr*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
