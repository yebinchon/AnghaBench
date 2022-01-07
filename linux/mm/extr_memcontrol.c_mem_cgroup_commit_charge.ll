; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_commit_charge.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_commit_charge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.mem_cgroup = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mem_cgroup_commit_charge(%struct.page* %0, %struct.mem_cgroup* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.mem_cgroup*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__, align 4
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.mem_cgroup* %1, %struct.mem_cgroup** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load %struct.page*, %struct.page** %5, align 8
  %15 = call i32 @hpage_nr_pages(%struct.page* %14)
  br label %17

16:                                               ; preds = %4
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ %15, %13 ], [ 1, %16 ]
  store i32 %18, i32* %9, align 4
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = getelementptr inbounds %struct.page, %struct.page* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load %struct.page*, %struct.page** %5, align 8
  %26 = call i32 @VM_BUG_ON_PAGE(i32 %24, %struct.page* %25)
  %27 = load %struct.page*, %struct.page** %5, align 8
  %28 = call i64 @PageLRU(%struct.page* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %30, %17
  %35 = phi i1 [ false, %17 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = load %struct.page*, %struct.page** %5, align 8
  %38 = call i32 @VM_BUG_ON_PAGE(i32 %36, %struct.page* %37)
  %39 = call i64 (...) @mem_cgroup_disabled()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %75

42:                                               ; preds = %34
  %43 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %44 = icmp ne %struct.mem_cgroup* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  br label %75

46:                                               ; preds = %42
  %47 = load %struct.page*, %struct.page** %5, align 8
  %48 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @commit_charge(%struct.page* %47, %struct.mem_cgroup* %48, i32 %49)
  %51 = call i32 (...) @local_irq_disable()
  %52 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %53 = load %struct.page*, %struct.page** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @mem_cgroup_charge_statistics(%struct.mem_cgroup* %52, %struct.page* %53, i32 %54, i32 %55)
  %57 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %58 = load %struct.page*, %struct.page** %5, align 8
  %59 = call i32 @memcg_check_events(%struct.mem_cgroup* %57, %struct.page* %58)
  %60 = call i32 (...) @local_irq_enable()
  %61 = call i64 (...) @do_memsw_account()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %46
  %64 = load %struct.page*, %struct.page** %5, align 8
  %65 = call i64 @PageSwapCache(%struct.page* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %69 = load %struct.page*, %struct.page** %5, align 8
  %70 = call i32 @page_private(%struct.page* %69)
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %9, align 4
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @mem_cgroup_uncharge_swap(i32 %73, i32 %71)
  br label %75

75:                                               ; preds = %41, %45, %67, %63, %46
  ret void
}

declare dso_local i32 @hpage_nr_pages(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i64 @PageLRU(%struct.page*) #1

declare dso_local i64 @mem_cgroup_disabled(...) #1

declare dso_local i32 @commit_charge(%struct.page*, %struct.mem_cgroup*, i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @mem_cgroup_charge_statistics(%struct.mem_cgroup*, %struct.page*, i32, i32) #1

declare dso_local i32 @memcg_check_events(%struct.mem_cgroup*, %struct.page*) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i64 @do_memsw_account(...) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @page_private(%struct.page*) #1

declare dso_local i32 @mem_cgroup_uncharge_swap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
