; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_clean_func_state.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_clean_func_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_func_state = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@BPF_REG_FP = common dso_local global i32 0, align 4
@REG_LIVE_DONE = common dso_local global i32 0, align 4
@REG_LIVE_READ = common dso_local global i32 0, align 4
@BPF_REG_SIZE = common dso_local global i32 0, align 4
@STACK_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_verifier_env*, %struct.bpf_func_state*)* @clean_func_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clean_func_state(%struct.bpf_verifier_env* %0, %struct.bpf_func_state* %1) #0 {
  %3 = alloca %struct.bpf_verifier_env*, align 8
  %4 = alloca %struct.bpf_func_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %3, align 8
  store %struct.bpf_func_state* %1, %struct.bpf_func_state** %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %44, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @BPF_REG_FP, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %8
  %13 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %14 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @REG_LIVE_DONE, align 4
  %22 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %23 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %21
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @REG_LIVE_READ, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %12
  %36 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %37 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = call i32 @__mark_reg_not_init(%struct.TYPE_4__* %41)
  br label %43

43:                                               ; preds = %35, %12
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %8

47:                                               ; preds = %8
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %112, %47
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %51 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @BPF_REG_SIZE, align 4
  %54 = sdiv i32 %52, %53
  %55 = icmp slt i32 %49, %54
  br i1 %55, label %56, label %115

56:                                               ; preds = %48
  %57 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %58 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* @REG_LIVE_DONE, align 4
  %67 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %68 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %66
  store i32 %76, i32* %74, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @REG_LIVE_READ, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %111, label %81

81:                                               ; preds = %56
  %82 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %83 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = call i32 @__mark_reg_not_init(%struct.TYPE_4__* %88)
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %107, %81
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @BPF_REG_SIZE, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %90
  %95 = load i32, i32* @STACK_INVALID, align 4
  %96 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %97 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %95, i32* %106, align 4
  br label %107

107:                                              ; preds = %94
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %90

110:                                              ; preds = %90
  br label %111

111:                                              ; preds = %110, %56
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %48

115:                                              ; preds = %48
  ret void
}

declare dso_local i32 @__mark_reg_not_init(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
