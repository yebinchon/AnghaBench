; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_xdp_do_flush_map.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_xdp_do_flush_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_redirect_info = type { %struct.bpf_map* }
%struct.bpf_map = type { i32 }

@bpf_redirect_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xdp_do_flush_map() #0 {
  %1 = alloca %struct.bpf_redirect_info*, align 8
  %2 = alloca %struct.bpf_map*, align 8
  %3 = call %struct.bpf_redirect_info* @this_cpu_ptr(i32* @bpf_redirect_info)
  store %struct.bpf_redirect_info* %3, %struct.bpf_redirect_info** %1, align 8
  %4 = load %struct.bpf_redirect_info*, %struct.bpf_redirect_info** %1, align 8
  %5 = getelementptr inbounds %struct.bpf_redirect_info, %struct.bpf_redirect_info* %4, i32 0, i32 0
  %6 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  store %struct.bpf_map* %6, %struct.bpf_map** %2, align 8
  %7 = load %struct.bpf_redirect_info*, %struct.bpf_redirect_info** %1, align 8
  %8 = getelementptr inbounds %struct.bpf_redirect_info, %struct.bpf_redirect_info* %7, i32 0, i32 0
  store %struct.bpf_map* null, %struct.bpf_map** %8, align 8
  %9 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  %10 = icmp ne %struct.bpf_map* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %0
  %12 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  %13 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %24 [
    i32 130, label %15
    i32 129, label %15
    i32 131, label %18
    i32 128, label %21
  ]

15:                                               ; preds = %11, %11
  %16 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  %17 = call i32 @__dev_map_flush(%struct.bpf_map* %16)
  br label %25

18:                                               ; preds = %11
  %19 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  %20 = call i32 @__cpu_map_flush(%struct.bpf_map* %19)
  br label %25

21:                                               ; preds = %11
  %22 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  %23 = call i32 @__xsk_map_flush(%struct.bpf_map* %22)
  br label %25

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24, %21, %18, %15
  br label %26

26:                                               ; preds = %25, %0
  ret void
}

declare dso_local %struct.bpf_redirect_info* @this_cpu_ptr(i32*) #1

declare dso_local i32 @__dev_map_flush(%struct.bpf_map*) #1

declare dso_local i32 @__cpu_map_flush(%struct.bpf_map*) #1

declare dso_local i32 @__xsk_map_flush(%struct.bpf_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
