; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_get_loader_ops.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_get_loader_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dsp_loader_ops = type { i32, i32 }

@skl_alloc_dma_buf = common dso_local global i32 0, align 4
@skl_free_dma_buf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @skl_get_loader_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @skl_get_loader_ops() #0 {
  %1 = alloca %struct.skl_dsp_loader_ops, align 4
  %2 = call i32 @memset(%struct.skl_dsp_loader_ops* %1, i32 0, i32 8)
  %3 = load i32, i32* @skl_alloc_dma_buf, align 4
  %4 = getelementptr inbounds %struct.skl_dsp_loader_ops, %struct.skl_dsp_loader_ops* %1, i32 0, i32 1
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* @skl_free_dma_buf, align 4
  %6 = getelementptr inbounds %struct.skl_dsp_loader_ops, %struct.skl_dsp_loader_ops* %1, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = bitcast %struct.skl_dsp_loader_ops* %1 to i64*
  %8 = load i64, i64* %7, align 4
  ret i64 %8
}

declare dso_local i32 @memset(%struct.skl_dsp_loader_ops*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
