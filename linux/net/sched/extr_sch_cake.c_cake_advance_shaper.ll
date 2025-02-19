; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_advance_shaper.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_advance_shaper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cake_sched_data = type { i32, i32, i8*, i8* }
%struct.cake_tin_data = type { i32, i32, i8* }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cake_sched_data*, %struct.cake_tin_data*, %struct.sk_buff*, i8*, i32)* @cake_advance_shaper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cake_advance_shaper(%struct.cake_sched_data* %0, %struct.cake_tin_data* %1, %struct.sk_buff* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.cake_sched_data*, align 8
  %7 = alloca %struct.cake_tin_data*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cake_sched_data* %0, %struct.cake_sched_data** %6, align 8
  store %struct.cake_tin_data* %1, %struct.cake_tin_data** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = call %struct.TYPE_2__* @get_cobalt_cb(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %20 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %95

23:                                               ; preds = %5
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %26 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = mul nsw i32 %24, %27
  %29 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %30 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %28, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %35 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %33, %36
  %38 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %39 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %37, %40
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = ashr i32 %43, 1
  %45 = add nsw i32 %42, %44
  store i32 %45, i32* %14, align 4
  %46 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %47 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i64 @ktime_before(i8* %48, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %23
  %53 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %54 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i8* @ktime_add_ns(i8* %55, i32 %56)
  %58 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %59 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  br label %76

60:                                               ; preds = %23
  %61 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %62 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i8* @ktime_add_ns(i8* %64, i32 %65)
  %67 = call i64 @ktime_before(i8* %63, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i8* @ktime_add_ns(i8* %70, i32 %71)
  %73 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %74 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %69, %60
  br label %76

76:                                               ; preds = %75, %52
  %77 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %78 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i8* @ktime_add_ns(i8* %79, i32 %80)
  %82 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %83 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %76
  %87 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %88 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %87, i32 0, i32 3
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = call i8* @ktime_add_ns(i8* %89, i32 %90)
  %92 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %93 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %86, %76
  br label %95

95:                                               ; preds = %94, %5
  %96 = load i32, i32* %11, align 4
  ret i32 %96
}

declare dso_local %struct.TYPE_2__* @get_cobalt_cb(%struct.sk_buff*) #1

declare dso_local i64 @ktime_before(i8*, i8*) #1

declare dso_local i8* @ktime_add_ns(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
