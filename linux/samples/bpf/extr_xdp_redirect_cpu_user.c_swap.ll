; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_cpu_user.c_swap.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_cpu_user.c_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats_record = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stats_record**, %struct.stats_record**)* @swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap(%struct.stats_record** %0, %struct.stats_record** %1) #0 {
  %3 = alloca %struct.stats_record**, align 8
  %4 = alloca %struct.stats_record**, align 8
  %5 = alloca %struct.stats_record*, align 8
  store %struct.stats_record** %0, %struct.stats_record*** %3, align 8
  store %struct.stats_record** %1, %struct.stats_record*** %4, align 8
  %6 = load %struct.stats_record**, %struct.stats_record*** %3, align 8
  %7 = load %struct.stats_record*, %struct.stats_record** %6, align 8
  store %struct.stats_record* %7, %struct.stats_record** %5, align 8
  %8 = load %struct.stats_record**, %struct.stats_record*** %4, align 8
  %9 = load %struct.stats_record*, %struct.stats_record** %8, align 8
  %10 = load %struct.stats_record**, %struct.stats_record*** %3, align 8
  store %struct.stats_record* %9, %struct.stats_record** %10, align 8
  %11 = load %struct.stats_record*, %struct.stats_record** %5, align 8
  %12 = load %struct.stats_record**, %struct.stats_record*** %4, align 8
  store %struct.stats_record* %11, %struct.stats_record** %12, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
