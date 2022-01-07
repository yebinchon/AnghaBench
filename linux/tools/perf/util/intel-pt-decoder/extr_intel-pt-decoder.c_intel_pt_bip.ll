; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_bip.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_bip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32** }

@INTEL_PT_BLK_ITEM_ID_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"WARNING: Unknown block item %u type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"WARNING: Duplicate block item %u type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_pt_decoder*)* @intel_pt_bip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pt_bip(%struct.intel_pt_decoder* %0) #0 {
  %2 = alloca %struct.intel_pt_decoder*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %2, align 8
  %6 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %7 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = shl i32 1, %10
  store i32 %11, i32* %4, align 4
  %12 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %13 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @INTEL_PT_BLK_ITEM_ID_CNT, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17, %1
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %24 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @intel_pt_log(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  br label %74

27:                                               ; preds = %17
  %28 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %29 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %27
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %43 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @intel_pt_log(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %40, %27
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %49 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %47
  store i32 %57, i32* %55, align 4
  %58 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %59 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %63 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %61, i32* %73, align 4
  br label %74

74:                                               ; preds = %46, %21
  ret void
}

declare dso_local i32 @intel_pt_log(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
