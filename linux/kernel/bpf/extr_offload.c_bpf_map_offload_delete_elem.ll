; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_map_offload_delete_elem.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_map_offload_delete_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.bpf_offloaded_map = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.bpf_offloaded_map*, i8*)* }

@ENODEV = common dso_local global i32 0, align 4
@bpf_devs_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_map_offload_delete_elem(%struct.bpf_map* %0, i8* %1) #0 {
  %3 = alloca %struct.bpf_map*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bpf_offloaded_map*, align 8
  %6 = alloca i32, align 4
  store %struct.bpf_map* %0, %struct.bpf_map** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.bpf_map*, %struct.bpf_map** %3, align 8
  %8 = call %struct.bpf_offloaded_map* @map_to_offmap(%struct.bpf_map* %7)
  store %struct.bpf_offloaded_map* %8, %struct.bpf_offloaded_map** %5, align 8
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = call i32 @down_read(i32* @bpf_devs_lock)
  %12 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %5, align 8
  %13 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %5, align 8
  %18 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.bpf_offloaded_map*, i8*)*, i32 (%struct.bpf_offloaded_map*, i8*)** %20, align 8
  %22 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %5, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 %21(%struct.bpf_offloaded_map* %22, i8* %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %16, %2
  %26 = call i32 @up_read(i32* @bpf_devs_lock)
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local %struct.bpf_offloaded_map* @map_to_offmap(%struct.bpf_map*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
