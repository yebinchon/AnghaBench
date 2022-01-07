; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_cache_add.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_cache_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32 }
%struct.machine = type { i32 }
%struct.intel_pt_insn = type { i32, i32, i32, i32, i32 }
%struct.auxtrace_cache = type { i32 }
%struct.intel_pt_cache_entry = type { i32, i32, i32, i32, i32, i32, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@INTEL_PT_INSN_BUF_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dso*, %struct.machine*, i8*, i8*, i8*, %struct.intel_pt_insn*)* @intel_pt_cache_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_cache_add(%struct.dso* %0, %struct.machine* %1, i8* %2, i8* %3, i8* %4, %struct.intel_pt_insn* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dso*, align 8
  %9 = alloca %struct.machine*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.intel_pt_insn*, align 8
  %14 = alloca %struct.auxtrace_cache*, align 8
  %15 = alloca %struct.intel_pt_cache_entry*, align 8
  %16 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %8, align 8
  store %struct.machine* %1, %struct.machine** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.intel_pt_insn* %5, %struct.intel_pt_insn** %13, align 8
  %17 = load %struct.dso*, %struct.dso** %8, align 8
  %18 = load %struct.machine*, %struct.machine** %9, align 8
  %19 = call %struct.auxtrace_cache* @intel_pt_cache(%struct.dso* %17, %struct.machine* %18)
  store %struct.auxtrace_cache* %19, %struct.auxtrace_cache** %14, align 8
  %20 = load %struct.auxtrace_cache*, %struct.auxtrace_cache** %14, align 8
  %21 = icmp ne %struct.auxtrace_cache* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %81

25:                                               ; preds = %6
  %26 = load %struct.auxtrace_cache*, %struct.auxtrace_cache** %14, align 8
  %27 = call %struct.intel_pt_cache_entry* @auxtrace_cache__alloc_entry(%struct.auxtrace_cache* %26)
  store %struct.intel_pt_cache_entry* %27, %struct.intel_pt_cache_entry** %15, align 8
  %28 = load %struct.intel_pt_cache_entry*, %struct.intel_pt_cache_entry** %15, align 8
  %29 = icmp ne %struct.intel_pt_cache_entry* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %81

33:                                               ; preds = %25
  %34 = load i8*, i8** %11, align 8
  %35 = load %struct.intel_pt_cache_entry*, %struct.intel_pt_cache_entry** %15, align 8
  %36 = getelementptr inbounds %struct.intel_pt_cache_entry, %struct.intel_pt_cache_entry* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load %struct.intel_pt_cache_entry*, %struct.intel_pt_cache_entry** %15, align 8
  %39 = getelementptr inbounds %struct.intel_pt_cache_entry, %struct.intel_pt_cache_entry* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  %40 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %13, align 8
  %41 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.intel_pt_cache_entry*, %struct.intel_pt_cache_entry** %15, align 8
  %44 = getelementptr inbounds %struct.intel_pt_cache_entry, %struct.intel_pt_cache_entry* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %13, align 8
  %46 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.intel_pt_cache_entry*, %struct.intel_pt_cache_entry** %15, align 8
  %49 = getelementptr inbounds %struct.intel_pt_cache_entry, %struct.intel_pt_cache_entry* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %13, align 8
  %51 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.intel_pt_cache_entry*, %struct.intel_pt_cache_entry** %15, align 8
  %54 = getelementptr inbounds %struct.intel_pt_cache_entry, %struct.intel_pt_cache_entry* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %13, align 8
  %56 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.intel_pt_cache_entry*, %struct.intel_pt_cache_entry** %15, align 8
  %59 = getelementptr inbounds %struct.intel_pt_cache_entry, %struct.intel_pt_cache_entry* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.intel_pt_cache_entry*, %struct.intel_pt_cache_entry** %15, align 8
  %61 = getelementptr inbounds %struct.intel_pt_cache_entry, %struct.intel_pt_cache_entry* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %13, align 8
  %64 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @INTEL_PT_INSN_BUF_SZ, align 4
  %67 = call i32 @memcpy(i32 %62, i32 %65, i32 %66)
  %68 = load %struct.auxtrace_cache*, %struct.auxtrace_cache** %14, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load %struct.intel_pt_cache_entry*, %struct.intel_pt_cache_entry** %15, align 8
  %71 = getelementptr inbounds %struct.intel_pt_cache_entry, %struct.intel_pt_cache_entry* %70, i32 0, i32 0
  %72 = call i32 @auxtrace_cache__add(%struct.auxtrace_cache* %68, i8* %69, i32* %71)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %33
  %76 = load %struct.auxtrace_cache*, %struct.auxtrace_cache** %14, align 8
  %77 = load %struct.intel_pt_cache_entry*, %struct.intel_pt_cache_entry** %15, align 8
  %78 = call i32 @auxtrace_cache__free_entry(%struct.auxtrace_cache* %76, %struct.intel_pt_cache_entry* %77)
  br label %79

79:                                               ; preds = %75, %33
  %80 = load i32, i32* %16, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %79, %30, %22
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local %struct.auxtrace_cache* @intel_pt_cache(%struct.dso*, %struct.machine*) #1

declare dso_local %struct.intel_pt_cache_entry* @auxtrace_cache__alloc_entry(%struct.auxtrace_cache*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @auxtrace_cache__add(%struct.auxtrace_cache*, i8*, i32*) #1

declare dso_local i32 @auxtrace_cache__free_entry(%struct.auxtrace_cache*, %struct.intel_pt_cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
