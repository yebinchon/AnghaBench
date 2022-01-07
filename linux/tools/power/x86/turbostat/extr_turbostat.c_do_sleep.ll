; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_do_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_do_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.timeval = type { i32, i32 }

@ignore_stdin = common dso_local global i32 0, align 4
@interval_ts = common dso_local global %struct.timespec zeroinitializer, align 4
@interval_tv = common dso_local global %struct.timeval zeroinitializer, align 4
@stdin = common dso_local global i32 0, align 4
@exit_requested = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_sleep() #0 {
  %1 = alloca %struct.timeval, align 4
  %2 = alloca %struct.timespec, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @FD_ZERO(i32* %3)
  %6 = call i32 @FD_SET(i32 0, i32* %3)
  %7 = load i32, i32* @ignore_stdin, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @nanosleep(%struct.timespec* @interval_ts, i32* null)
  br label %35

11:                                               ; preds = %0
  %12 = bitcast %struct.timeval* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.timeval* @interval_tv to i8*), i64 8, i1 false)
  %13 = call i32 @select(i32 1, i32* %3, i32* null, i32* null, %struct.timeval* %1)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  %17 = load i32, i32* @stdin, align 4
  %18 = call i32 @getc(i32 %17)
  switch i32 %18, label %34 [
    i32 113, label %19
    i32 128, label %20
  ]

19:                                               ; preds = %16
  store i32 1, i32* @exit_requested, align 4
  br label %34

20:                                               ; preds = %16
  store i32 1, i32* @ignore_stdin, align 4
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 1000000
  %26 = add nsw i32 %22, %25
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = srem i32 %29, 1000000
  %31 = mul nsw i32 %30, 1000
  %32 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = call i32 @nanosleep(%struct.timespec* %2, i32* null)
  br label %34

34:                                               ; preds = %20, %16, %19
  br label %35

35:                                               ; preds = %9, %34, %11
  ret void
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @nanosleep(%struct.timespec*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @getc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
