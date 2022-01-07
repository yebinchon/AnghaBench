; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_balloon_compaction.c_balloon_page_enqueue_one.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_balloon_compaction.c_balloon_page_enqueue_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.balloon_dev_info = type { i32 }
%struct.page = type { i32 }

@BALLOON_INFLATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.balloon_dev_info*, %struct.page*)* @balloon_page_enqueue_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balloon_page_enqueue_one(%struct.balloon_dev_info* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.balloon_dev_info*, align 8
  %4 = alloca %struct.page*, align 8
  store %struct.balloon_dev_info* %0, %struct.balloon_dev_info** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %5 = load %struct.page*, %struct.page** %4, align 8
  %6 = call i32 @trylock_page(%struct.page* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.balloon_dev_info*, %struct.balloon_dev_info** %3, align 8
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = call i32 @balloon_page_insert(%struct.balloon_dev_info* %11, %struct.page* %12)
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = call i32 @unlock_page(%struct.page* %14)
  %16 = load i32, i32* @BALLOON_INFLATE, align 4
  %17 = call i32 @__count_vm_event(i32 %16)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i32 @balloon_page_insert(%struct.balloon_dev_info*, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @__count_vm_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
