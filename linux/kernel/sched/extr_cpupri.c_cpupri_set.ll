; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_cpupri.c_cpupri_set.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_cpupri.c_cpupri_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpupri = type { i32*, %struct.cpupri_vec* }
%struct.cpupri_vec = type { i32, i32 }

@CPUPRI_NR_PRIORITIES = common dso_local global i32 0, align 4
@CPUPRI_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpupri_set(%struct.cpupri* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cpupri*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cpupri_vec*, align 8
  %11 = alloca %struct.cpupri_vec*, align 8
  store %struct.cpupri* %0, %struct.cpupri** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.cpupri*, %struct.cpupri** %4, align 8
  %13 = getelementptr inbounds %struct.cpupri, %struct.cpupri* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @convert_prio(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @CPUPRI_NR_PRIORITIES, align 4
  %24 = icmp sge i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %85

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @CPUPRI_INVALID, align 4
  %34 = icmp ne i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @likely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %31
  %39 = load %struct.cpupri*, %struct.cpupri** %4, align 8
  %40 = getelementptr inbounds %struct.cpupri, %struct.cpupri* %39, i32 0, i32 1
  %41 = load %struct.cpupri_vec*, %struct.cpupri_vec** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.cpupri_vec, %struct.cpupri_vec* %41, i64 %43
  store %struct.cpupri_vec* %44, %struct.cpupri_vec** %10, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.cpupri_vec*, %struct.cpupri_vec** %10, align 8
  %47 = getelementptr inbounds %struct.cpupri_vec, %struct.cpupri_vec* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cpumask_set_cpu(i32 %45, i32 %48)
  %50 = call i32 (...) @smp_mb__before_atomic()
  %51 = load %struct.cpupri_vec*, %struct.cpupri_vec** %10, align 8
  %52 = getelementptr inbounds %struct.cpupri_vec, %struct.cpupri_vec* %51, i32 0, i32 1
  %53 = call i32 @atomic_inc(i32* %52)
  store i32 1, i32* %9, align 4
  br label %54

54:                                               ; preds = %38, %31
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @CPUPRI_INVALID, align 4
  %57 = icmp ne i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i64 @likely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %54
  %62 = load %struct.cpupri*, %struct.cpupri** %4, align 8
  %63 = getelementptr inbounds %struct.cpupri, %struct.cpupri* %62, i32 0, i32 1
  %64 = load %struct.cpupri_vec*, %struct.cpupri_vec** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.cpupri_vec, %struct.cpupri_vec* %64, i64 %66
  store %struct.cpupri_vec* %67, %struct.cpupri_vec** %11, align 8
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = call i32 (...) @smp_mb__after_atomic()
  br label %72

72:                                               ; preds = %70, %61
  %73 = load %struct.cpupri_vec*, %struct.cpupri_vec** %11, align 8
  %74 = getelementptr inbounds %struct.cpupri_vec, %struct.cpupri_vec* %73, i32 0, i32 1
  %75 = call i32 @atomic_dec(i32* %74)
  %76 = call i32 (...) @smp_mb__after_atomic()
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.cpupri_vec*, %struct.cpupri_vec** %11, align 8
  %79 = getelementptr inbounds %struct.cpupri_vec, %struct.cpupri_vec* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @cpumask_clear_cpu(i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %72, %54
  %83 = load i32, i32* %6, align 4
  %84 = load i32*, i32** %7, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %30
  ret void
}

declare dso_local i32 @convert_prio(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
