; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_mark_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_mark_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_reg_state = type { i32, i64, %struct.bpf_reg_state*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@REG_LIVE_WRITTEN = common dso_local global i32 0, align 4
@REG_LIVE_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"verifier BUG type %s var_off %lld off %d\0A\00", align 1
@reg_type_str = common dso_local global i32* null, align 8
@EFAULT = common dso_local global i32 0, align 4
@REG_LIVE_READ = common dso_local global i32 0, align 4
@REG_LIVE_READ64 = common dso_local global i32 0, align 4
@REG_LIVE_READ32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_reg_state*, %struct.bpf_reg_state*, i32)* @mark_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_reg_read(%struct.bpf_verifier_env* %0, %struct.bpf_reg_state* %1, %struct.bpf_reg_state* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_verifier_env*, align 8
  %7 = alloca %struct.bpf_reg_state*, align 8
  %8 = alloca %struct.bpf_reg_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %6, align 8
  store %struct.bpf_reg_state* %1, %struct.bpf_reg_state** %7, align 8
  store %struct.bpf_reg_state* %2, %struct.bpf_reg_state** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %13 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %14 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %13, i32 0, i32 2
  %15 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %14, align 8
  %16 = icmp eq %struct.bpf_reg_state* %12, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %89, %4
  %19 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %20 = icmp ne %struct.bpf_reg_state* %19, null
  br i1 %20, label %21, label %96

21:                                               ; preds = %18
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %26 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @REG_LIVE_WRITTEN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %96

32:                                               ; preds = %24, %21
  %33 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %34 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @REG_LIVE_DONE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %32
  %40 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %41 = load i32*, i32** @reg_type_str, align 8
  %42 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %43 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %48 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %52 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @verbose(%struct.bpf_verifier_env* %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %50, i32 %53)
  %55 = load i32, i32* @EFAULT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %107

57:                                               ; preds = %32
  %58 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %59 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @REG_LIVE_READ, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %72, label %65

65:                                               ; preds = %57
  %66 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %67 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @REG_LIVE_READ64, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65, %57
  br label %96

73:                                               ; preds = %65
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %76 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @REG_LIVE_READ64, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %73
  %83 = load i32, i32* @REG_LIVE_READ32, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %86 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %82, %73
  %90 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  store %struct.bpf_reg_state* %90, %struct.bpf_reg_state** %7, align 8
  %91 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %92 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %91, i32 0, i32 2
  %93 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %92, align 8
  store %struct.bpf_reg_state* %93, %struct.bpf_reg_state** %8, align 8
  store i32 1, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %18

96:                                               ; preds = %72, %31, %18
  %97 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %98 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %105 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %102, %96
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %39
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
