; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_userfaultfd.c_mremap_userfaultfd_complete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_userfaultfd.c_mremap_userfaultfd_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_userfaultfd_ctx = type { %struct.userfaultfd_ctx* }
%struct.userfaultfd_ctx = type { i32 }
%struct.userfaultfd_wait_queue = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64 }

@PAGE_MASK = common dso_local global i64 0, align 8
@UFFD_EVENT_REMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mremap_userfaultfd_complete(%struct.vm_userfaultfd_ctx* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.vm_userfaultfd_ctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.userfaultfd_ctx*, align 8
  %10 = alloca %struct.userfaultfd_wait_queue, align 8
  store %struct.vm_userfaultfd_ctx* %0, %struct.vm_userfaultfd_ctx** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.vm_userfaultfd_ctx*, %struct.vm_userfaultfd_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.vm_userfaultfd_ctx, %struct.vm_userfaultfd_ctx* %11, i32 0, i32 0
  %13 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %12, align 8
  store %struct.userfaultfd_ctx* %13, %struct.userfaultfd_ctx** %9, align 8
  %14 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %9, align 8
  %15 = icmp ne %struct.userfaultfd_ctx* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %49

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @PAGE_MASK, align 8
  %20 = xor i64 %19, -1
  %21 = and i64 %18, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %9, align 8
  %25 = call i32 @userfaultfd_ctx_put(%struct.userfaultfd_ctx* %24)
  br label %49

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.userfaultfd_wait_queue, %struct.userfaultfd_wait_queue* %10, i32 0, i32 0
  %28 = call i32 @msg_init(%struct.TYPE_6__* %27)
  %29 = load i32, i32* @UFFD_EVENT_REMAP, align 4
  %30 = getelementptr inbounds %struct.userfaultfd_wait_queue, %struct.userfaultfd_wait_queue* %10, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds %struct.userfaultfd_wait_queue, %struct.userfaultfd_wait_queue* %10, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i64 %32, i64* %36, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.userfaultfd_wait_queue, %struct.userfaultfd_wait_queue* %10, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i64 %37, i64* %41, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.userfaultfd_wait_queue, %struct.userfaultfd_wait_queue* %10, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i64 %42, i64* %46, align 8
  %47 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %9, align 8
  %48 = call i32 @userfaultfd_event_wait_completion(%struct.userfaultfd_ctx* %47, %struct.userfaultfd_wait_queue* %10)
  br label %49

49:                                               ; preds = %26, %23, %16
  ret void
}

declare dso_local i32 @userfaultfd_ctx_put(%struct.userfaultfd_ctx*) #1

declare dso_local i32 @msg_init(%struct.TYPE_6__*) #1

declare dso_local i32 @userfaultfd_event_wait_completion(%struct.userfaultfd_ctx*, %struct.userfaultfd_wait_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
