; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_userfaultfd.c_userfaultfd_event_wait_completion.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_userfaultfd.c_userfaultfd_event_wait_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { %struct.userfaultfd_ctx* }
%struct.userfaultfd_ctx = type { i32, %struct.mm_struct*, %struct.TYPE_14__, i32, i32 }
%struct.mm_struct = type { i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, %struct.TYPE_15__, %struct.vm_area_struct* }
%struct.TYPE_14__ = type { i32 }
%struct.userfaultfd_wait_queue = type { %struct.TYPE_12__, i32, %struct.userfaultfd_ctx* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@current = common dso_local global %struct.TYPE_13__* null, align 8
@PF_EXITING = common dso_local global i32 0, align 4
@TASK_KILLABLE = common dso_local global i32 0, align 4
@UFFD_EVENT_FORK = common dso_local global i64 0, align 8
@EPOLLIN = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@NULL_VM_UFFD_CTX = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@VM_UFFD_WP = common dso_local global i32 0, align 4
@VM_UFFD_MISSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.userfaultfd_ctx*, %struct.userfaultfd_wait_queue*)* @userfaultfd_event_wait_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @userfaultfd_event_wait_completion(%struct.userfaultfd_ctx* %0, %struct.userfaultfd_wait_queue* %1) #0 {
  %3 = alloca %struct.userfaultfd_ctx*, align 8
  %4 = alloca %struct.userfaultfd_wait_queue*, align 8
  %5 = alloca %struct.userfaultfd_ctx*, align 8
  %6 = alloca %struct.userfaultfd_ctx*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.mm_struct*, align 8
  store %struct.userfaultfd_ctx* %0, %struct.userfaultfd_ctx** %3, align 8
  store %struct.userfaultfd_wait_queue* %1, %struct.userfaultfd_wait_queue** %4, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PF_EXITING, align 4
  %13 = and i32 %11, %12
  %14 = call i64 @WARN_ON_ONCE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %148

17:                                               ; preds = %2
  %18 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %3, align 8
  %19 = load %struct.userfaultfd_wait_queue*, %struct.userfaultfd_wait_queue** %4, align 8
  %20 = getelementptr inbounds %struct.userfaultfd_wait_queue, %struct.userfaultfd_wait_queue* %19, i32 0, i32 2
  store %struct.userfaultfd_ctx* %18, %struct.userfaultfd_ctx** %20, align 8
  %21 = load %struct.userfaultfd_wait_queue*, %struct.userfaultfd_wait_queue** %4, align 8
  %22 = getelementptr inbounds %struct.userfaultfd_wait_queue, %struct.userfaultfd_wait_queue* %21, i32 0, i32 1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %24 = call i32 @init_waitqueue_entry(i32* %22, %struct.TYPE_13__* %23)
  store %struct.userfaultfd_ctx* null, %struct.userfaultfd_ctx** %5, align 8
  %25 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = call i32 @spin_lock_irq(i32* %27)
  %29 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %29, i32 0, i32 2
  %31 = load %struct.userfaultfd_wait_queue*, %struct.userfaultfd_wait_queue** %4, align 8
  %32 = getelementptr inbounds %struct.userfaultfd_wait_queue, %struct.userfaultfd_wait_queue* %31, i32 0, i32 1
  %33 = call i32 @__add_wait_queue(%struct.TYPE_14__* %30, i32* %32)
  br label %34

34:                                               ; preds = %75, %17
  %35 = load i32, i32* @TASK_KILLABLE, align 4
  %36 = call i32 @set_current_state(i32 %35)
  %37 = load %struct.userfaultfd_wait_queue*, %struct.userfaultfd_wait_queue** %4, align 8
  %38 = getelementptr inbounds %struct.userfaultfd_wait_queue, %struct.userfaultfd_wait_queue* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %89

43:                                               ; preds = %34
  %44 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @READ_ONCE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %51 = call i64 @fatal_signal_pending(%struct.TYPE_13__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %49, %43
  %54 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %54, i32 0, i32 2
  %56 = load %struct.userfaultfd_wait_queue*, %struct.userfaultfd_wait_queue** %4, align 8
  %57 = getelementptr inbounds %struct.userfaultfd_wait_queue, %struct.userfaultfd_wait_queue* %56, i32 0, i32 1
  %58 = call i32 @__remove_wait_queue(%struct.TYPE_14__* %55, i32* %57)
  %59 = load %struct.userfaultfd_wait_queue*, %struct.userfaultfd_wait_queue** %4, align 8
  %60 = getelementptr inbounds %struct.userfaultfd_wait_queue, %struct.userfaultfd_wait_queue* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @UFFD_EVENT_FORK, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %53
  %66 = load %struct.userfaultfd_wait_queue*, %struct.userfaultfd_wait_queue** %4, align 8
  %67 = getelementptr inbounds %struct.userfaultfd_wait_queue, %struct.userfaultfd_wait_queue* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.userfaultfd_ctx*
  store %struct.userfaultfd_ctx* %72, %struct.userfaultfd_ctx** %6, align 8
  %73 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %6, align 8
  store %struct.userfaultfd_ctx* %73, %struct.userfaultfd_ctx** %5, align 8
  br label %74

74:                                               ; preds = %65, %53
  br label %89

75:                                               ; preds = %49
  %76 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %3, align 8
  %77 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock_irq(i32* %78)
  %80 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %3, align 8
  %81 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %80, i32 0, i32 3
  %82 = load i32, i32* @EPOLLIN, align 4
  %83 = call i32 @wake_up_poll(i32* %81, i32 %82)
  %84 = call i32 (...) @schedule()
  %85 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %3, align 8
  %86 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = call i32 @spin_lock_irq(i32* %87)
  br label %34

89:                                               ; preds = %74, %42
  %90 = load i32, i32* @TASK_RUNNING, align 4
  %91 = call i32 @__set_current_state(i32 %90)
  %92 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %3, align 8
  %93 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock_irq(i32* %94)
  %96 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %5, align 8
  %97 = icmp ne %struct.userfaultfd_ctx* %96, null
  br i1 %97, label %98, label %147

98:                                               ; preds = %89
  %99 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %5, align 8
  %100 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %99, i32 0, i32 1
  %101 = load %struct.mm_struct*, %struct.mm_struct** %100, align 8
  store %struct.mm_struct* %101, %struct.mm_struct** %8, align 8
  %102 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %103 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %102, i32 0, i32 0
  %104 = call i32 @down_write(i32* %103)
  %105 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %106 = call i32 @mmget_still_valid(%struct.mm_struct* %105)
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i32 @VM_WARN_ON(i32 %109)
  %111 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %112 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %111, i32 0, i32 1
  %113 = load %struct.vm_area_struct*, %struct.vm_area_struct** %112, align 8
  store %struct.vm_area_struct* %113, %struct.vm_area_struct** %7, align 8
  br label %114

114:                                              ; preds = %137, %98
  %115 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %116 = icmp ne %struct.vm_area_struct* %115, null
  br i1 %116, label %117, label %141

117:                                              ; preds = %114
  %118 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %119 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %120, align 8
  %122 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %5, align 8
  %123 = icmp eq %struct.userfaultfd_ctx* %121, %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %117
  %125 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %126 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %125, i32 0, i32 1
  %127 = bitcast %struct.TYPE_15__* %126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %127, i8* align 8 bitcast (%struct.TYPE_15__* @NULL_VM_UFFD_CTX to i8*), i64 8, i1 false)
  %128 = load i32, i32* @VM_UFFD_WP, align 4
  %129 = load i32, i32* @VM_UFFD_MISSING, align 4
  %130 = or i32 %128, %129
  %131 = xor i32 %130, -1
  %132 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %133 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %124, %117
  br label %137

137:                                              ; preds = %136
  %138 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %139 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %138, i32 0, i32 2
  %140 = load %struct.vm_area_struct*, %struct.vm_area_struct** %139, align 8
  store %struct.vm_area_struct* %140, %struct.vm_area_struct** %7, align 8
  br label %114

141:                                              ; preds = %114
  %142 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %143 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %142, i32 0, i32 0
  %144 = call i32 @up_write(i32* %143)
  %145 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %5, align 8
  %146 = call i32 @userfaultfd_ctx_put(%struct.userfaultfd_ctx* %145)
  br label %147

147:                                              ; preds = %141, %89
  br label %148

148:                                              ; preds = %147, %16
  %149 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %3, align 8
  %150 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @WRITE_ONCE(i32 %151, i32 0)
  %153 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %3, align 8
  %154 = call i32 @userfaultfd_ctx_put(%struct.userfaultfd_ctx* %153)
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @init_waitqueue_entry(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @__add_wait_queue(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @fatal_signal_pending(%struct.TYPE_13__*) #1

declare dso_local i32 @__remove_wait_queue(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wake_up_poll(i32*, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @VM_WARN_ON(i32) #1

declare dso_local i32 @mmget_still_valid(%struct.mm_struct*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @userfaultfd_ctx_put(%struct.userfaultfd_ctx*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
