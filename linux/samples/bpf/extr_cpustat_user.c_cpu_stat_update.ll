; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_cpustat_user.c_cpu_stat_update.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_cpustat_user.c_cpu_stat_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i64* }

@MAX_CPU = common dso_local global i32 0, align 4
@MAX_CSTATE_ENTRIES = common dso_local global i32 0, align 4
@stat_data = common dso_local global %struct.TYPE_2__* null, align 8
@MAX_PSTATE_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @cpu_stat_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_stat_update(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %68, %2
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @MAX_CPU, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %71

13:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %37, %13
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @MAX_CSTATE_ENTRIES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @MAX_CSTATE_ENTRIES, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %5, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @bpf_map_lookup_elem(i32 %25, i64* %5, i64* %6)
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stat_data, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64 %27, i64* %36, align 8
  br label %37

37:                                               ; preds = %18
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %14

40:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %64, %40
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @MAX_PSTATE_ENTRIES, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @MAX_PSTATE_ENTRIES, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %5, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @bpf_map_lookup_elem(i32 %52, i64* %5, i64* %6)
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stat_data, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  store i64 %54, i64* %63, align 8
  br label %64

64:                                               ; preds = %45
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %41

67:                                               ; preds = %41
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %9

71:                                               ; preds = %9
  ret void
}

declare dso_local i32 @bpf_map_lookup_elem(i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
