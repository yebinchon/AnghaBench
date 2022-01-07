; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_status.c_selinux_kernel_status_page.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_status.c_selinux_kernel_status_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.selinux_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.page* }
%struct.selinux_kernel_status = type { i32, i64, i32, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@SELINUX_KERNEL_STATUS_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @selinux_kernel_status_page(%struct.selinux_state* %0) #0 {
  %2 = alloca %struct.selinux_state*, align 8
  %3 = alloca %struct.selinux_kernel_status*, align 8
  %4 = alloca %struct.page*, align 8
  store %struct.selinux_state* %0, %struct.selinux_state** %2, align 8
  store %struct.page* null, %struct.page** %4, align 8
  %5 = load %struct.selinux_state*, %struct.selinux_state** %2, align 8
  %6 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.selinux_state*, %struct.selinux_state** %2, align 8
  %11 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.page*, %struct.page** %13, align 8
  %15 = icmp ne %struct.page* %14, null
  br i1 %15, label %57, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load i32, i32* @__GFP_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.page* @alloc_page(i32 %19)
  %21 = load %struct.selinux_state*, %struct.selinux_state** %2, align 8
  %22 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store %struct.page* %20, %struct.page** %24, align 8
  %25 = load %struct.selinux_state*, %struct.selinux_state** %2, align 8
  %26 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.page*, %struct.page** %28, align 8
  %30 = icmp ne %struct.page* %29, null
  br i1 %30, label %31, label %56

31:                                               ; preds = %16
  %32 = load %struct.selinux_state*, %struct.selinux_state** %2, align 8
  %33 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.page*, %struct.page** %35, align 8
  %37 = call %struct.selinux_kernel_status* @page_address(%struct.page* %36)
  store %struct.selinux_kernel_status* %37, %struct.selinux_kernel_status** %3, align 8
  %38 = load i32, i32* @SELINUX_KERNEL_STATUS_VERSION, align 4
  %39 = load %struct.selinux_kernel_status*, %struct.selinux_kernel_status** %3, align 8
  %40 = getelementptr inbounds %struct.selinux_kernel_status, %struct.selinux_kernel_status* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.selinux_kernel_status*, %struct.selinux_kernel_status** %3, align 8
  %42 = getelementptr inbounds %struct.selinux_kernel_status, %struct.selinux_kernel_status* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.selinux_state*, %struct.selinux_state** %2, align 8
  %44 = call i32 @enforcing_enabled(%struct.selinux_state* %43)
  %45 = load %struct.selinux_kernel_status*, %struct.selinux_kernel_status** %3, align 8
  %46 = getelementptr inbounds %struct.selinux_kernel_status, %struct.selinux_kernel_status* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.selinux_kernel_status*, %struct.selinux_kernel_status** %3, align 8
  %48 = getelementptr inbounds %struct.selinux_kernel_status, %struct.selinux_kernel_status* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.selinux_state*, %struct.selinux_state** %2, align 8
  %50 = call i32 @security_get_allow_unknown(%struct.selinux_state* %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = load %struct.selinux_kernel_status*, %struct.selinux_kernel_status** %3, align 8
  %55 = getelementptr inbounds %struct.selinux_kernel_status, %struct.selinux_kernel_status* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %31, %16
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.selinux_state*, %struct.selinux_state** %2, align 8
  %59 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load %struct.page*, %struct.page** %61, align 8
  store %struct.page* %62, %struct.page** %4, align 8
  %63 = load %struct.selinux_state*, %struct.selinux_state** %2, align 8
  %64 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load %struct.page*, %struct.page** %4, align 8
  ret %struct.page* %68
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local %struct.selinux_kernel_status* @page_address(%struct.page*) #1

declare dso_local i32 @enforcing_enabled(%struct.selinux_state*) #1

declare dso_local i32 @security_get_allow_unknown(%struct.selinux_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
