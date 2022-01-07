; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_set_work_pwq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_set_work_pwq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.pool_workqueue = type { i32 }

@WORK_STRUCT_PENDING = common dso_local global i64 0, align 8
@WORK_STRUCT_PWQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*, %struct.pool_workqueue*, i64)* @set_work_pwq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_work_pwq(%struct.work_struct* %0, %struct.pool_workqueue* %1, i64 %2) #0 {
  %4 = alloca %struct.work_struct*, align 8
  %5 = alloca %struct.pool_workqueue*, align 8
  %6 = alloca i64, align 8
  store %struct.work_struct* %0, %struct.work_struct** %4, align 8
  store %struct.pool_workqueue* %1, %struct.pool_workqueue** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.work_struct*, %struct.work_struct** %4, align 8
  %8 = load %struct.pool_workqueue*, %struct.pool_workqueue** %5, align 8
  %9 = ptrtoint %struct.pool_workqueue* %8 to i64
  %10 = load i64, i64* @WORK_STRUCT_PENDING, align 8
  %11 = load i64, i64* @WORK_STRUCT_PWQ, align 8
  %12 = or i64 %10, %11
  %13 = load i64, i64* %6, align 8
  %14 = or i64 %12, %13
  %15 = call i32 @set_work_data(%struct.work_struct* %7, i64 %9, i64 %14)
  ret void
}

declare dso_local i32 @set_work_data(%struct.work_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
