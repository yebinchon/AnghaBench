; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_map_offload_update_elem.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_map_offload_update_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.bpf_offloaded_map = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.bpf_offloaded_map*, i8*, i8*, i32)* }

@ENODEV = common dso_local global i32 0, align 4
@BPF_EXIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@bpf_devs_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_map_offload_update_elem(%struct.bpf_map* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_map*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_offloaded_map*, align 8
  %11 = alloca i32, align 4
  store %struct.bpf_map* %0, %struct.bpf_map** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %13 = call %struct.bpf_offloaded_map* @map_to_offmap(%struct.bpf_map* %12)
  store %struct.bpf_offloaded_map* %13, %struct.bpf_offloaded_map** %10, align 8
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @BPF_EXIST, align 4
  %18 = icmp sgt i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %45

25:                                               ; preds = %4
  %26 = call i32 @down_read(i32* @bpf_devs_lock)
  %27 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %10, align 8
  %28 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %10, align 8
  %33 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.bpf_offloaded_map*, i8*, i8*, i32)*, i32 (%struct.bpf_offloaded_map*, i8*, i8*, i32)** %35, align 8
  %37 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %10, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 %36(%struct.bpf_offloaded_map* %37, i8* %38, i8* %39, i32 %40)
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %31, %25
  %43 = call i32 @up_read(i32* @bpf_devs_lock)
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %22
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.bpf_offloaded_map* @map_to_offmap(%struct.bpf_map*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
