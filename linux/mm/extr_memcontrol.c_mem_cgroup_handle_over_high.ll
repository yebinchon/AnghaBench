; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_handle_over_high.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_handle_over_high.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.mem_cgroup = type { i32, i32, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@MEMCG_DELAY_PRECISION_SHIFT = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@MEMCG_DELAY_SCALING_SHIFT = common dso_local global i64 0, align 8
@MEMCG_CHARGE_BATCH = common dso_local global i64 0, align 8
@MEMCG_MAX_HIGH_DELAY_JIFFIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mem_cgroup_handle_over_high() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mem_cgroup*, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %0
  br label %83

19:                                               ; preds = %0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.mem_cgroup* @get_mem_cgroup_from_mm(i32 %22)
  store %struct.mem_cgroup* %23, %struct.mem_cgroup** %8, align 8
  %24 = load %struct.mem_cgroup*, %struct.mem_cgroup** %8, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32 @reclaim_high(%struct.mem_cgroup* %24, i32 %25, i32 %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.mem_cgroup*, %struct.mem_cgroup** %8, align 8
  %31 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %30, i32 0, i32 2
  %32 = call i64 @page_counter_read(i32* %31)
  store i64 %32, i64* %1, align 8
  %33 = load %struct.mem_cgroup*, %struct.mem_cgroup** %8, align 8
  %34 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @READ_ONCE(i32 %35)
  store i64 %36, i64* %2, align 8
  %37 = load i64, i64* %1, align 8
  %38 = load i64, i64* %2, align 8
  %39 = icmp ule i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %19
  br label %79

41:                                               ; preds = %19
  %42 = load i64, i64* %2, align 8
  %43 = call i64 @max(i64 %42, i64 1)
  store i64 %43, i64* %3, align 8
  %44 = load i64, i64* %1, align 8
  %45 = load i64, i64* %2, align 8
  %46 = sub i64 %44, %45
  %47 = load i64, i64* @MEMCG_DELAY_PRECISION_SHIFT, align 8
  %48 = shl i64 %46, %47
  %49 = load i64, i64* %3, align 8
  %50 = call i64 @div_u64(i64 %48, i64 %49)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = mul i64 %51, %52
  %54 = load i64, i64* @HZ, align 8
  %55 = mul i64 %53, %54
  %56 = load i64, i64* @MEMCG_DELAY_PRECISION_SHIFT, align 8
  %57 = load i64, i64* @MEMCG_DELAY_SCALING_SHIFT, align 8
  %58 = add i64 %56, %57
  %59 = lshr i64 %55, %58
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = mul i64 %60, %62
  %64 = load i64, i64* @MEMCG_CHARGE_BATCH, align 8
  %65 = udiv i64 %63, %64
  store i64 %65, i64* %5, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load i32, i32* @MEMCG_MAX_HIGH_DELAY_JIFFIES, align 4
  %68 = call i64 @min(i64 %66, i32 %67)
  store i64 %68, i64* %5, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* @HZ, align 8
  %71 = udiv i64 %70, 100
  %72 = icmp ule i64 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %41
  br label %79

74:                                               ; preds = %41
  %75 = call i32 @psi_memstall_enter(i64* %4)
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @schedule_timeout_killable(i64 %76)
  %78 = call i32 @psi_memstall_leave(i64* %4)
  br label %79

79:                                               ; preds = %74, %73, %40
  %80 = load %struct.mem_cgroup*, %struct.mem_cgroup** %8, align 8
  %81 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %80, i32 0, i32 0
  %82 = call i32 @css_put(i32* %81)
  br label %83

83:                                               ; preds = %79, %18
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.mem_cgroup* @get_mem_cgroup_from_mm(i32) #1

declare dso_local i32 @reclaim_high(%struct.mem_cgroup*, i32, i32) #1

declare dso_local i64 @page_counter_read(i32*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @div_u64(i64, i64) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @psi_memstall_enter(i64*) #1

declare dso_local i32 @schedule_timeout_killable(i64) #1

declare dso_local i32 @psi_memstall_leave(i64*) #1

declare dso_local i32 @css_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
