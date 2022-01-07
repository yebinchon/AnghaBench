; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_adjust_insn_aux_data.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_adjust_insn_aux_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.bpf_insn_aux_data* }
%struct.bpf_insn_aux_data = type { i32, i8* }
%struct.bpf_prog = type { i64, %struct.bpf_insn* }
%struct.bpf_insn = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_prog*, i64, i64)* @adjust_insn_aux_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjust_insn_aux_data(%struct.bpf_verifier_env* %0, %struct.bpf_prog* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_verifier_env*, align 8
  %7 = alloca %struct.bpf_prog*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bpf_insn_aux_data*, align 8
  %11 = alloca %struct.bpf_insn_aux_data*, align 8
  %12 = alloca %struct.bpf_insn*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %6, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %16 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %15, i32 0, i32 0
  %17 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %16, align 8
  store %struct.bpf_insn_aux_data* %17, %struct.bpf_insn_aux_data** %11, align 8
  %18 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %19 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %18, i32 0, i32 1
  %20 = load %struct.bpf_insn*, %struct.bpf_insn** %19, align 8
  store %struct.bpf_insn* %20, %struct.bpf_insn** %12, align 8
  %21 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %22 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %22, i64 %23
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %24, i64 %25
  %27 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %26, i64 -1
  %28 = call i8* @insn_has_def32(%struct.bpf_verifier_env* %21, %struct.bpf_insn* %27)
  %29 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %11, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %29, i64 %30
  %32 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %31, i32 0, i32 1
  store i8* %28, i8** %32, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp eq i64 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %109

36:                                               ; preds = %4
  %37 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %38 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %13, align 8
  %41 = call i32 @array_size(i64 %40, i32 16)
  %42 = call %struct.bpf_insn_aux_data* @vzalloc(i32 %41)
  store %struct.bpf_insn_aux_data* %42, %struct.bpf_insn_aux_data** %10, align 8
  %43 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %10, align 8
  %44 = icmp ne %struct.bpf_insn_aux_data* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %109

48:                                               ; preds = %36
  %49 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %10, align 8
  %50 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %11, align 8
  %51 = load i64, i64* %8, align 8
  %52 = mul i64 16, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memcpy(%struct.bpf_insn_aux_data* %49, %struct.bpf_insn_aux_data* %50, i32 %53)
  %55 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %10, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %55, i64 %56
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %57, i64 %58
  %60 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %59, i64 -1
  %61 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %11, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %61, i64 %62
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %8, align 8
  %66 = sub i64 %64, %65
  %67 = load i64, i64* %9, align 8
  %68 = sub i64 %66, %67
  %69 = add i64 %68, 1
  %70 = mul i64 16, %69
  %71 = trunc i64 %70 to i32
  %72 = call i32 @memcpy(%struct.bpf_insn_aux_data* %60, %struct.bpf_insn_aux_data* %63, i32 %71)
  %73 = load i64, i64* %8, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %100, %48
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %9, align 8
  %80 = add i64 %78, %79
  %81 = sub i64 %80, 1
  %82 = icmp ult i64 %77, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %75
  %84 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %10, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %84, i64 %86
  %88 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %90 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %90, i64 %92
  %94 = call i8* @insn_has_def32(%struct.bpf_verifier_env* %89, %struct.bpf_insn* %93)
  %95 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %10, align 8
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %95, i64 %97
  %99 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %98, i32 0, i32 1
  store i8* %94, i8** %99, align 8
  br label %100

100:                                              ; preds = %83
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  br label %75

103:                                              ; preds = %75
  %104 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %10, align 8
  %105 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %106 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %105, i32 0, i32 0
  store %struct.bpf_insn_aux_data* %104, %struct.bpf_insn_aux_data** %106, align 8
  %107 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %11, align 8
  %108 = call i32 @vfree(%struct.bpf_insn_aux_data* %107)
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %103, %45, %35
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i8* @insn_has_def32(%struct.bpf_verifier_env*, %struct.bpf_insn*) #1

declare dso_local %struct.bpf_insn_aux_data* @vzalloc(i32) #1

declare dso_local i32 @array_size(i64, i32) #1

declare dso_local i32 @memcpy(%struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data*, i32) #1

declare dso_local i32 @vfree(%struct.bpf_insn_aux_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
