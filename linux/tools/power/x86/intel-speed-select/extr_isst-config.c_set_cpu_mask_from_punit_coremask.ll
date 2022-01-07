; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_set_cpu_mask_from_punit_coremask.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_set_cpu_mask_from_punit_coremask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@topo_max_cpus = common dso_local global i32 0, align 4
@present_cpumask_size = common dso_local global i32 0, align 4
@present_cpumask = common dso_local global i32 0, align 4
@cpu_map = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_cpu_mask_from_punit_coremask(i32 %0, i64 %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32*, i32** %10, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @get_physical_die_id(i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @get_physical_package_id(i32 %19)
  store i32 %20, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %82, %5
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 64
  br i1 %23, label %24, label %85

24:                                               ; preds = %21
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i64 @BIT(i32 %26)
  %28 = and i64 %25, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %81

30:                                               ; preds = %24
  store i32 0, i32* %15, align 4
  br label %31

31:                                               ; preds = %77, %30
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* @topo_max_cpus, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %80

35:                                               ; preds = %31
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* @present_cpumask_size, align 4
  %38 = load i32, i32* @present_cpumask, align 4
  %39 = call i32 @CPU_ISSET_S(i32 %36, i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %77

42:                                               ; preds = %35
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_map, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %76

51:                                               ; preds = %42
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_map, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %51
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_map, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load i32, i32* %15, align 4
  %71 = load i64, i64* %8, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @CPU_SET_S(i32 %70, i64 %71, i32* %72)
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %69, %60, %51, %42
  br label %77

77:                                               ; preds = %76, %41
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  br label %31

80:                                               ; preds = %31
  br label %81

81:                                               ; preds = %80, %24
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %21

85:                                               ; preds = %21
  %86 = load i32, i32* %12, align 4
  %87 = load i32*, i32** %10, align 8
  store i32 %86, i32* %87, align 4
  ret void
}

declare dso_local i32 @get_physical_die_id(i32) #1

declare dso_local i32 @get_physical_package_id(i32) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @CPU_ISSET_S(i32, i32, i32) #1

declare dso_local i32 @CPU_SET_S(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
