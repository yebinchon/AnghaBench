; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_bbp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_bbp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i64, i64, i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64* }
%struct.TYPE_4__ = type { i64, i32 }

@INTEL_PT_NO_CTX = common dso_local global i64 0, align 8
@INTEL_PT_GP_REGS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"WARNING: Unknown block type %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"WARNING: Duplicate block type %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_pt_decoder*)* @intel_pt_bbp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pt_bbp(%struct.intel_pt_decoder* %0) #0 {
  %2 = alloca %struct.intel_pt_decoder*, align 8
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %2, align 8
  %3 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %4 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @INTEL_PT_NO_CTX, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %10 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = call i32 @memset(i64* %13, i32 0, i32 8)
  %15 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %16 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  br label %19

19:                                               ; preds = %8, %1
  %20 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %21 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %25 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %27 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @intel_pt_blk_type_pos(i64 %28)
  %30 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %31 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %33 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @INTEL_PT_GP_REGS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %19
  %38 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %39 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %43 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 8
  br label %46

46:                                               ; preds = %37, %19
  %47 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %48 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %53 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @intel_pt_log(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %54)
  br label %74

56:                                               ; preds = %46
  %57 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %58 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %63 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i64, i64* %61, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %56
  %69 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %70 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @intel_pt_log(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %71)
  br label %73

73:                                               ; preds = %68, %56
  br label %74

74:                                               ; preds = %73, %51
  ret void
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @intel_pt_blk_type_pos(i64) #1

declare dso_local i32 @intel_pt_log(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
