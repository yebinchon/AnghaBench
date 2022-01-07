; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_select.c_poll_select_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_select.c_poll_select_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec64 = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @poll_select_set_timeout(%struct.timespec64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.timespec64, align 8
  %9 = alloca %struct.timespec64, align 8
  store %struct.timespec64* %0, %struct.timespec64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %8, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  store i64 %11, i64* %10, align 8
  %12 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %8, i32 0, i32 1
  %13 = load i64, i64* %7, align 8
  store i64 %13, i64* %12, align 8
  %14 = call i32 @timespec64_valid(%struct.timespec64* %8)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %54

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load %struct.timespec64*, %struct.timespec64** %5, align 8
  %27 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.timespec64*, %struct.timespec64** %5, align 8
  %29 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  br label %53

30:                                               ; preds = %22, %19
  %31 = load %struct.timespec64*, %struct.timespec64** %5, align 8
  %32 = call i32 @ktime_get_ts64(%struct.timespec64* %31)
  %33 = load %struct.timespec64*, %struct.timespec64** %5, align 8
  %34 = load %struct.timespec64*, %struct.timespec64** %5, align 8
  %35 = bitcast %struct.timespec64* %34 to { i64, i64 }*
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %35, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = bitcast %struct.timespec64* %8 to { i64, i64 }*
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call { i64, i64 } @timespec64_add_safe(i64 %37, i64 %39, i64 %42, i64 %44)
  %46 = bitcast %struct.timespec64* %9 to { i64, i64 }*
  %47 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %46, i32 0, i32 0
  %48 = extractvalue { i64, i64 } %45, 0
  store i64 %48, i64* %47, align 8
  %49 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %46, i32 0, i32 1
  %50 = extractvalue { i64, i64 } %45, 1
  store i64 %50, i64* %49, align 8
  %51 = bitcast %struct.timespec64* %33 to i8*
  %52 = bitcast %struct.timespec64* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 16, i1 false)
  br label %53

53:                                               ; preds = %30, %25
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %16
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @timespec64_valid(%struct.timespec64*) #1

declare dso_local i32 @ktime_get_ts64(%struct.timespec64*) #1

declare dso_local { i64, i64 } @timespec64_add_safe(i64, i64, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
