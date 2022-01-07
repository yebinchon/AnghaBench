; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_status.c_selinux_status_update_policyload.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_status.c_selinux_status_update_policyload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selinux_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.selinux_kernel_status = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @selinux_status_update_policyload(%struct.selinux_state* %0, i32 %1) #0 {
  %3 = alloca %struct.selinux_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.selinux_kernel_status*, align 8
  store %struct.selinux_state* %0, %struct.selinux_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.selinux_state*, %struct.selinux_state** %3, align 8
  %7 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.selinux_state*, %struct.selinux_state** %3, align 8
  %12 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %2
  %18 = load %struct.selinux_state*, %struct.selinux_state** %3, align 8
  %19 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call %struct.selinux_kernel_status* @page_address(i64 %22)
  store %struct.selinux_kernel_status* %23, %struct.selinux_kernel_status** %5, align 8
  %24 = load %struct.selinux_kernel_status*, %struct.selinux_kernel_status** %5, align 8
  %25 = getelementptr inbounds %struct.selinux_kernel_status, %struct.selinux_kernel_status* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = call i32 (...) @smp_wmb()
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.selinux_kernel_status*, %struct.selinux_kernel_status** %5, align 8
  %31 = getelementptr inbounds %struct.selinux_kernel_status, %struct.selinux_kernel_status* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.selinux_state*, %struct.selinux_state** %3, align 8
  %33 = call i32 @security_get_allow_unknown(%struct.selinux_state* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load %struct.selinux_kernel_status*, %struct.selinux_kernel_status** %5, align 8
  %38 = getelementptr inbounds %struct.selinux_kernel_status, %struct.selinux_kernel_status* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = call i32 (...) @smp_wmb()
  %40 = load %struct.selinux_kernel_status*, %struct.selinux_kernel_status** %5, align 8
  %41 = getelementptr inbounds %struct.selinux_kernel_status, %struct.selinux_kernel_status* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %17, %2
  %45 = load %struct.selinux_state*, %struct.selinux_state** %3, align 8
  %46 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.selinux_kernel_status* @page_address(i64) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @security_get_allow_unknown(%struct.selinux_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
