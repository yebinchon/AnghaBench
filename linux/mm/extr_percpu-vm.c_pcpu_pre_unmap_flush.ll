; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_percpu-vm.c_pcpu_pre_unmap_flush.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_percpu-vm.c_pcpu_pre_unmap_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_chunk = type { i32 }

@pcpu_low_unit_cpu = common dso_local global i32 0, align 4
@pcpu_high_unit_cpu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcpu_chunk*, i32, i32)* @pcpu_pre_unmap_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcpu_pre_unmap_flush(%struct.pcpu_chunk* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pcpu_chunk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pcpu_chunk* %0, %struct.pcpu_chunk** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %4, align 8
  %8 = load i32, i32* @pcpu_low_unit_cpu, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @pcpu_chunk_addr(%struct.pcpu_chunk* %7, i32 %8, i32 %9)
  %11 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %4, align 8
  %12 = load i32, i32* @pcpu_high_unit_cpu, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @pcpu_chunk_addr(%struct.pcpu_chunk* %11, i32 %12, i32 %13)
  %15 = call i32 @flush_cache_vunmap(i32 %10, i32 %14)
  ret void
}

declare dso_local i32 @flush_cache_vunmap(i32, i32) #1

declare dso_local i32 @pcpu_chunk_addr(%struct.pcpu_chunk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
