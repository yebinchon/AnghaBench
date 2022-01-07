; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutiny.c_init_srcu_struct_fields.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutiny.c_init_srcu_struct_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcu_struct = type { i32, i32, %struct.TYPE_2__, i64, i32*, i32**, i32, i64* }
%struct.TYPE_2__ = type { i32 }

@srcu_drive_gp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srcu_struct*)* @init_srcu_struct_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_srcu_struct_fields(%struct.srcu_struct* %0) #0 {
  %2 = alloca %struct.srcu_struct*, align 8
  store %struct.srcu_struct* %0, %struct.srcu_struct** %2, align 8
  %3 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %4 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %3, i32 0, i32 7
  %5 = load i64*, i64** %4, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 0
  store i64 0, i64* %6, align 8
  %7 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %8 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %7, i32 0, i32 7
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %12 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %11, i32 0, i32 6
  %13 = call i32 @init_swait_queue_head(i32* %12)
  %14 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %15 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %14, i32 0, i32 4
  store i32* null, i32** %15, align 8
  %16 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %17 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %16, i32 0, i32 4
  %18 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %19 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %18, i32 0, i32 5
  store i32** %17, i32*** %19, align 8
  %20 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %21 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %23 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %25 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %27 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %26, i32 0, i32 2
  %28 = load i32, i32* @srcu_drive_gp, align 4
  %29 = call i32 @INIT_WORK(%struct.TYPE_2__* %27, i32 %28)
  %30 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %31 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  ret i32 0
}

declare dso_local i32 @init_swait_queue_head(i32*) #1

declare dso_local i32 @INIT_WORK(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
