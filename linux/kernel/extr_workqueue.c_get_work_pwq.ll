; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_get_work_pwq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_get_work_pwq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool_workqueue = type opaque
%struct.work_struct = type { i32 }

@WORK_STRUCT_PWQ = common dso_local global i64 0, align 8
@WORK_STRUCT_WQ_DATA_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pool_workqueue* (%struct.work_struct*)* @get_work_pwq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pool_workqueue* @get_work_pwq(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.pool_workqueue*, align 8
  %3 = alloca %struct.work_struct*, align 8
  %4 = alloca i64, align 8
  store %struct.work_struct* %0, %struct.work_struct** %3, align 8
  %5 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %6 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %5, i32 0, i32 0
  %7 = call i64 @atomic_long_read(i32* %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @WORK_STRUCT_PWQ, align 8
  %10 = and i64 %8, %9
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @WORK_STRUCT_WQ_DATA_MASK, align 8
  %15 = and i64 %13, %14
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.pool_workqueue*
  store %struct.pool_workqueue* %17, %struct.pool_workqueue** %2, align 8
  br label %19

18:                                               ; preds = %1
  store %struct.pool_workqueue* null, %struct.pool_workqueue** %2, align 8
  br label %19

19:                                               ; preds = %18, %12
  %20 = load %struct.pool_workqueue*, %struct.pool_workqueue** %2, align 8
  ret %struct.pool_workqueue* %20
}

declare dso_local i64 @atomic_long_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
