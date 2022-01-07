; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_userfaultfd.c_userfaultfd_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_userfaultfd.c_userfaultfd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.TYPE_5__, %struct.mm_struct* }
%struct.TYPE_5__ = type { %struct.userfaultfd_ctx* }
%struct.userfaultfd_ctx = type { i32, i32 }
%struct.mm_struct = type { i32 }
%struct.userfaultfd_wait_queue = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@UFFD_FEATURE_EVENT_REMOVE = common dso_local global i32 0, align 4
@UFFD_EVENT_REMOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @userfaultfd_remove(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca %struct.userfaultfd_ctx*, align 8
  %10 = alloca %struct.userfaultfd_wait_queue, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 1
  %13 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  store %struct.mm_struct* %13, %struct.mm_struct** %8, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %16, align 8
  store %struct.userfaultfd_ctx* %17, %struct.userfaultfd_ctx** %9, align 8
  %18 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %9, align 8
  %19 = icmp ne %struct.userfaultfd_ctx* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %9, align 8
  %22 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @UFFD_FEATURE_EVENT_REMOVE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20, %3
  store i32 1, i32* %4, align 4
  br label %55

28:                                               ; preds = %20
  %29 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %9, align 8
  %30 = call i32 @userfaultfd_ctx_get(%struct.userfaultfd_ctx* %29)
  %31 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %9, align 8
  %32 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @WRITE_ONCE(i32 %33, i32 1)
  %35 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %36 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %35, i32 0, i32 0
  %37 = call i32 @up_read(i32* %36)
  %38 = getelementptr inbounds %struct.userfaultfd_wait_queue, %struct.userfaultfd_wait_queue* %10, i32 0, i32 0
  %39 = call i32 @msg_init(%struct.TYPE_8__* %38)
  %40 = load i32, i32* @UFFD_EVENT_REMOVE, align 4
  %41 = getelementptr inbounds %struct.userfaultfd_wait_queue, %struct.userfaultfd_wait_queue* %10, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.userfaultfd_wait_queue, %struct.userfaultfd_wait_queue* %10, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i64 %43, i64* %47, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.userfaultfd_wait_queue, %struct.userfaultfd_wait_queue* %10, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i64 %48, i64* %52, align 8
  %53 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %9, align 8
  %54 = call i32 @userfaultfd_event_wait_completion(%struct.userfaultfd_ctx* %53, %struct.userfaultfd_wait_queue* %10)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %28, %27
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @userfaultfd_ctx_get(%struct.userfaultfd_ctx*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @msg_init(%struct.TYPE_8__*) #1

declare dso_local i32 @userfaultfd_event_wait_completion(%struct.userfaultfd_ctx*, %struct.userfaultfd_wait_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
