; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_flattree.c_flat_read_mem_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_flattree.c_flat_read_mem_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reserve_info = type { i32 }
%struct.inbuf = type { i32 }
%struct.fdt_reserve_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reserve_info* (%struct.inbuf*)* @flat_read_mem_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reserve_info* @flat_read_mem_reserve(%struct.inbuf* %0) #0 {
  %2 = alloca %struct.inbuf*, align 8
  %3 = alloca %struct.reserve_info*, align 8
  %4 = alloca %struct.reserve_info*, align 8
  %5 = alloca %struct.fdt_reserve_entry, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.inbuf* %0, %struct.inbuf** %2, align 8
  store %struct.reserve_info* null, %struct.reserve_info** %3, align 8
  br label %8

8:                                                ; preds = %1, %20
  %9 = load %struct.inbuf*, %struct.inbuf** %2, align 8
  %10 = call i32 @flat_read_chunk(%struct.inbuf* %9, %struct.fdt_reserve_entry* %5, i32 8)
  %11 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %5, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @fdt64_to_cpu(i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @fdt64_to_cpu(i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %8
  br label %27

20:                                               ; preds = %8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call %struct.reserve_info* @build_reserve_entry(i64 %21, i64 %22)
  store %struct.reserve_info* %23, %struct.reserve_info** %4, align 8
  %24 = load %struct.reserve_info*, %struct.reserve_info** %3, align 8
  %25 = load %struct.reserve_info*, %struct.reserve_info** %4, align 8
  %26 = call %struct.reserve_info* @add_reserve_entry(%struct.reserve_info* %24, %struct.reserve_info* %25)
  store %struct.reserve_info* %26, %struct.reserve_info** %3, align 8
  br label %8

27:                                               ; preds = %19
  %28 = load %struct.reserve_info*, %struct.reserve_info** %3, align 8
  ret %struct.reserve_info* %28
}

declare dso_local i32 @flat_read_chunk(%struct.inbuf*, %struct.fdt_reserve_entry*, i32) #1

declare dso_local i64 @fdt64_to_cpu(i32) #1

declare dso_local %struct.reserve_info* @build_reserve_entry(i64, i64) #1

declare dso_local %struct.reserve_info* @add_reserve_entry(%struct.reserve_info*, %struct.reserve_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
