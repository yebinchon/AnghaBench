; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_sys.c_rlim64_to_rlim.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_sys.c_rlim64_to_rlim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit64 = type { i64, i64 }
%struct.rlimit = type { i64, i64 }

@RLIM_INFINITY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rlimit64*, %struct.rlimit*)* @rlim64_to_rlim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rlim64_to_rlim(%struct.rlimit64* %0, %struct.rlimit* %1) #0 {
  %3 = alloca %struct.rlimit64*, align 8
  %4 = alloca %struct.rlimit*, align 8
  store %struct.rlimit64* %0, %struct.rlimit64** %3, align 8
  store %struct.rlimit* %1, %struct.rlimit** %4, align 8
  %5 = load %struct.rlimit64*, %struct.rlimit64** %3, align 8
  %6 = getelementptr inbounds %struct.rlimit64, %struct.rlimit64* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = call i64 @rlim64_is_infinity(i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i8*, i8** @RLIM_INFINITY, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = load %struct.rlimit*, %struct.rlimit** %4, align 8
  %14 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.rlimit64*, %struct.rlimit64** %3, align 8
  %17 = getelementptr inbounds %struct.rlimit64, %struct.rlimit64* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.rlimit*, %struct.rlimit** %4, align 8
  %20 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %15, %10
  %22 = load %struct.rlimit64*, %struct.rlimit64** %3, align 8
  %23 = getelementptr inbounds %struct.rlimit64, %struct.rlimit64* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @rlim64_is_infinity(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i8*, i8** @RLIM_INFINITY, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.rlimit*, %struct.rlimit** %4, align 8
  %31 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  br label %38

32:                                               ; preds = %21
  %33 = load %struct.rlimit64*, %struct.rlimit64** %3, align 8
  %34 = getelementptr inbounds %struct.rlimit64, %struct.rlimit64* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.rlimit*, %struct.rlimit** %4, align 8
  %37 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %32, %27
  ret void
}

declare dso_local i64 @rlim64_is_infinity(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
