; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_signal.c_kill_as_cred_perm.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_signal.c_kill_as_cred_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32, i32, i32 }
%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*, %struct.task_struct*)* @kill_as_cred_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kill_as_cred_perm(%struct.cred* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.cred*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.cred*, align 8
  store %struct.cred* %0, %struct.cred** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %7 = call %struct.cred* @__task_cred(%struct.task_struct* %6)
  store %struct.cred* %7, %struct.cred** %5, align 8
  %8 = load %struct.cred*, %struct.cred** %3, align 8
  %9 = getelementptr inbounds %struct.cred, %struct.cred* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.cred*, %struct.cred** %5, align 8
  %12 = getelementptr inbounds %struct.cred, %struct.cred* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @uid_eq(i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %2
  %17 = load %struct.cred*, %struct.cred** %3, align 8
  %18 = getelementptr inbounds %struct.cred, %struct.cred* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cred*, %struct.cred** %5, align 8
  %21 = getelementptr inbounds %struct.cred, %struct.cred* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @uid_eq(i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %16
  %26 = load %struct.cred*, %struct.cred** %3, align 8
  %27 = getelementptr inbounds %struct.cred, %struct.cred* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cred*, %struct.cred** %5, align 8
  %30 = getelementptr inbounds %struct.cred, %struct.cred* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @uid_eq(i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %25
  %35 = load %struct.cred*, %struct.cred** %3, align 8
  %36 = getelementptr inbounds %struct.cred, %struct.cred* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cred*, %struct.cred** %5, align 8
  %39 = getelementptr inbounds %struct.cred, %struct.cred* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @uid_eq(i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %34, %25, %16, %2
  %44 = phi i1 [ true, %25 ], [ true, %16 ], [ true, %2 ], [ %42, %34 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

declare dso_local i64 @uid_eq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
