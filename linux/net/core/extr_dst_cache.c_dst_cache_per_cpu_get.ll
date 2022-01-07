; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dst_cache.c_dst_cache_per_cpu_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dst_cache.c_dst_cache_per_cpu_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.dst_entry*, i32)* }
%struct.dst_cache = type { i32 }
%struct.dst_cache_pcpu = type { i32, i32, %struct.dst_entry* }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dst_entry* (%struct.dst_cache*, %struct.dst_cache_pcpu*)* @dst_cache_per_cpu_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dst_entry* @dst_cache_per_cpu_get(%struct.dst_cache* %0, %struct.dst_cache_pcpu* %1) #0 {
  %3 = alloca %struct.dst_entry*, align 8
  %4 = alloca %struct.dst_cache*, align 8
  %5 = alloca %struct.dst_cache_pcpu*, align 8
  %6 = alloca %struct.dst_entry*, align 8
  store %struct.dst_cache* %0, %struct.dst_cache** %4, align 8
  store %struct.dst_cache_pcpu* %1, %struct.dst_cache_pcpu** %5, align 8
  %7 = load %struct.dst_cache_pcpu*, %struct.dst_cache_pcpu** %5, align 8
  %8 = getelementptr inbounds %struct.dst_cache_pcpu, %struct.dst_cache_pcpu* %7, i32 0, i32 2
  %9 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  store %struct.dst_entry* %9, %struct.dst_entry** %6, align 8
  %10 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %11 = icmp ne %struct.dst_entry* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %56

13:                                               ; preds = %2
  %14 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %15 = call i32 @dst_hold(%struct.dst_entry* %14)
  %16 = load %struct.dst_cache_pcpu*, %struct.dst_cache_pcpu** %5, align 8
  %17 = getelementptr inbounds %struct.dst_cache_pcpu, %struct.dst_cache_pcpu* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.dst_cache*, %struct.dst_cache** %4, align 8
  %20 = getelementptr inbounds %struct.dst_cache, %struct.dst_cache* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @time_after(i32 %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %13
  %25 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %26 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %31 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.dst_entry*, i32)*, i32 (%struct.dst_entry*, i32)** %33, align 8
  %35 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %36 = load %struct.dst_cache_pcpu*, %struct.dst_cache_pcpu** %5, align 8
  %37 = getelementptr inbounds %struct.dst_cache_pcpu, %struct.dst_cache_pcpu* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 %34(%struct.dst_entry* %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %29, %24
  %43 = phi i1 [ false, %24 ], [ %41, %29 ]
  br label %44

44:                                               ; preds = %42, %13
  %45 = phi i1 [ true, %13 ], [ %43, %42 ]
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.dst_cache_pcpu*, %struct.dst_cache_pcpu** %5, align 8
  %51 = call i32 @dst_cache_per_cpu_dst_set(%struct.dst_cache_pcpu* %50, i32* null, i32 0)
  %52 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %53 = call i32 @dst_release(%struct.dst_entry* %52)
  br label %56

54:                                               ; preds = %44
  %55 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  store %struct.dst_entry* %55, %struct.dst_entry** %3, align 8
  br label %60

56:                                               ; preds = %49, %12
  %57 = load i32, i32* @jiffies, align 4
  %58 = load %struct.dst_cache_pcpu*, %struct.dst_cache_pcpu** %5, align 8
  %59 = getelementptr inbounds %struct.dst_cache_pcpu, %struct.dst_cache_pcpu* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  store %struct.dst_entry* null, %struct.dst_entry** %3, align 8
  br label %60

60:                                               ; preds = %56, %54
  %61 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  ret %struct.dst_entry* %61
}

declare dso_local i32 @dst_hold(%struct.dst_entry*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @time_after(i32, i32) #1

declare dso_local i32 @dst_cache_per_cpu_dst_set(%struct.dst_cache_pcpu*, i32*, i32) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
