; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_map_access.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_map_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.TYPE_3__, %struct.bpf_verifier_state* }
%struct.TYPE_3__ = type { i32 }
%struct.bpf_verifier_state = type { i64, %struct.bpf_func_state** }
%struct.bpf_func_state = type { %struct.bpf_reg_state* }
%struct.bpf_reg_state = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@BPF_LOG_LEVEL = common dso_local global i32 0, align 4
@S64_MIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [84 x i8] c"R%d min value is negative, either use unsigned index or do a if (index >=0) check.\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"R%d min value is outside of the array range\0A\00", align 1
@BPF_MAX_VAR_OFF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [84 x i8] c"R%d unbounded memory access, make sure to bounds check any array access into a map\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"R%d max value is outside of the array range\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"bpf_spin_lock cannot be accessed directly by load/store\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, i64, i32, i32, i32)* @check_map_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_map_access(%struct.bpf_verifier_env* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_verifier_env*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bpf_verifier_state*, align 8
  %13 = alloca %struct.bpf_func_state*, align 8
  %14 = alloca %struct.bpf_reg_state*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %18 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %17, i32 0, i32 1
  %19 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %18, align 8
  store %struct.bpf_verifier_state* %19, %struct.bpf_verifier_state** %12, align 8
  %20 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %12, align 8
  %21 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %20, i32 0, i32 1
  %22 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %21, align 8
  %23 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %12, align 8
  %24 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %22, i64 %25
  %27 = load %struct.bpf_func_state*, %struct.bpf_func_state** %26, align 8
  store %struct.bpf_func_state* %27, %struct.bpf_func_state** %13, align 8
  %28 = load %struct.bpf_func_state*, %struct.bpf_func_state** %13, align 8
  %29 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %28, i32 0, i32 0
  %30 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %30, i64 %31
  store %struct.bpf_reg_state* %32, %struct.bpf_reg_state** %14, align 8
  %33 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %34 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @BPF_LOG_LEVEL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %5
  %41 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %42 = load %struct.bpf_func_state*, %struct.bpf_func_state** %13, align 8
  %43 = call i32 @print_verifier_state(%struct.bpf_verifier_env* %41, %struct.bpf_func_state* %42)
  br label %44

44:                                               ; preds = %40, %5
  %45 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %14, align 8
  %46 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %83

49:                                               ; preds = %44
  %50 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %14, align 8
  %51 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @S64_MIN, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %77, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %14, align 8
  %59 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %14, align 8
  %65 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = icmp ne i64 %61, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %55
  %70 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %14, align 8
  %71 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %69, %55, %49
  %78 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %78, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i64 %79)
  %81 = load i32, i32* @EACCES, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %173

83:                                               ; preds = %69, %44
  %84 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %14, align 8
  %87 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @__check_map_access(%struct.bpf_verifier_env* %84, i64 %85, i64 %91, i32 %92, i32 %93)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %83
  %98 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %99 = load i64, i64* %8, align 8
  %100 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %98, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %99)
  %101 = load i32, i32* %15, align 4
  store i32 %101, i32* %6, align 4
  br label %173

102:                                              ; preds = %83
  %103 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %14, align 8
  %104 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @BPF_MAX_VAR_OFF, align 8
  %107 = icmp sge i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %110 = load i64, i64* %8, align 8
  %111 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %109, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i64 %110)
  %112 = load i32, i32* @EACCES, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %6, align 4
  br label %173

114:                                              ; preds = %102
  %115 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %14, align 8
  %118 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %119, %121
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @__check_map_access(%struct.bpf_verifier_env* %115, i64 %116, i64 %122, i32 %123, i32 %124)
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %114
  %129 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %130 = load i64, i64* %8, align 8
  %131 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %129, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %130)
  br label %132

132:                                              ; preds = %128, %114
  %133 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %14, align 8
  %134 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %133, i32 0, i32 2
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = call i64 @map_value_has_spin_lock(%struct.TYPE_4__* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %171

138:                                              ; preds = %132
  %139 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %14, align 8
  %140 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %139, i32 0, i32 2
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %16, align 8
  %144 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %14, align 8
  %145 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %146, %148
  %150 = load i64, i64* %16, align 8
  %151 = add i64 %150, 4
  %152 = icmp ult i64 %149, %151
  br i1 %152, label %153, label %170

153:                                              ; preds = %138
  %154 = load i64, i64* %16, align 8
  %155 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %14, align 8
  %156 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %157, %159
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %160, %162
  %164 = icmp ult i64 %154, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %153
  %166 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %167 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %166, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %168 = load i32, i32* @EACCES, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %6, align 4
  br label %173

170:                                              ; preds = %153, %138
  br label %171

171:                                              ; preds = %170, %132
  %172 = load i32, i32* %15, align 4
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %171, %165, %108, %97, %77
  %174 = load i32, i32* %6, align 4
  ret i32 %174
}

declare dso_local i32 @print_verifier_state(%struct.bpf_verifier_env*, %struct.bpf_func_state*) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, ...) #1

declare dso_local i32 @__check_map_access(%struct.bpf_verifier_env*, i64, i64, i32, i32) #1

declare dso_local i64 @map_value_has_spin_lock(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
