; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c___setparam_dl.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c___setparam_dl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.sched_dl_entity }
%struct.sched_dl_entity = type { i32, i32, i8*, i32, i8*, i32 }
%struct.sched_attr = type { i32, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__setparam_dl(%struct.task_struct* %0, %struct.sched_attr* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.sched_attr*, align 8
  %5 = alloca %struct.sched_dl_entity*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.sched_attr* %1, %struct.sched_attr** %4, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 0
  store %struct.sched_dl_entity* %7, %struct.sched_dl_entity** %5, align 8
  %8 = load %struct.sched_attr*, %struct.sched_attr** %4, align 8
  %9 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %5, align 8
  %12 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.sched_attr*, %struct.sched_attr** %4, align 8
  %14 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %5, align 8
  %17 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.sched_attr*, %struct.sched_attr** %4, align 8
  %19 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %5, align 8
  %25 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  br label %28

28:                                               ; preds = %23, %22
  %29 = phi i64 [ %20, %22 ], [ %27, %23 ]
  %30 = trunc i64 %29 to i32
  %31 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %5, align 8
  %32 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.sched_attr*, %struct.sched_attr** %4, align 8
  %34 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %5, align 8
  %37 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %5, align 8
  %39 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %5, align 8
  %42 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @to_ratio(i32 %40, i32 %43)
  %45 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %5, align 8
  %46 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %5, align 8
  %48 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %5, align 8
  %51 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @to_ratio(i32 %49, i32 %52)
  %54 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %5, align 8
  %55 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  ret void
}

declare dso_local i8* @to_ratio(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
