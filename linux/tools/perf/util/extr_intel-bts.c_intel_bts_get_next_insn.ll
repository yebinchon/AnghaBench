; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-bts.c_intel_bts_get_next_insn.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-bts.c_intel_bts_get_next_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_bts_queue = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.machine* }
%struct.machine = type { i32 }
%struct.thread = type { i32 }

@INTEL_PT_INSN_BUF_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_bts_queue*, i32)* @intel_bts_get_next_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_bts_get_next_insn(%struct.intel_bts_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_bts_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.machine*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.intel_bts_queue* %0, %struct.intel_bts_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %15 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.machine*, %struct.machine** %17, align 8
  store %struct.machine* %18, %struct.machine** %6, align 8
  %19 = load i32, i32* @INTEL_PT_INSN_BUF_SZ, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  store i32 -1, i32* %12, align 4
  %23 = load %struct.machine*, %struct.machine** %6, align 8
  %24 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %25 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.thread* @machine__find_thread(%struct.machine* %23, i32 -1, i32 %26)
  store %struct.thread* %27, %struct.thread** %7, align 8
  %28 = load %struct.thread*, %struct.thread** %7, align 8
  %29 = icmp ne %struct.thread* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %53

31:                                               ; preds = %2
  %32 = load %struct.thread*, %struct.thread** %7, align 8
  %33 = load %struct.machine*, %struct.machine** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @INTEL_PT_INSN_BUF_SZ, align 4
  %36 = call i64 @thread__memcpy(%struct.thread* %32, %struct.machine* %33, i8* %22, i32 %34, i32 %35, i32* %11)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp sle i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %49

40:                                               ; preds = %31
  %41 = load i64, i64* %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %44 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %43, i32 0, i32 0
  %45 = call i64 @intel_pt_get_insn(i8* %22, i64 %41, i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %49

48:                                               ; preds = %40
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %48, %47, %39
  %50 = load %struct.thread*, %struct.thread** %7, align 8
  %51 = call i32 @thread__put(%struct.thread* %50)
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %53

53:                                               ; preds = %49, %30
  %54 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.thread* @machine__find_thread(%struct.machine*, i32, i32) #2

declare dso_local i64 @thread__memcpy(%struct.thread*, %struct.machine*, i8*, i32, i32, i32*) #2

declare dso_local i64 @intel_pt_get_insn(i8*, i64, i32, i32*) #2

declare dso_local i32 @thread__put(%struct.thread*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
