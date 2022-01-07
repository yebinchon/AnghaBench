; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock.c___sk_mem_reduce_allocated.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock.c___sk_mem_reduce_allocated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }

@mem_cgroup_sockets_enabled = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__sk_mem_reduce_allocated(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @sk_memory_allocated_sub(%struct.sock* %5, i32 %6)
  %8 = load i64, i64* @mem_cgroup_sockets_enabled, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @mem_cgroup_uncharge_skmem(i64 %18, i32 %19)
  br label %21

21:                                               ; preds = %15, %10, %2
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = call i64 @sk_under_memory_pressure(%struct.sock* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = call i64 @sk_memory_allocated(%struct.sock* %26)
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = call i64 @sk_prot_mem_limits(%struct.sock* %28, i32 0)
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.sock*, %struct.sock** %3, align 8
  %33 = call i32 @sk_leave_memory_pressure(%struct.sock* %32)
  br label %34

34:                                               ; preds = %31, %25, %21
  ret void
}

declare dso_local i32 @sk_memory_allocated_sub(%struct.sock*, i32) #1

declare dso_local i32 @mem_cgroup_uncharge_skmem(i64, i32) #1

declare dso_local i64 @sk_under_memory_pressure(%struct.sock*) #1

declare dso_local i64 @sk_memory_allocated(%struct.sock*) #1

declare dso_local i64 @sk_prot_mem_limits(%struct.sock*, i32) #1

declare dso_local i32 @sk_leave_memory_pressure(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
