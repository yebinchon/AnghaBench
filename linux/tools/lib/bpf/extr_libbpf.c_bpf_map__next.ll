; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_map__next.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_map__next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.bpf_object = type { %struct.bpf_map* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_map* @bpf_map__next(%struct.bpf_map* %0, %struct.bpf_object* %1) #0 {
  %3 = alloca %struct.bpf_map*, align 8
  %4 = alloca %struct.bpf_map*, align 8
  %5 = alloca %struct.bpf_object*, align 8
  store %struct.bpf_map* %0, %struct.bpf_map** %4, align 8
  store %struct.bpf_object* %1, %struct.bpf_object** %5, align 8
  %6 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %7 = icmp eq %struct.bpf_map* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %10 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %9, i32 0, i32 0
  %11 = load %struct.bpf_map*, %struct.bpf_map** %10, align 8
  store %struct.bpf_map* %11, %struct.bpf_map** %3, align 8
  br label %16

12:                                               ; preds = %2
  %13 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %14 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %15 = call %struct.bpf_map* @__bpf_map__iter(%struct.bpf_map* %13, %struct.bpf_object* %14, i32 1)
  store %struct.bpf_map* %15, %struct.bpf_map** %3, align 8
  br label %16

16:                                               ; preds = %12, %8
  %17 = load %struct.bpf_map*, %struct.bpf_map** %3, align 8
  ret %struct.bpf_map* %17
}

declare dso_local %struct.bpf_map* @__bpf_map__iter(%struct.bpf_map*, %struct.bpf_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
