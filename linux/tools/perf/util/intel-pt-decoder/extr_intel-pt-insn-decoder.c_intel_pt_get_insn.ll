; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-insn-decoder.c_intel_pt_get_insn.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-insn-decoder.c_intel_pt_get_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_insn = type { i32 }
%struct.insn = type { i64 }

@INTEL_PT_INSN_BUF_SZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_pt_get_insn(i8* %0, i64 %1, i32 %2, %struct.intel_pt_insn* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.intel_pt_insn*, align 8
  %10 = alloca %struct.insn, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.intel_pt_insn* %3, %struct.intel_pt_insn** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @insn_init(%struct.insn* %10, i8* %11, i64 %12, i32 %13)
  %15 = call i32 @insn_get_length(%struct.insn* %10)
  %16 = call i32 @insn_complete(%struct.insn* %10)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.insn, %struct.insn* %10, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %4
  store i32 -1, i32* %5, align 4
  br label %47

24:                                               ; preds = %18
  %25 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %9, align 8
  %26 = call i32 @intel_pt_insn_decoder(%struct.insn* %10, %struct.intel_pt_insn* %25)
  %27 = getelementptr inbounds %struct.insn, %struct.insn* %10, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @INTEL_PT_INSN_BUF_SZ, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %9, align 8
  %33 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds %struct.insn, %struct.insn* %10, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @memcpy(i32 %34, i8* %35, i64 %37)
  br label %46

39:                                               ; preds = %24
  %40 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %9, align 8
  %41 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* @INTEL_PT_INSN_BUF_SZ, align 8
  %45 = call i32 @memcpy(i32 %42, i8* %43, i64 %44)
  br label %46

46:                                               ; preds = %39, %31
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %23
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @insn_init(%struct.insn*, i8*, i64, i32) #1

declare dso_local i32 @insn_get_length(%struct.insn*) #1

declare dso_local i32 @insn_complete(%struct.insn*) #1

declare dso_local i32 @intel_pt_insn_decoder(%struct.insn*, %struct.intel_pt_insn*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
