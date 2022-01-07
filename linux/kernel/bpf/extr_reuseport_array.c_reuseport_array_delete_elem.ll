; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_reuseport_array.c_reuseport_array_delete_elem.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_reuseport_array.c_reuseport_array_delete_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i64 }
%struct.reuseport_array = type { i32* }
%struct.sock = type { i32, i32 }

@E2BIG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@reuseport_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_map*, i8*)* @reuseport_array_delete_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reuseport_array_delete_elem(%struct.bpf_map* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_map*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.reuseport_array*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i32, align 4
  store %struct.bpf_map* %0, %struct.bpf_map** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %11 = call %struct.reuseport_array* @reuseport_array(%struct.bpf_map* %10)
  store %struct.reuseport_array* %11, %struct.reuseport_array** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %17 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @E2BIG, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %71

23:                                               ; preds = %2
  %24 = load %struct.reuseport_array*, %struct.reuseport_array** %6, align 8
  %25 = getelementptr inbounds %struct.reuseport_array, %struct.reuseport_array* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @rcu_access_pointer(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %71

35:                                               ; preds = %23
  %36 = call i32 @spin_lock_bh(i32* @reuseport_lock)
  %37 = load %struct.reuseport_array*, %struct.reuseport_array** %6, align 8
  %38 = getelementptr inbounds %struct.reuseport_array, %struct.reuseport_array* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @lockdep_is_held(i32* @reuseport_lock)
  %44 = call %struct.sock* @rcu_dereference_protected(i32 %42, i32 %43)
  store %struct.sock* %44, %struct.sock** %8, align 8
  %45 = load %struct.sock*, %struct.sock** %8, align 8
  %46 = icmp ne %struct.sock* %45, null
  br i1 %46, label %47, label %65

47:                                               ; preds = %35
  %48 = load %struct.sock*, %struct.sock** %8, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 0
  %50 = call i32 @write_lock_bh(i32* %49)
  %51 = load %struct.sock*, %struct.sock** %8, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @WRITE_ONCE(i32 %53, i32* null)
  %55 = load %struct.reuseport_array*, %struct.reuseport_array** %6, align 8
  %56 = getelementptr inbounds %struct.reuseport_array, %struct.reuseport_array* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @RCU_INIT_POINTER(i32 %60, i32* null)
  %62 = load %struct.sock*, %struct.sock** %8, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 0
  %64 = call i32 @write_unlock_bh(i32* %63)
  store i32 0, i32* %9, align 4
  br label %68

65:                                               ; preds = %35
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %65, %47
  %69 = call i32 @spin_unlock_bh(i32* @reuseport_lock)
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %68, %32, %20
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.reuseport_array* @reuseport_array(%struct.bpf_map*) #1

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sock* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
