; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_packet_time_ns.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_packet_time_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netem_sched_data = type { i32, i32, i32, i32, i64 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.netem_sched_data*)* @packet_time_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_time_ns(i32 %0, %struct.netem_sched_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netem_sched_data*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.netem_sched_data* %1, %struct.netem_sched_data** %4, align 8
  %6 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %7 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %10, %8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %3, align 4
  %13 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %14 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %20 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @reciprocal_divide(i32 %18, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %26 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = mul nsw i32 %24, %27
  %29 = icmp sgt i32 %23, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %17
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %36 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %39 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %37, %40
  %42 = mul nsw i32 %34, %41
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %33, %2
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @NSEC_PER_SEC, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %48 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @div64_u64(i32 %46, i32 %49)
  ret i32 %50
}

declare dso_local i32 @reciprocal_divide(i32, i32) #1

declare dso_local i32 @div64_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
