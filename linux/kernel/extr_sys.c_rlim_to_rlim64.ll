; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_sys.c_rlim_to_rlim64.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_sys.c_rlim_to_rlim64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i64, i64 }
%struct.rlimit64 = type { i64, i64 }

@RLIM_INFINITY = common dso_local global i64 0, align 8
@RLIM64_INFINITY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rlimit*, %struct.rlimit64*)* @rlim_to_rlim64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rlim_to_rlim64(%struct.rlimit* %0, %struct.rlimit64* %1) #0 {
  %3 = alloca %struct.rlimit*, align 8
  %4 = alloca %struct.rlimit64*, align 8
  store %struct.rlimit* %0, %struct.rlimit** %3, align 8
  store %struct.rlimit64* %1, %struct.rlimit64** %4, align 8
  %5 = load %struct.rlimit*, %struct.rlimit** %3, align 8
  %6 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @RLIM_INFINITY, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i8*, i8** @RLIM64_INFINITY, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = load %struct.rlimit64*, %struct.rlimit64** %4, align 8
  %14 = getelementptr inbounds %struct.rlimit64, %struct.rlimit64* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.rlimit*, %struct.rlimit** %3, align 8
  %17 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.rlimit64*, %struct.rlimit64** %4, align 8
  %20 = getelementptr inbounds %struct.rlimit64, %struct.rlimit64* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %15, %10
  %22 = load %struct.rlimit*, %struct.rlimit** %3, align 8
  %23 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RLIM_INFINITY, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i8*, i8** @RLIM64_INFINITY, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.rlimit64*, %struct.rlimit64** %4, align 8
  %31 = getelementptr inbounds %struct.rlimit64, %struct.rlimit64* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  br label %38

32:                                               ; preds = %21
  %33 = load %struct.rlimit*, %struct.rlimit** %3, align 8
  %34 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.rlimit64*, %struct.rlimit64** %4, align 8
  %37 = getelementptr inbounds %struct.rlimit64, %struct.rlimit64* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %32, %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
