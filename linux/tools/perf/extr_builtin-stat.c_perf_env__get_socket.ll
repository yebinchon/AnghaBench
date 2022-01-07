; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_perf_env__get_socket.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_perf_env__get_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_cpu_map = type { i32 }
%struct.perf_env = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_cpu_map*, i32, i8*)* @perf_env__get_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_env__get_socket(%struct.perf_cpu_map* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.perf_cpu_map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.perf_env*, align 8
  %8 = alloca i32, align 4
  store %struct.perf_cpu_map* %0, %struct.perf_cpu_map** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.perf_env*
  store %struct.perf_env* %10, %struct.perf_env** %7, align 8
  %11 = load %struct.perf_env*, %struct.perf_env** %7, align 8
  %12 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @perf_env__get_cpu(%struct.perf_env* %11, %struct.perf_cpu_map* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %27

18:                                               ; preds = %3
  %19 = load %struct.perf_env*, %struct.perf_env** %7, align 8
  %20 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  br label %27

27:                                               ; preds = %18, %17
  %28 = phi i32 [ -1, %17 ], [ %26, %18 ]
  ret i32 %28
}

declare dso_local i32 @perf_env__get_cpu(%struct.perf_env*, %struct.perf_cpu_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
