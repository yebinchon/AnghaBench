; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_flex_proportions.c_fprop_reflect_period_percpu.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_flex_proportions.c_fprop_reflect_period_percpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fprop_global = type { i32 }
%struct.fprop_local_percpu = type { i32, i32, i32 }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@PROP_BATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fprop_global*, %struct.fprop_local_percpu*)* @fprop_reflect_period_percpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fprop_reflect_period_percpu(%struct.fprop_global* %0, %struct.fprop_local_percpu* %1) #0 {
  %3 = alloca %struct.fprop_global*, align 8
  %4 = alloca %struct.fprop_local_percpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.fprop_global* %0, %struct.fprop_global** %3, align 8
  store %struct.fprop_local_percpu* %1, %struct.fprop_local_percpu** %4, align 8
  %8 = load %struct.fprop_global*, %struct.fprop_global** %3, align 8
  %9 = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.fprop_local_percpu*, %struct.fprop_local_percpu** %4, align 8
  %12 = getelementptr inbounds %struct.fprop_local_percpu, %struct.fprop_local_percpu* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %80

17:                                               ; preds = %2
  %18 = load %struct.fprop_local_percpu*, %struct.fprop_local_percpu** %4, align 8
  %19 = getelementptr inbounds %struct.fprop_local_percpu, %struct.fprop_local_percpu* %18, i32 0, i32 1
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @raw_spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.fprop_local_percpu*, %struct.fprop_local_percpu** %4, align 8
  %23 = getelementptr inbounds %struct.fprop_local_percpu, %struct.fprop_local_percpu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp uge i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load %struct.fprop_local_percpu*, %struct.fprop_local_percpu** %4, align 8
  %29 = getelementptr inbounds %struct.fprop_local_percpu, %struct.fprop_local_percpu* %28, i32 0, i32 1
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @raw_spin_unlock_irqrestore(i32* %29, i64 %30)
  br label %80

32:                                               ; preds = %17
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.fprop_local_percpu*, %struct.fprop_local_percpu** %4, align 8
  %35 = getelementptr inbounds %struct.fprop_local_percpu, %struct.fprop_local_percpu* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub i32 %33, %36
  %38 = load i32, i32* @BITS_PER_LONG, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %32
  %41 = load %struct.fprop_local_percpu*, %struct.fprop_local_percpu** %4, align 8
  %42 = getelementptr inbounds %struct.fprop_local_percpu, %struct.fprop_local_percpu* %41, i32 0, i32 2
  %43 = call i32 @percpu_counter_read(i32* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @nr_cpu_ids, align 4
  %46 = load i32, i32* @PROP_BATCH, align 4
  %47 = mul i32 %45, %46
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load %struct.fprop_local_percpu*, %struct.fprop_local_percpu** %4, align 8
  %51 = getelementptr inbounds %struct.fprop_local_percpu, %struct.fprop_local_percpu* %50, i32 0, i32 2
  %52 = call i32 @percpu_counter_sum(i32* %51)
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %49, %40
  %54 = load %struct.fprop_local_percpu*, %struct.fprop_local_percpu** %4, align 8
  %55 = getelementptr inbounds %struct.fprop_local_percpu, %struct.fprop_local_percpu* %54, i32 0, i32 2
  %56 = load i32, i32* %7, align 4
  %57 = sub i32 0, %56
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.fprop_local_percpu*, %struct.fprop_local_percpu** %4, align 8
  %61 = getelementptr inbounds %struct.fprop_local_percpu, %struct.fprop_local_percpu* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub i32 %59, %62
  %64 = lshr i32 %58, %63
  %65 = add i32 %57, %64
  %66 = load i32, i32* @PROP_BATCH, align 4
  %67 = call i32 @percpu_counter_add_batch(i32* %55, i32 %65, i32 %66)
  br label %72

68:                                               ; preds = %32
  %69 = load %struct.fprop_local_percpu*, %struct.fprop_local_percpu** %4, align 8
  %70 = getelementptr inbounds %struct.fprop_local_percpu, %struct.fprop_local_percpu* %69, i32 0, i32 2
  %71 = call i32 @percpu_counter_set(i32* %70, i32 0)
  br label %72

72:                                               ; preds = %68, %53
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.fprop_local_percpu*, %struct.fprop_local_percpu** %4, align 8
  %75 = getelementptr inbounds %struct.fprop_local_percpu, %struct.fprop_local_percpu* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.fprop_local_percpu*, %struct.fprop_local_percpu** %4, align 8
  %77 = getelementptr inbounds %struct.fprop_local_percpu, %struct.fprop_local_percpu* %76, i32 0, i32 1
  %78 = load i64, i64* %6, align 8
  %79 = call i32 @raw_spin_unlock_irqrestore(i32* %77, i64 %78)
  br label %80

80:                                               ; preds = %72, %27, %16
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @percpu_counter_read(i32*) #1

declare dso_local i32 @percpu_counter_sum(i32*) #1

declare dso_local i32 @percpu_counter_add_batch(i32*, i32, i32) #1

declare dso_local i32 @percpu_counter_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
