; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_read_u64.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_read_u64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { i32 }
%struct.cftype = type { i32 }
%struct.mem_cgroup = type { i32, %struct.page_counter, %struct.page_counter, %struct.page_counter, %struct.page_counter }
%struct.page_counter = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup_subsys_state*, %struct.cftype*)* @mem_cgroup_read_u64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_cgroup_read_u64(%struct.cgroup_subsys_state* %0, %struct.cftype* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cgroup_subsys_state*, align 8
  %5 = alloca %struct.cftype*, align 8
  %6 = alloca %struct.mem_cgroup*, align 8
  %7 = alloca %struct.page_counter*, align 8
  store %struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state** %4, align 8
  store %struct.cftype* %1, %struct.cftype** %5, align 8
  %8 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %9 = call %struct.mem_cgroup* @mem_cgroup_from_css(%struct.cgroup_subsys_state* %8)
  store %struct.mem_cgroup* %9, %struct.mem_cgroup** %6, align 8
  %10 = load %struct.cftype*, %struct.cftype** %5, align 8
  %11 = getelementptr inbounds %struct.cftype, %struct.cftype* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @MEMFILE_TYPE(i32 %12)
  switch i32 %13, label %26 [
    i32 130, label %14
    i32 129, label %17
    i32 131, label %20
    i32 128, label %23
  ]

14:                                               ; preds = %2
  %15 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %16 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %15, i32 0, i32 2
  store %struct.page_counter* %16, %struct.page_counter** %7, align 8
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %19 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %18, i32 0, i32 1
  store %struct.page_counter* %19, %struct.page_counter** %7, align 8
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %22 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %21, i32 0, i32 4
  store %struct.page_counter* %22, %struct.page_counter** %7, align 8
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %25 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %24, i32 0, i32 3
  store %struct.page_counter* %25, %struct.page_counter** %7, align 8
  br label %28

26:                                               ; preds = %2
  %27 = call i32 (...) @BUG()
  br label %28

28:                                               ; preds = %26, %23, %20, %17, %14
  %29 = load %struct.cftype*, %struct.cftype** %5, align 8
  %30 = getelementptr inbounds %struct.cftype, %struct.cftype* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @MEMFILE_ATTR(i32 %31)
  switch i32 %32, label %80 [
    i32 132, label %33
    i32 135, label %58
    i32 134, label %64
    i32 136, label %70
    i32 133, label %74
  ]

33:                                               ; preds = %28
  %34 = load %struct.page_counter*, %struct.page_counter** %7, align 8
  %35 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %36 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %35, i32 0, i32 2
  %37 = icmp eq %struct.page_counter* %34, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %40 = call i32 @mem_cgroup_usage(%struct.mem_cgroup* %39, i32 0)
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = mul nsw i32 %40, %41
  store i32 %42, i32* %3, align 4
  br label %82

43:                                               ; preds = %33
  %44 = load %struct.page_counter*, %struct.page_counter** %7, align 8
  %45 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %46 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %45, i32 0, i32 1
  %47 = icmp eq %struct.page_counter* %44, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %50 = call i32 @mem_cgroup_usage(%struct.mem_cgroup* %49, i32 1)
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %3, align 4
  br label %82

53:                                               ; preds = %43
  %54 = load %struct.page_counter*, %struct.page_counter** %7, align 8
  %55 = call i32 @page_counter_read(%struct.page_counter* %54)
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = mul nsw i32 %55, %56
  store i32 %57, i32* %3, align 4
  br label %82

58:                                               ; preds = %28
  %59 = load %struct.page_counter*, %struct.page_counter** %7, align 8
  %60 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = mul nsw i32 %61, %62
  store i32 %63, i32* %3, align 4
  br label %82

64:                                               ; preds = %28
  %65 = load %struct.page_counter*, %struct.page_counter** %7, align 8
  %66 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PAGE_SIZE, align 4
  %69 = mul nsw i32 %67, %68
  store i32 %69, i32* %3, align 4
  br label %82

70:                                               ; preds = %28
  %71 = load %struct.page_counter*, %struct.page_counter** %7, align 8
  %72 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %3, align 4
  br label %82

74:                                               ; preds = %28
  %75 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %76 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = mul nsw i32 %77, %78
  store i32 %79, i32* %3, align 4
  br label %82

80:                                               ; preds = %28
  %81 = call i32 (...) @BUG()
  br label %82

82:                                               ; preds = %38, %48, %53, %58, %64, %70, %74, %80
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.mem_cgroup* @mem_cgroup_from_css(%struct.cgroup_subsys_state*) #1

declare dso_local i32 @MEMFILE_TYPE(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @MEMFILE_ATTR(i32) #1

declare dso_local i32 @mem_cgroup_usage(%struct.mem_cgroup*, i32) #1

declare dso_local i32 @page_counter_read(%struct.page_counter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
