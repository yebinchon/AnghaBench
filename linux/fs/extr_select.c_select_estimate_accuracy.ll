; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_select.c_select_estimate_accuracy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_select.c_select_estimate_accuracy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.timespec64 = type { i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @select_estimate_accuracy(%struct.timespec64* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.timespec64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.timespec64, align 4
  %6 = alloca %struct.timespec64, align 4
  store %struct.timespec64* %0, %struct.timespec64** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %8 = call i64 @rt_task(%struct.TYPE_3__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %34

11:                                               ; preds = %1
  %12 = call i32 @ktime_get_ts64(%struct.timespec64* %5)
  %13 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %14 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @timespec64_sub(i32 %15, i32 %17)
  %19 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %6, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = bitcast %struct.timespec64* %5 to i8*
  %21 = bitcast %struct.timespec64* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = call i64 @__estimate_accuracy(%struct.timespec64* %5)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %11
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %2, align 8
  br label %34

32:                                               ; preds = %11
  %33 = load i64, i64* %4, align 8
  store i64 %33, i64* %2, align 8
  br label %34

34:                                               ; preds = %32, %28, %10
  %35 = load i64, i64* %2, align 8
  ret i64 %35
}

declare dso_local i64 @rt_task(%struct.TYPE_3__*) #1

declare dso_local i32 @ktime_get_ts64(%struct.timespec64*) #1

declare dso_local i32 @timespec64_sub(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @__estimate_accuracy(%struct.timespec64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
