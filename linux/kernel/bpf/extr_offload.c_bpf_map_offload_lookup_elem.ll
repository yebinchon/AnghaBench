; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_map_offload_lookup_elem.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_map_offload_lookup_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.bpf_offloaded_map = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.bpf_offloaded_map*, i8*, i8*)* }

@ENODEV = common dso_local global i32 0, align 4
@bpf_devs_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_map_offload_lookup_elem(%struct.bpf_map* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.bpf_map*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bpf_offloaded_map*, align 8
  %8 = alloca i32, align 4
  store %struct.bpf_map* %0, %struct.bpf_map** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %10 = call %struct.bpf_offloaded_map* @map_to_offmap(%struct.bpf_map* %9)
  store %struct.bpf_offloaded_map* %10, %struct.bpf_offloaded_map** %7, align 8
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = call i32 @down_read(i32* @bpf_devs_lock)
  %14 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %7, align 8
  %15 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %7, align 8
  %20 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.bpf_offloaded_map*, i8*, i8*)*, i32 (%struct.bpf_offloaded_map*, i8*, i8*)** %22, align 8
  %24 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %7, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 %23(%struct.bpf_offloaded_map* %24, i8* %25, i8* %26)
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %18, %3
  %29 = call i32 @up_read(i32* @bpf_devs_lock)
  %30 = load i32, i32* %8, align 4
  ret i32 %30
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
