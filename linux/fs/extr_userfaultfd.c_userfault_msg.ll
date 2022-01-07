; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_userfaultfd.c_userfault_msg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_userfaultfd.c_userfault_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uffd_msg = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@UFFD_EVENT_PAGEFAULT = common dso_local global i32 0, align 4
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@UFFD_PAGEFAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@VM_UFFD_WP = common dso_local global i64 0, align 8
@UFFD_PAGEFAULT_FLAG_WP = common dso_local global i32 0, align 4
@UFFD_FEATURE_THREAD_ID = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uffd_msg*, i64, i32, i64, i32)* @userfault_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @userfault_msg(%struct.uffd_msg* noalias sret %0, i64 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 %4, i32* %9, align 4
  %10 = call i32 @msg_init(%struct.uffd_msg* %0)
  %11 = load i32, i32* @UFFD_EVENT_PAGEFAULT, align 4
  %12 = getelementptr inbounds %struct.uffd_msg, %struct.uffd_msg* %0, i32 0, i32 1
  store i32 %11, i32* %12, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds %struct.uffd_msg, %struct.uffd_msg* %0, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i64 %13, i64* %16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %5
  %22 = load i32, i32* @UFFD_PAGEFAULT_FLAG_WRITE, align 4
  %23 = getelementptr inbounds %struct.uffd_msg, %struct.uffd_msg* %0, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %21, %5
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @VM_UFFD_WP, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32, i32* @UFFD_PAGEFAULT_FLAG_WP, align 4
  %35 = getelementptr inbounds %struct.uffd_msg, %struct.uffd_msg* %0, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %34
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %33, %28
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @UFFD_FEATURE_THREAD_ID, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32, i32* @current, align 4
  %47 = call i32 @task_pid_vnr(i32 %46)
  %48 = getelementptr inbounds %struct.uffd_msg, %struct.uffd_msg* %0, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 8
  br label %52

52:                                               ; preds = %45, %40
  ret void
}

declare dso_local i32 @msg_init(%struct.uffd_msg*) #1

declare dso_local i32 @task_pid_vnr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
