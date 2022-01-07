; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_hashtab.c_htab_lru_percpu_map_lookup_elem.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_hashtab.c_htab_lru_percpu_map_lookup_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.htab_elem = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.bpf_map*, i8*)* @htab_lru_percpu_map_lookup_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @htab_lru_percpu_map_lookup_elem(%struct.bpf_map* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bpf_map*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.htab_elem*, align 8
  store %struct.bpf_map* %0, %struct.bpf_map** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.htab_elem* @__htab_map_lookup_elem(%struct.bpf_map* %7, i8* %8)
  store %struct.htab_elem* %9, %struct.htab_elem** %6, align 8
  %10 = load %struct.htab_elem*, %struct.htab_elem** %6, align 8
  %11 = icmp ne %struct.htab_elem* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.htab_elem*, %struct.htab_elem** %6, align 8
  %14 = getelementptr inbounds %struct.htab_elem, %struct.htab_elem* %13, i32 0, i32 0
  %15 = call i32 @bpf_lru_node_set_ref(i32* %14)
  %16 = load %struct.htab_elem*, %struct.htab_elem** %6, align 8
  %17 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %18 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @htab_elem_get_ptr(%struct.htab_elem* %16, i32 %19)
  %21 = call i8* @this_cpu_ptr(i32 %20)
  store i8* %21, i8** %3, align 8
  br label %23

22:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %23

23:                                               ; preds = %22, %12
  %24 = load i8*, i8** %3, align 8
  ret i8* %24
}

declare dso_local %struct.htab_elem* @__htab_map_lookup_elem(%struct.bpf_map*, i8*) #1

declare dso_local i32 @bpf_lru_node_set_ref(i32*) #1

declare dso_local i8* @this_cpu_ptr(i32) #1

declare dso_local i32 @htab_elem_get_ptr(%struct.htab_elem*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
