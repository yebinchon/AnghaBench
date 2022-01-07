; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/tests/extr_insn-x86.c_test_data_item.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/tests/extr_insn-x86.c_test_data_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_data = type { i32, i32, i32, i32, i32, i32 }
%struct.intel_pt_insn = type { i32, i64, i64 }
%struct.insn = type { i32 }

@MAX_INSN_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to decode: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to decode length (%d vs expected %d): %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Intel PT failed to decode: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Failed to decode 'op' value (%d vs expected %d): %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Failed to decode 'branch' value (%d vs expected %d): %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"Failed to decode 'rel' value (%#x vs expected %#x): %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Decoded ok: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_data*, i32)* @test_data_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_data_item(%struct.test_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.test_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_pt_insn, align 8
  %7 = alloca %struct.insn, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.test_data* %0, %struct.test_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.test_data*, %struct.test_data** %4, align 8
  %11 = getelementptr inbounds %struct.test_data, %struct.test_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MAX_INSN_SIZE, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @insn_init(%struct.insn* %7, i32 %12, i32 %13, i32 %14)
  %16 = call i32 @insn_get_length(%struct.insn* %7)
  %17 = call i32 @insn_complete(%struct.insn* %7)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.test_data*, %struct.test_data** %4, align 8
  %21 = getelementptr inbounds %struct.test_data, %struct.test_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 -1, i32* %3, align 4
  br label %114

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.insn, %struct.insn* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.test_data*, %struct.test_data** %4, align 8
  %28 = getelementptr inbounds %struct.test_data, %struct.test_data* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %26, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.insn, %struct.insn* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.test_data*, %struct.test_data** %4, align 8
  %35 = getelementptr inbounds %struct.test_data, %struct.test_data* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.test_data*, %struct.test_data** %4, align 8
  %38 = getelementptr inbounds %struct.test_data, %struct.test_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %36, i32 %39)
  store i32 -1, i32* %3, align 4
  br label %114

41:                                               ; preds = %24
  %42 = load %struct.test_data*, %struct.test_data** %4, align 8
  %43 = getelementptr inbounds %struct.test_data, %struct.test_data* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @get_op(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.test_data*, %struct.test_data** %4, align 8
  %47 = getelementptr inbounds %struct.test_data, %struct.test_data* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @get_branch(i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load %struct.test_data*, %struct.test_data** %4, align 8
  %51 = getelementptr inbounds %struct.test_data, %struct.test_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MAX_INSN_SIZE, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @intel_pt_get_insn(i32 %52, i32 %53, i32 %54, %struct.intel_pt_insn* %6)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %41
  %58 = load %struct.test_data*, %struct.test_data** %4, align 8
  %59 = getelementptr inbounds %struct.test_data, %struct.test_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  store i32 -1, i32* %3, align 4
  br label %114

62:                                               ; preds = %41
  %63 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %6, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %6, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.test_data*, %struct.test_data** %4, align 8
  %74 = getelementptr inbounds %struct.test_data, %struct.test_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %72, i32 %75)
  store i32 -1, i32* %3, align 4
  br label %114

77:                                               ; preds = %62
  %78 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %6, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %6, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.test_data*, %struct.test_data** %4, align 8
  %89 = getelementptr inbounds %struct.test_data, %struct.test_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %86, i32 %87, i32 %90)
  store i32 -1, i32* %3, align 4
  br label %114

92:                                               ; preds = %77
  %93 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %6, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.test_data*, %struct.test_data** %4, align 8
  %96 = getelementptr inbounds %struct.test_data, %struct.test_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %94, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %6, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.test_data*, %struct.test_data** %4, align 8
  %103 = getelementptr inbounds %struct.test_data, %struct.test_data* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.test_data*, %struct.test_data** %4, align 8
  %106 = getelementptr inbounds %struct.test_data, %struct.test_data* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i32 %101, i32 %104, i32 %107)
  store i32 -1, i32* %3, align 4
  br label %114

109:                                              ; preds = %92
  %110 = load %struct.test_data*, %struct.test_data** %4, align 8
  %111 = getelementptr inbounds %struct.test_data, %struct.test_data* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %112)
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %109, %99, %83, %68, %57, %31, %19
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @insn_init(%struct.insn*, i32, i32, i32) #1

declare dso_local i32 @insn_get_length(%struct.insn*) #1

declare dso_local i32 @insn_complete(%struct.insn*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @get_op(i32) #1

declare dso_local i32 @get_branch(i32) #1

declare dso_local i64 @intel_pt_get_insn(i32, i32, i32, %struct.intel_pt_insn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
