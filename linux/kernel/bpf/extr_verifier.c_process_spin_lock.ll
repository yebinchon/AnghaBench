; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_process_spin_lock.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_process_spin_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.bpf_verifier_state* }
%struct.bpf_verifier_state = type { i64 }
%struct.bpf_reg_state = type { i64, i64, i32, %struct.TYPE_2__, %struct.bpf_map* }
%struct.TYPE_2__ = type { i32 }
%struct.bpf_map = type { i32, i32, i32 }

@PTR_TO_MAP_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"R%d is not a pointer to map_value\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [82 x i8] c"R%d doesn't have constant offset. bpf_spin_lock has to be at the constant offset\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"map '%s' has to have BTF in order to use bpf_spin_lock\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"map '%s' has more than one 'struct bpf_spin_lock'\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"map '%s' doesn't have 'struct bpf_spin_lock'\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"map '%s' is not a struct type or bpf_spin_lock is mangled\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"off %lld doesn't point to 'struct bpf_spin_lock'\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Locking two bpf_spin_locks are not allowed\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"bpf_spin_unlock without taking a lock\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"bpf_spin_unlock of different lock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, i32, i32)* @process_spin_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_spin_lock(%struct.bpf_verifier_env* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_verifier_env*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bpf_reg_state*, align 8
  %9 = alloca %struct.bpf_reg_state*, align 8
  %10 = alloca %struct.bpf_verifier_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bpf_map*, align 8
  %13 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %15 = call %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env* %14)
  store %struct.bpf_reg_state* %15, %struct.bpf_reg_state** %8, align 8
  %16 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %16, i64 %18
  store %struct.bpf_reg_state* %19, %struct.bpf_reg_state** %9, align 8
  %20 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %21 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %20, i32 0, i32 0
  %22 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %21, align 8
  store %struct.bpf_verifier_state* %22, %struct.bpf_verifier_state** %10, align 8
  %23 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %24 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @tnum_is_const(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %29 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %28, i32 0, i32 4
  %30 = load %struct.bpf_map*, %struct.bpf_map** %29, align 8
  store %struct.bpf_map* %30, %struct.bpf_map** %12, align 8
  %31 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %32 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %13, align 4
  %35 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %36 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PTR_TO_MAP_VALUE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %3
  %41 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %174

46:                                               ; preds = %3
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %50, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %174

55:                                               ; preds = %46
  %56 = load %struct.bpf_map*, %struct.bpf_map** %12, align 8
  %57 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %55
  %61 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %62 = load %struct.bpf_map*, %struct.bpf_map** %12, align 8
  %63 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %61, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %174

68:                                               ; preds = %55
  %69 = load %struct.bpf_map*, %struct.bpf_map** %12, align 8
  %70 = call i32 @map_value_has_spin_lock(%struct.bpf_map* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %108, label %72

72:                                               ; preds = %68
  %73 = load %struct.bpf_map*, %struct.bpf_map** %12, align 8
  %74 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @E2BIG, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %81 = load %struct.bpf_map*, %struct.bpf_map** %12, align 8
  %82 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %80, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  br label %105

85:                                               ; preds = %72
  %86 = load %struct.bpf_map*, %struct.bpf_map** %12, align 8
  %87 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ENOENT, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %94 = load %struct.bpf_map*, %struct.bpf_map** %12, align 8
  %95 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %93, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  br label %104

98:                                               ; preds = %85
  %99 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %100 = load %struct.bpf_map*, %struct.bpf_map** %12, align 8
  %101 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %99, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %98, %92
  br label %105

105:                                              ; preds = %104, %79
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %174

108:                                              ; preds = %68
  %109 = load %struct.bpf_map*, %struct.bpf_map** %12, align 8
  %110 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %114 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %112, %115
  %117 = icmp ne i32 %111, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %108
  %119 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %122 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %120, %123
  %125 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %119, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %4, align 4
  br label %174

128:                                              ; preds = %108
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %128
  %132 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %10, align 8
  %133 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %138 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %137, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %4, align 4
  br label %174

141:                                              ; preds = %131
  %142 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %143 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %10, align 8
  %146 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  br label %173

147:                                              ; preds = %128
  %148 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %10, align 8
  %149 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %147
  %153 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %154 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %153, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %4, align 4
  br label %174

157:                                              ; preds = %147
  %158 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %10, align 8
  %159 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %162 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %160, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %157
  %166 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %167 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %166, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %4, align 4
  br label %174

170:                                              ; preds = %157
  %171 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %10, align 8
  %172 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %171, i32 0, i32 0
  store i64 0, i64* %172, align 8
  br label %173

173:                                              ; preds = %170, %141
  store i32 0, i32* %4, align 4
  br label %174

174:                                              ; preds = %173, %165, %152, %136, %118, %105, %60, %49, %40
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env*) #1

declare dso_local i32 @tnum_is_const(i32) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, ...) #1

declare dso_local i32 @map_value_has_spin_lock(%struct.bpf_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
