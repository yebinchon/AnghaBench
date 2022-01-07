; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_helpers.c_copy_map_value_locked.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_helpers.c_copy_map_value_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.bpf_spin_lock = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_map_value_locked(%struct.bpf_map* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.bpf_map*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bpf_spin_lock*, align 8
  store %struct.bpf_map* %0, %struct.bpf_map** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %15 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr i8, i8* %13, i64 %17
  %19 = bitcast i8* %18 to %struct.bpf_spin_lock*
  store %struct.bpf_spin_lock* %19, %struct.bpf_spin_lock** %9, align 8
  br label %28

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %23 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr i8, i8* %21, i64 %25
  %27 = bitcast i8* %26 to %struct.bpf_spin_lock*
  store %struct.bpf_spin_lock* %27, %struct.bpf_spin_lock** %9, align 8
  br label %28

28:                                               ; preds = %20, %12
  %29 = call i32 (...) @preempt_disable()
  %30 = load %struct.bpf_spin_lock*, %struct.bpf_spin_lock** %9, align 8
  %31 = call i32 @____bpf_spin_lock(%struct.bpf_spin_lock* %30)
  %32 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @copy_map_value(%struct.bpf_map* %32, i8* %33, i8* %34)
  %36 = load %struct.bpf_spin_lock*, %struct.bpf_spin_lock** %9, align 8
  %37 = call i32 @____bpf_spin_unlock(%struct.bpf_spin_lock* %36)
  %38 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @____bpf_spin_lock(%struct.bpf_spin_lock*) #1

declare dso_local i32 @copy_map_value(%struct.bpf_map*, i8*, i8*) #1

declare dso_local i32 @____bpf_spin_unlock(%struct.bpf_spin_lock*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
