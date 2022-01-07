; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_print_liveness.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_print_liveness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }

@REG_LIVE_READ = common dso_local global i32 0, align 4
@REG_LIVE_WRITTEN = common dso_local global i32 0, align 4
@REG_LIVE_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_verifier_env*, i32)* @print_liveness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_liveness(%struct.bpf_verifier_env* %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_verifier_env*, align 8
  %4 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @REG_LIVE_READ, align 4
  %7 = load i32, i32* @REG_LIVE_WRITTEN, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @REG_LIVE_DONE, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %5, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %15 = call i32 @verbose(%struct.bpf_verifier_env* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @REG_LIVE_READ, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %23 = call i32 @verbose(%struct.bpf_verifier_env* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @REG_LIVE_WRITTEN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %31 = call i32 @verbose(%struct.bpf_verifier_env* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @REG_LIVE_DONE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %39 = call i32 @verbose(%struct.bpf_verifier_env* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %32
  ret void
}

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
