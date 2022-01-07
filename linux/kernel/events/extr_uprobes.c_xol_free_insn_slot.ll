; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_uprobes.c_xol_free_insn_slot.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_uprobes.c_xol_free_insn_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.xol_area* }
%struct.xol_area = type { i64, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@UPROBE_XOL_SLOT_BYTES = common dso_local global i64 0, align 8
@UINSNS_PER_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*)* @xol_free_insn_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xol_free_insn_slot(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.xol_area*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.xol_area*, %struct.xol_area** %17, align 8
  %19 = icmp ne %struct.xol_area* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %12, %1
  br label %97

26:                                               ; preds = %20
  %27 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %97

39:                                               ; preds = %26
  %40 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %41 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.xol_area*, %struct.xol_area** %44, align 8
  store %struct.xol_area* %45, %struct.xol_area** %3, align 8
  %46 = load %struct.xol_area*, %struct.xol_area** %3, align 8
  %47 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PAGE_SIZE, align 8
  %50 = add i64 %48, %49
  store i64 %50, i64* %4, align 8
  %51 = load %struct.xol_area*, %struct.xol_area** %3, align 8
  %52 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = icmp ule i64 %53, %54
  br i1 %55, label %56, label %97

56:                                               ; preds = %39
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* %4, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %97

60:                                               ; preds = %56
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.xol_area*, %struct.xol_area** %3, align 8
  %63 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub i64 %61, %64
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @UPROBE_XOL_SLOT_BYTES, align 8
  %68 = udiv i64 %66, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @UINSNS_PER_PAGE, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %97

74:                                               ; preds = %60
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.xol_area*, %struct.xol_area** %3, align 8
  %77 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @clear_bit(i32 %75, i32 %78)
  %80 = load %struct.xol_area*, %struct.xol_area** %3, align 8
  %81 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %80, i32 0, i32 2
  %82 = call i32 @atomic_dec(i32* %81)
  %83 = call i32 (...) @smp_mb__after_atomic()
  %84 = load %struct.xol_area*, %struct.xol_area** %3, align 8
  %85 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %84, i32 0, i32 1
  %86 = call i64 @waitqueue_active(i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %74
  %89 = load %struct.xol_area*, %struct.xol_area** %3, align 8
  %90 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %89, i32 0, i32 1
  %91 = call i32 @wake_up(i32* %90)
  br label %92

92:                                               ; preds = %88, %74
  %93 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %94 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %25, %38, %73, %92, %56, %39
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
