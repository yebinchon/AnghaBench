; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c_sk_storage_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c_sk_storage_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sk_storage_data = type { i32 }
%struct.sock = type { i32 }
%struct.bpf_map = type { i32 }
%struct.bpf_sk_storage = type { i32 }
%struct.bpf_sk_storage_map = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_sk_storage_data* (%struct.sock*, %struct.bpf_map*, i32)* @sk_storage_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_sk_storage_data* @sk_storage_lookup(%struct.sock* %0, %struct.bpf_map* %1, i32 %2) #0 {
  %4 = alloca %struct.bpf_sk_storage_data*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.bpf_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bpf_sk_storage*, align 8
  %9 = alloca %struct.bpf_sk_storage_map*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.bpf_map* %1, %struct.bpf_map** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.bpf_sk_storage* @rcu_dereference(i32 %12)
  store %struct.bpf_sk_storage* %13, %struct.bpf_sk_storage** %8, align 8
  %14 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %8, align 8
  %15 = icmp ne %struct.bpf_sk_storage* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.bpf_sk_storage_data* null, %struct.bpf_sk_storage_data** %4, align 8
  br label %24

17:                                               ; preds = %3
  %18 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %19 = bitcast %struct.bpf_map* %18 to %struct.bpf_sk_storage_map*
  store %struct.bpf_sk_storage_map* %19, %struct.bpf_sk_storage_map** %9, align 8
  %20 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %8, align 8
  %21 = load %struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_map** %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.bpf_sk_storage_data* @__sk_storage_lookup(%struct.bpf_sk_storage* %20, %struct.bpf_sk_storage_map* %21, i32 %22)
  store %struct.bpf_sk_storage_data* %23, %struct.bpf_sk_storage_data** %4, align 8
  br label %24

24:                                               ; preds = %17, %16
  %25 = load %struct.bpf_sk_storage_data*, %struct.bpf_sk_storage_data** %4, align 8
  ret %struct.bpf_sk_storage_data* %25
}

declare dso_local %struct.bpf_sk_storage* @rcu_dereference(i32) #1

declare dso_local %struct.bpf_sk_storage_data* @__sk_storage_lookup(%struct.bpf_sk_storage*, %struct.bpf_sk_storage_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
