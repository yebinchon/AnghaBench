; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_exit.c_eligible_child.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_exit.c_eligible_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wait_opts = type { i32 }
%struct.task_struct = type { i64 }

@__WALL = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i64 0, align 8
@__WCLONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wait_opts*, i32, %struct.task_struct*)* @eligible_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eligible_child(%struct.wait_opts* %0, i32 %1, %struct.task_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wait_opts*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  store %struct.wait_opts* %0, %struct.wait_opts** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.task_struct* %2, %struct.task_struct** %7, align 8
  %8 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %10 = call i32 @eligible_pid(%struct.wait_opts* %8, %struct.task_struct* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %18 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @__WALL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %13
  store i32 1, i32* %4, align 4
  br label %44

24:                                               ; preds = %16
  %25 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SIGCHLD, align 8
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %32 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @__WCLONE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = xor i32 %30, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %44

43:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %42, %23, %12
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @eligible_pid(%struct.wait_opts*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
