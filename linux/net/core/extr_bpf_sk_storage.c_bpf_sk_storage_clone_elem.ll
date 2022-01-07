; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c_bpf_sk_storage_clone_elem.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c_bpf_sk_storage_clone_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.bpf_sk_storage_map = type { i32 }
%struct.bpf_sk_storage_elem = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_sk_storage_elem* (%struct.sock*, %struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_elem*)* @bpf_sk_storage_clone_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_sk_storage_elem* @bpf_sk_storage_clone_elem(%struct.sock* %0, %struct.bpf_sk_storage_map* %1, %struct.bpf_sk_storage_elem* %2) #0 {
  %4 = alloca %struct.bpf_sk_storage_elem*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.bpf_sk_storage_map*, align 8
  %7 = alloca %struct.bpf_sk_storage_elem*, align 8
  %8 = alloca %struct.bpf_sk_storage_elem*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.bpf_sk_storage_map* %1, %struct.bpf_sk_storage_map** %6, align 8
  store %struct.bpf_sk_storage_elem* %2, %struct.bpf_sk_storage_elem** %7, align 8
  %9 = load %struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_map** %6, align 8
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = call %struct.bpf_sk_storage_elem* @selem_alloc(%struct.bpf_sk_storage_map* %9, %struct.sock* %10, i32* null, i32 1)
  store %struct.bpf_sk_storage_elem* %11, %struct.bpf_sk_storage_elem** %8, align 8
  %12 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %8, align 8
  %13 = icmp ne %struct.bpf_sk_storage_elem* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.bpf_sk_storage_elem* null, %struct.bpf_sk_storage_elem** %4, align 8
  br label %46

15:                                               ; preds = %3
  %16 = load %struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_map** %6, align 8
  %17 = getelementptr inbounds %struct.bpf_sk_storage_map, %struct.bpf_sk_storage_map* %16, i32 0, i32 0
  %18 = call i64 @map_value_has_spin_lock(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_map** %6, align 8
  %22 = getelementptr inbounds %struct.bpf_sk_storage_map, %struct.bpf_sk_storage_map* %21, i32 0, i32 0
  %23 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %8, align 8
  %24 = call %struct.TYPE_2__* @SDATA(%struct.bpf_sk_storage_elem* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %7, align 8
  %28 = call %struct.TYPE_2__* @SDATA(%struct.bpf_sk_storage_elem* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @copy_map_value_locked(i32* %22, i32 %26, i32 %30, i32 1)
  br label %44

32:                                               ; preds = %15
  %33 = load %struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_map** %6, align 8
  %34 = getelementptr inbounds %struct.bpf_sk_storage_map, %struct.bpf_sk_storage_map* %33, i32 0, i32 0
  %35 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %8, align 8
  %36 = call %struct.TYPE_2__* @SDATA(%struct.bpf_sk_storage_elem* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %7, align 8
  %40 = call %struct.TYPE_2__* @SDATA(%struct.bpf_sk_storage_elem* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @copy_map_value(i32* %34, i32 %38, i32 %42)
  br label %44

44:                                               ; preds = %32, %20
  %45 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %8, align 8
  store %struct.bpf_sk_storage_elem* %45, %struct.bpf_sk_storage_elem** %4, align 8
  br label %46

46:                                               ; preds = %44, %14
  %47 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %4, align 8
  ret %struct.bpf_sk_storage_elem* %47
}

declare dso_local %struct.bpf_sk_storage_elem* @selem_alloc(%struct.bpf_sk_storage_map*, %struct.sock*, i32*, i32) #1

declare dso_local i64 @map_value_has_spin_lock(i32*) #1

declare dso_local i32 @copy_map_value_locked(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @SDATA(%struct.bpf_sk_storage_elem*) #1

declare dso_local i32 @copy_map_value(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
