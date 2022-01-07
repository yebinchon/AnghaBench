; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_khugepaged.c_collect_mm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_khugepaged.c_collect_mm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_slot = type { i32, i32, %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@khugepaged_mm_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_slot*)* @collect_mm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collect_mm_slot(%struct.mm_slot* %0) #0 {
  %2 = alloca %struct.mm_slot*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  store %struct.mm_slot* %0, %struct.mm_slot** %2, align 8
  %4 = load %struct.mm_slot*, %struct.mm_slot** %2, align 8
  %5 = getelementptr inbounds %struct.mm_slot, %struct.mm_slot* %4, i32 0, i32 2
  %6 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  store %struct.mm_struct* %6, %struct.mm_struct** %3, align 8
  %7 = call i32 @lockdep_assert_held(i32* @khugepaged_mm_lock)
  %8 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %9 = call i64 @khugepaged_test_exit(%struct.mm_struct* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.mm_slot*, %struct.mm_slot** %2, align 8
  %13 = getelementptr inbounds %struct.mm_slot, %struct.mm_slot* %12, i32 0, i32 1
  %14 = call i32 @hash_del(i32* %13)
  %15 = load %struct.mm_slot*, %struct.mm_slot** %2, align 8
  %16 = getelementptr inbounds %struct.mm_slot, %struct.mm_slot* %15, i32 0, i32 0
  %17 = call i32 @list_del(i32* %16)
  %18 = load %struct.mm_slot*, %struct.mm_slot** %2, align 8
  %19 = call i32 @free_mm_slot(%struct.mm_slot* %18)
  %20 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %21 = call i32 @mmdrop(%struct.mm_struct* %20)
  br label %22

22:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @khugepaged_test_exit(%struct.mm_struct*) #1

declare dso_local i32 @hash_del(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @free_mm_slot(%struct.mm_slot*) #1

declare dso_local i32 @mmdrop(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
