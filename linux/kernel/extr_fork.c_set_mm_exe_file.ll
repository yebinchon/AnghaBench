; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_fork.c_set_mm_exe_file.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_fork.c_set_mm_exe_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.file = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_mm_exe_file(%struct.mm_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.file*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %7 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.file* @rcu_dereference_raw(i32 %8)
  store %struct.file* %9, %struct.file** %5, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = icmp ne %struct.file* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = call i32 @get_file(%struct.file* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %17 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = call i32 @rcu_assign_pointer(i32 %18, %struct.file* %19)
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = icmp ne %struct.file* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = call i32 @fput(%struct.file* %24)
  br label %26

26:                                               ; preds = %23, %15
  ret void
}

declare dso_local %struct.file* @rcu_dereference_raw(i32) #1

declare dso_local i32 @get_file(%struct.file*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.file*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
