; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdm-formatter.c_axg_tdm_stream_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdm-formatter.c_axg_tdm_stream_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axg_tdm_stream = type { %struct.axg_tdm_iface*, i32, i32 }
%struct.axg_tdm_iface = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.axg_tdm_stream* @axg_tdm_stream_alloc(%struct.axg_tdm_iface* %0) #0 {
  %2 = alloca %struct.axg_tdm_iface*, align 8
  %3 = alloca %struct.axg_tdm_stream*, align 8
  store %struct.axg_tdm_iface* %0, %struct.axg_tdm_iface** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.axg_tdm_stream* @kzalloc(i32 16, i32 %4)
  store %struct.axg_tdm_stream* %5, %struct.axg_tdm_stream** %3, align 8
  %6 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %3, align 8
  %7 = icmp ne %struct.axg_tdm_stream* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %3, align 8
  %10 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %9, i32 0, i32 2
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %3, align 8
  %13 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %12, i32 0, i32 1
  %14 = call i32 @mutex_init(i32* %13)
  %15 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %2, align 8
  %16 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %3, align 8
  %17 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %16, i32 0, i32 0
  store %struct.axg_tdm_iface* %15, %struct.axg_tdm_iface** %17, align 8
  br label %18

18:                                               ; preds = %8, %1
  %19 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %3, align 8
  ret %struct.axg_tdm_stream* %19
}

declare dso_local %struct.axg_tdm_stream* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
