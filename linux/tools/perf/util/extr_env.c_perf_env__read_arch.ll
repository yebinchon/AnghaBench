; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_env.c_perf_env__read_arch.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_env.c_perf_env__read_arch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_env = type { i32 }
%struct.utsname = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_env*)* @perf_env__read_arch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_env__read_arch(%struct.perf_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_env*, align 8
  %4 = alloca %struct.utsname, align 4
  store %struct.perf_env* %0, %struct.perf_env** %3, align 8
  %5 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %6 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

10:                                               ; preds = %1
  %11 = call i32 @uname(%struct.utsname* %4)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.utsname, %struct.utsname* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @strdup(i32 %15)
  %17 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %18 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %13, %10
  %20 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %21 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  br label %28

28:                                               ; preds = %25, %24
  %29 = phi i32 [ 0, %24 ], [ %27, %25 ]
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %9
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @uname(%struct.utsname*) #1

declare dso_local i32 @strdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
