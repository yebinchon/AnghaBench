; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_walk_fup.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_walk_fup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i32, i8*, i32, i32 }
%struct.intel_pt_insn = type { i64 }

@INTEL_PT_RETURN = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@INTEL_PT_BR_INDIRECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"ERROR: Unexpected indirect branch\00", align 1
@INTEL_PT_STATE_ERR_RESYNC = common dso_local global i8* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@INTEL_PT_BR_CONDITIONAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"ERROR: Unexpected conditional branch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_decoder*)* @intel_pt_walk_fup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_walk_fup(%struct.intel_pt_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_pt_decoder*, align 8
  %4 = alloca %struct.intel_pt_insn, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %3, align 8
  %7 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %8 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %1, %74
  %11 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @intel_pt_walk_insn(%struct.intel_pt_decoder* %11, %struct.intel_pt_insn* %4, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @INTEL_PT_RETURN, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %77

18:                                               ; preds = %10
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @EAGAIN, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @intel_pt_fup_with_nlip(%struct.intel_pt_decoder* %24, %struct.intel_pt_insn* %4, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %23, %18
  %30 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %31 = call i64 @intel_pt_fup_event(%struct.intel_pt_decoder* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %77

34:                                               ; preds = %29
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %77

37:                                               ; preds = %23
  %38 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %39 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %77

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %4, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @INTEL_PT_BR_INDIRECT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %51 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @intel_pt_log_at(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i8*, i8** @INTEL_PT_STATE_ERR_RESYNC, align 8
  %55 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %56 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %77

59:                                               ; preds = %44
  %60 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %4, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @INTEL_PT_BR_CONDITIONAL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %66 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @intel_pt_log_at(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i8*, i8** @INTEL_PT_STATE_ERR_RESYNC, align 8
  %70 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %71 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @ENOENT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %77

74:                                               ; preds = %59
  %75 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %76 = call i32 @intel_pt_bug(%struct.intel_pt_decoder* %75)
  br label %10

77:                                               ; preds = %64, %49, %42, %34, %33, %17
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @intel_pt_walk_insn(%struct.intel_pt_decoder*, %struct.intel_pt_insn*, i32) #1

declare dso_local i64 @intel_pt_fup_with_nlip(%struct.intel_pt_decoder*, %struct.intel_pt_insn*, i32, i32) #1

declare dso_local i64 @intel_pt_fup_event(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_log_at(i8*, i32) #1

declare dso_local i32 @intel_pt_bug(%struct.intel_pt_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
