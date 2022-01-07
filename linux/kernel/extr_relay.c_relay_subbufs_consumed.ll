; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_subbufs_consumed.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_subbufs_consumed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rchan = type { i64, i32 }
%struct.rchan_buf = type { i64, i64 }

@NR_CPUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @relay_subbufs_consumed(%struct.rchan* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.rchan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.rchan_buf*, align 8
  store %struct.rchan* %0, %struct.rchan** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.rchan*, %struct.rchan** %4, align 8
  %9 = icmp ne %struct.rchan* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @NR_CPUS, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %3
  br label %53

15:                                               ; preds = %10
  %16 = load %struct.rchan*, %struct.rchan** %4, align 8
  %17 = getelementptr inbounds %struct.rchan, %struct.rchan* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.rchan_buf** @per_cpu_ptr(i32 %18, i32 %19)
  %21 = load %struct.rchan_buf*, %struct.rchan_buf** %20, align 8
  store %struct.rchan_buf* %21, %struct.rchan_buf** %7, align 8
  %22 = load %struct.rchan_buf*, %struct.rchan_buf** %7, align 8
  %23 = icmp ne %struct.rchan_buf* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.rchan*, %struct.rchan** %4, align 8
  %27 = getelementptr inbounds %struct.rchan, %struct.rchan* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ugt i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %15
  br label %53

31:                                               ; preds = %24
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.rchan_buf*, %struct.rchan_buf** %7, align 8
  %34 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.rchan_buf*, %struct.rchan_buf** %7, align 8
  %37 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %35, %38
  %40 = icmp ugt i64 %32, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load %struct.rchan_buf*, %struct.rchan_buf** %7, align 8
  %43 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.rchan_buf*, %struct.rchan_buf** %7, align 8
  %46 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  br label %53

47:                                               ; preds = %31
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.rchan_buf*, %struct.rchan_buf** %7, align 8
  %50 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, %48
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %14, %30, %47, %41
  ret void
}

declare dso_local %struct.rchan_buf** @per_cpu_ptr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
