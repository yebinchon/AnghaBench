; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_migrate.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_migrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.mem_cgroup* }
%struct.mem_cgroup = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mem_cgroup_migrate(%struct.page* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.mem_cgroup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = call i32 @PageLocked(%struct.page* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = load %struct.page*, %struct.page** %3, align 8
  %15 = call i32 @VM_BUG_ON_PAGE(i32 %13, %struct.page* %14)
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = call i32 @PageLocked(%struct.page* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = call i32 @VM_BUG_ON_PAGE(i32 %20, %struct.page* %21)
  %23 = load %struct.page*, %struct.page** %3, align 8
  %24 = call i64 @PageAnon(%struct.page* %23)
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = call i64 @PageAnon(%struct.page* %25)
  %27 = icmp ne i64 %24, %26
  %28 = zext i1 %27 to i32
  %29 = load %struct.page*, %struct.page** %4, align 8
  %30 = call i32 @VM_BUG_ON_PAGE(i32 %28, %struct.page* %29)
  %31 = load %struct.page*, %struct.page** %3, align 8
  %32 = call i32 @PageTransHuge(%struct.page* %31)
  %33 = load %struct.page*, %struct.page** %4, align 8
  %34 = call i32 @PageTransHuge(%struct.page* %33)
  %35 = icmp ne i32 %32, %34
  %36 = zext i1 %35 to i32
  %37 = load %struct.page*, %struct.page** %4, align 8
  %38 = call i32 @VM_BUG_ON_PAGE(i32 %36, %struct.page* %37)
  %39 = call i64 (...) @mem_cgroup_disabled()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  br label %97

42:                                               ; preds = %2
  %43 = load %struct.page*, %struct.page** %4, align 8
  %44 = getelementptr inbounds %struct.page, %struct.page* %43, i32 0, i32 0
  %45 = load %struct.mem_cgroup*, %struct.mem_cgroup** %44, align 8
  %46 = icmp ne %struct.mem_cgroup* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %97

48:                                               ; preds = %42
  %49 = load %struct.page*, %struct.page** %3, align 8
  %50 = getelementptr inbounds %struct.page, %struct.page* %49, i32 0, i32 0
  %51 = load %struct.mem_cgroup*, %struct.mem_cgroup** %50, align 8
  store %struct.mem_cgroup* %51, %struct.mem_cgroup** %5, align 8
  %52 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %53 = icmp ne %struct.mem_cgroup* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %97

55:                                               ; preds = %48
  %56 = load %struct.page*, %struct.page** %4, align 8
  %57 = call i32 @PageTransHuge(%struct.page* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.page*, %struct.page** %4, align 8
  %62 = call i32 @hpage_nr_pages(%struct.page* %61)
  br label %64

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i32 [ %62, %60 ], [ 1, %63 ]
  store i32 %65, i32* %6, align 4
  %66 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %67 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %66, i32 0, i32 2
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @page_counter_charge(i32* %67, i32 %68)
  %70 = call i64 (...) @do_memsw_account()
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %74 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %73, i32 0, i32 1
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @page_counter_charge(i32* %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %64
  %78 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %79 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %78, i32 0, i32 0
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @css_get_many(i32* %79, i32 %80)
  %82 = load %struct.page*, %struct.page** %4, align 8
  %83 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %84 = call i32 @commit_charge(%struct.page* %82, %struct.mem_cgroup* %83, i32 0)
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @local_irq_save(i64 %85)
  %87 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %88 = load %struct.page*, %struct.page** %4, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @mem_cgroup_charge_statistics(%struct.mem_cgroup* %87, %struct.page* %88, i32 %89, i32 %90)
  %92 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %93 = load %struct.page*, %struct.page** %4, align 8
  %94 = call i32 @memcg_check_events(%struct.mem_cgroup* %92, %struct.page* %93)
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @local_irq_restore(i64 %95)
  br label %97

97:                                               ; preds = %77, %54, %47, %41
  ret void
}

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i32 @PageTransHuge(%struct.page*) #1

declare dso_local i64 @mem_cgroup_disabled(...) #1

declare dso_local i32 @hpage_nr_pages(%struct.page*) #1

declare dso_local i32 @page_counter_charge(i32*, i32) #1

declare dso_local i64 @do_memsw_account(...) #1

declare dso_local i32 @css_get_many(i32*, i32) #1

declare dso_local i32 @commit_charge(%struct.page*, %struct.mem_cgroup*, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @mem_cgroup_charge_statistics(%struct.mem_cgroup*, %struct.page*, i32, i32) #1

declare dso_local i32 @memcg_check_events(%struct.mem_cgroup*, %struct.page*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
