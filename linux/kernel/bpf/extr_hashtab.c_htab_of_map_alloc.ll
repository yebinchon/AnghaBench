; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_hashtab.c_htab_of_map_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_hashtab.c_htab_of_map_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { %struct.bpf_map* }
%union.bpf_attr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_map* (%union.bpf_attr*)* @htab_of_map_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_map* @htab_of_map_alloc(%union.bpf_attr* %0) #0 {
  %2 = alloca %struct.bpf_map*, align 8
  %3 = alloca %union.bpf_attr*, align 8
  %4 = alloca %struct.bpf_map*, align 8
  %5 = alloca %struct.bpf_map*, align 8
  store %union.bpf_attr* %0, %union.bpf_attr** %3, align 8
  %6 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %7 = bitcast %union.bpf_attr* %6 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.bpf_map* @bpf_map_meta_alloc(i32 %8)
  store %struct.bpf_map* %9, %struct.bpf_map** %5, align 8
  %10 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %11 = call i64 @IS_ERR(%struct.bpf_map* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  store %struct.bpf_map* %14, %struct.bpf_map** %2, align 8
  br label %30

15:                                               ; preds = %1
  %16 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %17 = call %struct.bpf_map* @htab_map_alloc(%union.bpf_attr* %16)
  store %struct.bpf_map* %17, %struct.bpf_map** %4, align 8
  %18 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %19 = call i64 @IS_ERR(%struct.bpf_map* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %23 = call i32 @bpf_map_meta_free(%struct.bpf_map* %22)
  %24 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  store %struct.bpf_map* %24, %struct.bpf_map** %2, align 8
  br label %30

25:                                               ; preds = %15
  %26 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %27 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %28 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %27, i32 0, i32 0
  store %struct.bpf_map* %26, %struct.bpf_map** %28, align 8
  %29 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  store %struct.bpf_map* %29, %struct.bpf_map** %2, align 8
  br label %30

30:                                               ; preds = %25, %21, %13
  %31 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  ret %struct.bpf_map* %31
}

declare dso_local %struct.bpf_map* @bpf_map_meta_alloc(i32) #1

declare dso_local i64 @IS_ERR(%struct.bpf_map*) #1

declare dso_local %struct.bpf_map* @htab_map_alloc(%union.bpf_attr*) #1

declare dso_local i32 @bpf_map_meta_free(%struct.bpf_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
