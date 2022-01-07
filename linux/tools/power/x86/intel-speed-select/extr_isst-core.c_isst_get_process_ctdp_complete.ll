; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_get_process_ctdp_complete.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_get_process_ctdp_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isst_pkg_ctdp = type { i32, %struct.isst_pkg_ctdp_level_info*, i32 }
%struct.isst_pkg_ctdp_level_info = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isst_get_process_ctdp_complete(i32 %0, %struct.isst_pkg_ctdp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isst_pkg_ctdp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.isst_pkg_ctdp_level_info*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.isst_pkg_ctdp* %1, %struct.isst_pkg_ctdp** %4, align 8
  %7 = load %struct.isst_pkg_ctdp*, %struct.isst_pkg_ctdp** %4, align 8
  %8 = getelementptr inbounds %struct.isst_pkg_ctdp, %struct.isst_pkg_ctdp* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %44

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %41, %12
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.isst_pkg_ctdp*, %struct.isst_pkg_ctdp** %4, align 8
  %16 = getelementptr inbounds %struct.isst_pkg_ctdp, %struct.isst_pkg_ctdp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %13
  %20 = load %struct.isst_pkg_ctdp*, %struct.isst_pkg_ctdp** %4, align 8
  %21 = getelementptr inbounds %struct.isst_pkg_ctdp, %struct.isst_pkg_ctdp* %20, i32 0, i32 1
  %22 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %22, i64 %24
  store %struct.isst_pkg_ctdp_level_info* %25, %struct.isst_pkg_ctdp_level_info** %6, align 8
  %26 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %6, align 8
  %27 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %19
  %31 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %6, align 8
  %32 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @free_cpu_set(i32 %34)
  br label %36

36:                                               ; preds = %30, %19
  %37 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %6, align 8
  %38 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @free_cpu_set(i32 %39)
  br label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %13

44:                                               ; preds = %11, %13
  ret void
}

declare dso_local i32 @free_cpu_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
