; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap.c_pagevec_move_tail.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap.c_pagevec_move_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pagevec = type { i32 }

@pagevec_move_tail_fn = common dso_local global i32 0, align 4
@PGROTATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pagevec*)* @pagevec_move_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pagevec_move_tail(%struct.pagevec* %0) #0 {
  %2 = alloca %struct.pagevec*, align 8
  %3 = alloca i32, align 4
  store %struct.pagevec* %0, %struct.pagevec** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %5 = load i32, i32* @pagevec_move_tail_fn, align 4
  %6 = call i32 @pagevec_lru_move_fn(%struct.pagevec* %4, i32 %5, i32* %3)
  %7 = load i32, i32* @PGROTATED, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @__count_vm_events(i32 %7, i32 %8)
  ret void
}

declare dso_local i32 @pagevec_lru_move_fn(%struct.pagevec*, i32, i32*) #1

declare dso_local i32 @__count_vm_events(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
