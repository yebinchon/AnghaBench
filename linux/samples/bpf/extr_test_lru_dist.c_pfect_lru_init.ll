; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_test_lru_dist.c_pfect_lru_init.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_test_lru_dist.c_pfect_lru_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfect_lru = type { i32, i32, i32, i64, i64, i64, i64, i32 }

@BPF_MAP_TYPE_HASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfect_lru*, i32, i32)* @pfect_lru_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfect_lru_init(%struct.pfect_lru* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pfect_lru*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pfect_lru* %0, %struct.pfect_lru** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @BPF_MAP_TYPE_HASH, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @bpf_create_map(i32 %7, i32 8, i32 8, i32 %8, i32 0)
  %10 = load %struct.pfect_lru*, %struct.pfect_lru** %4, align 8
  %11 = getelementptr inbounds %struct.pfect_lru, %struct.pfect_lru* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.pfect_lru*, %struct.pfect_lru** %4, align 8
  %13 = getelementptr inbounds %struct.pfect_lru, %struct.pfect_lru* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, -1
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call i32 @malloc(i32 %21)
  %23 = load %struct.pfect_lru*, %struct.pfect_lru** %4, align 8
  %24 = getelementptr inbounds %struct.pfect_lru, %struct.pfect_lru* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.pfect_lru*, %struct.pfect_lru** %4, align 8
  %26 = getelementptr inbounds %struct.pfect_lru, %struct.pfect_lru* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.pfect_lru*, %struct.pfect_lru** %4, align 8
  %30 = getelementptr inbounds %struct.pfect_lru, %struct.pfect_lru* %29, i32 0, i32 7
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.pfect_lru*, %struct.pfect_lru** %4, align 8
  %33 = getelementptr inbounds %struct.pfect_lru, %struct.pfect_lru* %32, i32 0, i32 6
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.pfect_lru*, %struct.pfect_lru** %4, align 8
  %36 = getelementptr inbounds %struct.pfect_lru, %struct.pfect_lru* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.pfect_lru*, %struct.pfect_lru** %4, align 8
  %38 = getelementptr inbounds %struct.pfect_lru, %struct.pfect_lru* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load %struct.pfect_lru*, %struct.pfect_lru** %4, align 8
  %40 = getelementptr inbounds %struct.pfect_lru, %struct.pfect_lru* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = load %struct.pfect_lru*, %struct.pfect_lru** %4, align 8
  %42 = getelementptr inbounds %struct.pfect_lru, %struct.pfect_lru* %41, i32 0, i32 5
  store i64 0, i64* %42, align 8
  ret void
}

declare dso_local i32 @bpf_create_map(i32, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
