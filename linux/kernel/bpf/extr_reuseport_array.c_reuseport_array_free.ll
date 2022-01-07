; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_reuseport_array.c_reuseport_array_free.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_reuseport_array.c_reuseport_array_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i64 }
%struct.reuseport_array = type { i32* }
%struct.sock = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_map*)* @reuseport_array_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reuseport_array_free(%struct.bpf_map* %0) #0 {
  %2 = alloca %struct.bpf_map*, align 8
  %3 = alloca %struct.reuseport_array*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i64, align 8
  store %struct.bpf_map* %0, %struct.bpf_map** %2, align 8
  %6 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  %7 = call %struct.reuseport_array* @reuseport_array(%struct.bpf_map* %6)
  store %struct.reuseport_array* %7, %struct.reuseport_array** %3, align 8
  %8 = call i32 (...) @synchronize_rcu()
  %9 = call i32 (...) @rcu_read_lock()
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %43, %1
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  %13 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %10
  %17 = load %struct.reuseport_array*, %struct.reuseport_array** %3, align 8
  %18 = getelementptr inbounds %struct.reuseport_array, %struct.reuseport_array* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.sock* @rcu_dereference(i32 %22)
  store %struct.sock* %23, %struct.sock** %4, align 8
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = icmp ne %struct.sock* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %16
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = call i32 @write_lock_bh(i32* %28)
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  %34 = call i32 @write_unlock_bh(i32* %33)
  %35 = load %struct.reuseport_array*, %struct.reuseport_array** %3, align 8
  %36 = getelementptr inbounds %struct.reuseport_array, %struct.reuseport_array* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @RCU_INIT_POINTER(i32 %40, i32* null)
  br label %42

42:                                               ; preds = %26, %16
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %5, align 8
  br label %10

46:                                               ; preds = %10
  %47 = call i32 (...) @rcu_read_unlock()
  %48 = load %struct.reuseport_array*, %struct.reuseport_array** %3, align 8
  %49 = call i32 @bpf_map_area_free(%struct.reuseport_array* %48)
  ret void
}

declare dso_local %struct.reuseport_array* @reuseport_array(%struct.bpf_map*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sock* @rcu_dereference(i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @bpf_map_area_free(%struct.reuseport_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
