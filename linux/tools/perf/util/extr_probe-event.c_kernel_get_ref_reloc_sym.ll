; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_kernel_get_ref_reloc_sym.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_kernel_get_ref_reloc_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_reloc_sym = type { i32 }
%struct.kmap = type { %struct.ref_reloc_sym* }
%struct.map = type { i32 }

@host_machine = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ref_reloc_sym* ()* @kernel_get_ref_reloc_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ref_reloc_sym* @kernel_get_ref_reloc_sym() #0 {
  %1 = alloca %struct.ref_reloc_sym*, align 8
  %2 = alloca %struct.kmap*, align 8
  %3 = alloca %struct.map*, align 8
  %4 = load i32, i32* @host_machine, align 4
  %5 = call %struct.map* @machine__kernel_map(i32 %4)
  store %struct.map* %5, %struct.map** %3, align 8
  %6 = load %struct.map*, %struct.map** %3, align 8
  %7 = call i64 @map__load(%struct.map* %6)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store %struct.ref_reloc_sym* null, %struct.ref_reloc_sym** %1, align 8
  br label %20

10:                                               ; preds = %0
  %11 = load %struct.map*, %struct.map** %3, align 8
  %12 = call %struct.kmap* @map__kmap(%struct.map* %11)
  store %struct.kmap* %12, %struct.kmap** %2, align 8
  %13 = load %struct.kmap*, %struct.kmap** %2, align 8
  %14 = icmp ne %struct.kmap* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store %struct.ref_reloc_sym* null, %struct.ref_reloc_sym** %1, align 8
  br label %20

16:                                               ; preds = %10
  %17 = load %struct.kmap*, %struct.kmap** %2, align 8
  %18 = getelementptr inbounds %struct.kmap, %struct.kmap* %17, i32 0, i32 0
  %19 = load %struct.ref_reloc_sym*, %struct.ref_reloc_sym** %18, align 8
  store %struct.ref_reloc_sym* %19, %struct.ref_reloc_sym** %1, align 8
  br label %20

20:                                               ; preds = %16, %15, %9
  %21 = load %struct.ref_reloc_sym*, %struct.ref_reloc_sym** %1, align 8
  ret %struct.ref_reloc_sym* %21
}

declare dso_local %struct.map* @machine__kernel_map(i32) #1

declare dso_local i64 @map__load(%struct.map*) #1

declare dso_local %struct.kmap* @map__kmap(%struct.map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
