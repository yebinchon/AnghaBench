; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_map_free_id.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_map_free_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i64 }

@map_idr_lock = common dso_local global i32 0, align 4
@map_idr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bpf_map_free_id(%struct.bpf_map* %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_map*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.bpf_map* %0, %struct.bpf_map** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bpf_map*, %struct.bpf_map** %3, align 8
  %7 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %33

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* @map_idr_lock, i64 %15)
  br label %19

17:                                               ; preds = %11
  %18 = call i32 @__acquire(i32* @map_idr_lock)
  br label %19

19:                                               ; preds = %17, %14
  %20 = load %struct.bpf_map*, %struct.bpf_map** %3, align 8
  %21 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @idr_remove(i32* @map_idr, i64 %22)
  %24 = load %struct.bpf_map*, %struct.bpf_map** %3, align 8
  %25 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* @map_idr_lock, i64 %29)
  br label %33

31:                                               ; preds = %19
  %32 = call i32 @__release(i32* @map_idr_lock)
  br label %33

33:                                               ; preds = %10, %31, %28
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__acquire(i32*) #1

declare dso_local i32 @idr_remove(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
