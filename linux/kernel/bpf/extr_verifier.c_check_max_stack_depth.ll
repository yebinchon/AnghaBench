; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_max_stack_depth.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_max_stack_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.TYPE_2__*, %struct.bpf_subprog_info* }
%struct.TYPE_2__ = type { %struct.bpf_insn* }
%struct.bpf_insn = type { i32, i64, i32 }
%struct.bpf_subprog_info = type { i32, i32 }

@MAX_CALL_FRAMES = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@MAX_BPF_STACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"combined stack size of %d calls is %d. Too large\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@BPF_JMP = common dso_local global i32 0, align 4
@BPF_CALL = common dso_local global i32 0, align 4
@BPF_PSEUDO_CALL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"verifier bug. No program starts at insn %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"the call stack of %d frames is too deep !\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*)* @check_max_stack_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_max_stack_depth(%struct.bpf_verifier_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_verifier_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bpf_subprog_info*, align 8
  %10 = alloca %struct.bpf_insn*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %16 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %15, i32 0, i32 1
  %17 = load %struct.bpf_subprog_info*, %struct.bpf_subprog_info** %16, align 8
  store %struct.bpf_subprog_info* %17, %struct.bpf_subprog_info** %9, align 8
  %18 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %19 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.bpf_insn*, %struct.bpf_insn** %21, align 8
  store %struct.bpf_insn* %22, %struct.bpf_insn** %10, align 8
  %23 = load i32, i32* @MAX_CALL_FRAMES, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %11, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %27 = load i32, i32* @MAX_CALL_FRAMES, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %13, align 8
  br label %30

30:                                               ; preds = %131, %1
  %31 = load i32, i32* @u32, align 4
  %32 = load %struct.bpf_subprog_info*, %struct.bpf_subprog_info** %9, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.bpf_subprog_info, %struct.bpf_subprog_info* %32, i64 %34
  %36 = getelementptr inbounds %struct.bpf_subprog_info, %struct.bpf_subprog_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @max_t(i32 %31, i32 %37, i32 1)
  %39 = call i64 @round_up(i32 %38, i32 32)
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @MAX_BPF_STACK, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %30
  %48 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (%struct.bpf_verifier_env*, i8*, i32, ...) @verbose(%struct.bpf_verifier_env* %48, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* @EACCES, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %163

55:                                               ; preds = %30
  br label %56

56:                                               ; preds = %139, %55
  %57 = load %struct.bpf_subprog_info*, %struct.bpf_subprog_info** %9, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.bpf_subprog_info, %struct.bpf_subprog_info* %57, i64 %60
  %62 = getelementptr inbounds %struct.bpf_subprog_info, %struct.bpf_subprog_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %132, %56
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %135

68:                                               ; preds = %64
  %69 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %69, i64 %71
  %73 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @BPF_JMP, align 4
  %76 = load i32, i32* @BPF_CALL, align 4
  %77 = or i32 %75, %76
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %132

80:                                               ; preds = %68
  %81 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %81, i64 %83
  %85 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @BPF_PSEUDO_CALL, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %132

90:                                               ; preds = %80
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %26, i64 %94
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %29, i64 %98
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %101, i64 %103
  %105 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %100, %106
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  %109 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @find_subprog(%struct.bpf_verifier_env* %109, i32 %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %90
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @EFAULT, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %163

119:                                              ; preds = %90
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @MAX_CALL_FRAMES, align 4
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %127 = load i32, i32* %5, align 4
  %128 = call i32 (%struct.bpf_verifier_env*, i8*, i32, ...) @verbose(%struct.bpf_verifier_env* %126, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @E2BIG, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %163

131:                                              ; preds = %119
  br label %30

132:                                              ; preds = %89, %79
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %64

135:                                              ; preds = %64
  %136 = load i32, i32* %5, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %163

139:                                              ; preds = %135
  %140 = load i32, i32* @u32, align 4
  %141 = load %struct.bpf_subprog_info*, %struct.bpf_subprog_info** %9, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.bpf_subprog_info, %struct.bpf_subprog_info* %141, i64 %143
  %145 = getelementptr inbounds %struct.bpf_subprog_info, %struct.bpf_subprog_info* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @max_t(i32 %140, i32 %146, i32 1)
  %148 = call i64 @round_up(i32 %147, i32 32)
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = sub nsw i64 %150, %148
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %4, align 4
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %26, i64 %156
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %29, i64 %160
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %6, align 4
  br label %56

163:                                              ; preds = %138, %125, %114, %47
  %164 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %164)
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @round_up(i32, i32) #2

declare dso_local i32 @max_t(i32, i32, i32) #2

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, i32, ...) #2

declare dso_local i32 @find_subprog(%struct.bpf_verifier_env*, i32) #2

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
