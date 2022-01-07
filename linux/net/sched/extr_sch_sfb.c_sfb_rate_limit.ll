; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_sfb.c_sfb_rate_limit.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_sfb.c_sfb_rate_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sfb_sched_data = type { i64, i64, i32, i64 }

@HZ = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sfb_sched_data*)* @sfb_rate_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfb_rate_limit(%struct.sk_buff* %0, %struct.sfb_sched_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sfb_sched_data*, align 8
  %6 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.sfb_sched_data* %1, %struct.sfb_sched_data** %5, align 8
  %7 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %5, align 8
  %8 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %5, align 8
  %13 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %2
  store i32 1, i32* %3, align 4
  br label %71

17:                                               ; preds = %11
  %18 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %5, align 8
  %19 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %66

22:                                               ; preds = %17
  %23 = load i64, i64* @HZ, align 8
  %24 = mul i64 10, %23
  %25 = load i64, i64* @jiffies, align 8
  %26 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %5, align 8
  %27 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = call i64 @min(i64 %24, i64 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %5, align 8
  %33 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = mul i64 %31, %34
  %36 = load i64, i64* @HZ, align 8
  %37 = udiv i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %5, align 8
  %40 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %5, align 8
  %42 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %5, align 8
  %46 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ugt i64 %44, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %22
  %50 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %5, align 8
  %51 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %5, align 8
  %55 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %49, %22
  %57 = load i64, i64* @jiffies, align 8
  %58 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %5, align 8
  %59 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %58, i32 0, i32 3
  store i64 %57, i64* %59, align 8
  %60 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %5, align 8
  %61 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %71

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %17
  %67 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %5, align 8
  %68 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 8
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %66, %64, %16
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
