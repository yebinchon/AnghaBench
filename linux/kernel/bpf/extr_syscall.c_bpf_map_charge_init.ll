; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_map_charge_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_map_charge_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map_memory = type { i32, %struct.user_struct* }
%struct.user_struct = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_map_charge_init(%struct.bpf_map_memory* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_map_memory*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.user_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.bpf_map_memory* %0, %struct.bpf_map_memory** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @PAGE_SIZE, align 8
  %11 = call i32 @round_up(i64 %9, i64 %10)
  %12 = load i32, i32* @PAGE_SHIFT, align 4
  %13 = ashr i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @U32_MAX, align 8
  %16 = load i64, i64* @PAGE_SIZE, align 8
  %17 = sub nsw i64 %15, %16
  %18 = icmp sge i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @E2BIG, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %40

22:                                               ; preds = %2
  %23 = call %struct.user_struct* (...) @get_current_user()
  store %struct.user_struct* %23, %struct.user_struct** %7, align 8
  %24 = load %struct.user_struct*, %struct.user_struct** %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @bpf_charge_memlock(%struct.user_struct* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.user_struct*, %struct.user_struct** %7, align 8
  %31 = call i32 @free_uid(%struct.user_struct* %30)
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %40

33:                                               ; preds = %22
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.bpf_map_memory*, %struct.bpf_map_memory** %4, align 8
  %36 = getelementptr inbounds %struct.bpf_map_memory, %struct.bpf_map_memory* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.user_struct*, %struct.user_struct** %7, align 8
  %38 = load %struct.bpf_map_memory*, %struct.bpf_map_memory** %4, align 8
  %39 = getelementptr inbounds %struct.bpf_map_memory, %struct.bpf_map_memory* %38, i32 0, i32 1
  store %struct.user_struct* %37, %struct.user_struct** %39, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %33, %29, %19
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @round_up(i64, i64) #1

declare dso_local %struct.user_struct* @get_current_user(...) #1

declare dso_local i32 @bpf_charge_memlock(%struct.user_struct*, i32) #1

declare dso_local i32 @free_uid(%struct.user_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
