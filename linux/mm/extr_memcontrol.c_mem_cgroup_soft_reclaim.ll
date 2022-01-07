; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_soft_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_soft_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }
%struct.mem_cgroup_reclaim_cookie = type { i32, i32* }

@MEM_CGROUP_MAX_RECLAIM_LOOPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_cgroup*, i32*, i32, i64*)* @mem_cgroup_soft_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_cgroup_soft_reclaim(%struct.mem_cgroup* %0, i32* %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.mem_cgroup*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.mem_cgroup*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.mem_cgroup_reclaim_cookie, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = getelementptr inbounds %struct.mem_cgroup_reclaim_cookie, %struct.mem_cgroup_reclaim_cookie* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.mem_cgroup_reclaim_cookie, %struct.mem_cgroup_reclaim_cookie* %14, i32 0, i32 1
  %17 = load i32*, i32** %6, align 8
  store i32* %17, i32** %16, align 8
  %18 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %19 = call i64 @soft_limit_excess(%struct.mem_cgroup* %18)
  store i64 %19, i64* %12, align 8
  br label %20

20:                                               ; preds = %4, %47, %65
  %21 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %22 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %23 = call %struct.mem_cgroup* @mem_cgroup_iter(%struct.mem_cgroup* %21, %struct.mem_cgroup* %22, %struct.mem_cgroup_reclaim_cookie* %14)
  store %struct.mem_cgroup* %23, %struct.mem_cgroup** %9, align 8
  %24 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %25 = icmp ne %struct.mem_cgroup* %24, null
  br i1 %25, label %48, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp sge i32 %29, 2
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  br label %66

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %12, align 8
  %39 = lshr i64 %38, 2
  %40 = icmp uge i64 %37, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @MEM_CGROUP_MAX_RECLAIM_LOOPS, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %35
  br label %66

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %26
  br label %20

48:                                               ; preds = %20
  %49 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = call i64 @mem_cgroup_shrink_node(%struct.mem_cgroup* %49, i32 %50, i32 0, i32* %51, i64* %13)
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %10, align 4
  %57 = load i64, i64* %13, align 8
  %58 = load i64*, i64** %8, align 8
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, %57
  store i64 %60, i64* %58, align 8
  %61 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %62 = call i64 @soft_limit_excess(%struct.mem_cgroup* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %48
  br label %66

65:                                               ; preds = %48
  br label %20

66:                                               ; preds = %64, %45, %34
  %67 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %68 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %69 = call i32 @mem_cgroup_iter_break(%struct.mem_cgroup* %67, %struct.mem_cgroup* %68)
  %70 = load i32, i32* %10, align 4
  ret i32 %70
}

declare dso_local i64 @soft_limit_excess(%struct.mem_cgroup*) #1

declare dso_local %struct.mem_cgroup* @mem_cgroup_iter(%struct.mem_cgroup*, %struct.mem_cgroup*, %struct.mem_cgroup_reclaim_cookie*) #1

declare dso_local i64 @mem_cgroup_shrink_node(%struct.mem_cgroup*, i32, i32, i32*, i64*) #1

declare dso_local i32 @mem_cgroup_iter_break(%struct.mem_cgroup*, %struct.mem_cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
