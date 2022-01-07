; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_try_charge.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_try_charge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.mm_struct = type { i32 }
%struct.mem_cgroup = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@do_swap_account = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mem_cgroup_try_charge(%struct.page* %0, %struct.mm_struct* %1, i32 %2, %struct.mem_cgroup** %3, i32 %4) #0 {
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mem_cgroup**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mem_cgroup*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__, align 4
  %15 = alloca i16, align 2
  store %struct.page* %0, %struct.page** %6, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mem_cgroup** %3, %struct.mem_cgroup*** %9, align 8
  store i32 %4, i32* %10, align 4
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %11, align 8
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load %struct.page*, %struct.page** %6, align 8
  %20 = call i32 @hpage_nr_pages(%struct.page* %19)
  br label %22

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %21, %18
  %23 = phi i32 [ %20, %18 ], [ 1, %21 ]
  store i32 %23, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %24 = call i64 (...) @mem_cgroup_disabled()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %83

27:                                               ; preds = %22
  %28 = load %struct.page*, %struct.page** %6, align 8
  %29 = call i64 @PageSwapCache(%struct.page* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %69

31:                                               ; preds = %27
  %32 = load %struct.page*, %struct.page** %6, align 8
  %33 = call i32 @PageLocked(%struct.page* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load %struct.page*, %struct.page** %6, align 8
  %38 = call i32 @VM_BUG_ON_PAGE(i32 %36, %struct.page* %37)
  %39 = load %struct.page*, %struct.page** %6, align 8
  %40 = call %struct.TYPE_5__* @compound_head(%struct.page* %39)
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %83

45:                                               ; preds = %31
  %46 = load i64, i64* @do_swap_account, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %50 = load %struct.page*, %struct.page** %6, align 8
  %51 = call i32 @page_private(%struct.page* %50)
  store i32 %51, i32* %49, align 4
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call zeroext i16 @lookup_swap_cgroup_id(i32 %53)
  store i16 %54, i16* %15, align 2
  %55 = call i32 (...) @rcu_read_lock()
  %56 = load i16, i16* %15, align 2
  %57 = call %struct.mem_cgroup* @mem_cgroup_from_id(i16 zeroext %56)
  store %struct.mem_cgroup* %57, %struct.mem_cgroup** %11, align 8
  %58 = load %struct.mem_cgroup*, %struct.mem_cgroup** %11, align 8
  %59 = icmp ne %struct.mem_cgroup* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %48
  %61 = load %struct.mem_cgroup*, %struct.mem_cgroup** %11, align 8
  %62 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %61, i32 0, i32 0
  %63 = call i32 @css_tryget_online(i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %11, align 8
  br label %66

66:                                               ; preds = %65, %60, %48
  %67 = call i32 (...) @rcu_read_unlock()
  br label %68

68:                                               ; preds = %66, %45
  br label %69

69:                                               ; preds = %68, %27
  %70 = load %struct.mem_cgroup*, %struct.mem_cgroup** %11, align 8
  %71 = icmp ne %struct.mem_cgroup* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %74 = call %struct.mem_cgroup* @get_mem_cgroup_from_mm(%struct.mm_struct* %73)
  store %struct.mem_cgroup* %74, %struct.mem_cgroup** %11, align 8
  br label %75

75:                                               ; preds = %72, %69
  %76 = load %struct.mem_cgroup*, %struct.mem_cgroup** %11, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @try_charge(%struct.mem_cgroup* %76, i32 %77, i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load %struct.mem_cgroup*, %struct.mem_cgroup** %11, align 8
  %81 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %80, i32 0, i32 0
  %82 = call i32 @css_put(i32* %81)
  br label %83

83:                                               ; preds = %75, %44, %26
  %84 = load %struct.mem_cgroup*, %struct.mem_cgroup** %11, align 8
  %85 = load %struct.mem_cgroup**, %struct.mem_cgroup*** %9, align 8
  store %struct.mem_cgroup* %84, %struct.mem_cgroup** %85, align 8
  %86 = load i32, i32* %13, align 4
  ret i32 %86
}

declare dso_local i32 @hpage_nr_pages(%struct.page*) #1

declare dso_local i64 @mem_cgroup_disabled(...) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local %struct.TYPE_5__* @compound_head(%struct.page*) #1

declare dso_local i32 @page_private(%struct.page*) #1

declare dso_local zeroext i16 @lookup_swap_cgroup_id(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.mem_cgroup* @mem_cgroup_from_id(i16 zeroext) #1

declare dso_local i32 @css_tryget_online(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.mem_cgroup* @get_mem_cgroup_from_mm(%struct.mm_struct*) #1

declare dso_local i32 @try_charge(%struct.mem_cgroup*, i32, i32) #1

declare dso_local i32 @css_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
