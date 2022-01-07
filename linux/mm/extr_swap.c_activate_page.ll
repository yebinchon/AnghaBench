; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap.c_activate_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap.c_activate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @activate_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %4 = load %struct.page*, %struct.page** %2, align 8
  %5 = call %struct.TYPE_4__* @page_pgdat(%struct.page* %4)
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.page*, %struct.page** %2, align 8
  %7 = call %struct.page* @compound_head(%struct.page* %6)
  store %struct.page* %7, %struct.page** %2, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load %struct.page*, %struct.page** %2, align 8
  %12 = load %struct.page*, %struct.page** %2, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = call i32 @mem_cgroup_page_lruvec(%struct.page* %12, %struct.TYPE_4__* %13)
  %15 = call i32 @__activate_page(%struct.page* %11, i32 %14, i32* null)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock_irq(i32* %17)
  ret void
}

declare dso_local %struct.TYPE_4__* @page_pgdat(%struct.page*) #1

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @__activate_page(%struct.page*, i32, i32*) #1

declare dso_local i32 @mem_cgroup_page_lruvec(%struct.page*, %struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
