; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_binder_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_binder_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_BINDER = common dso_local global i32 0, align 4
@BINDER__IMPERSONATE = common dso_local global i32 0, align 4
@BINDER__CALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.task_struct*)* @selinux_binder_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_binder_transaction(%struct.task_struct* %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %10 = call i64 (...) @current_sid()
  store i64 %10, i64* %6, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %12 = call i64 @task_sid(%struct.task_struct* %11)
  store i64 %12, i64* %7, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %14 = call i64 @task_sid(%struct.task_struct* %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* @SECCLASS_BINDER, align 4
  %22 = load i32, i32* @BINDER__IMPERSONATE, align 4
  %23 = call i32 @avc_has_perm(i32* @selinux_state, i64 %19, i64 %20, i32 %21, i32 %22, i32* null)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %3, align 4
  br label %35

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i32, i32* @SECCLASS_BINDER, align 4
  %33 = load i32, i32* @BINDER__CALL, align 4
  %34 = call i32 @avc_has_perm(i32* @selinux_state, i64 %30, i64 %31, i32 %32, i32 %33, i32* null)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %29, %26
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @current_sid(...) #1

declare dso_local i64 @task_sid(%struct.task_struct*) #1

declare dso_local i32 @avc_has_perm(i32*, i64, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
