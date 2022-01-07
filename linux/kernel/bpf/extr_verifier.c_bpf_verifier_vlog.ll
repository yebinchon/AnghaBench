; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_bpf_verifier_vlog.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_bpf_verifier_vlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_log = type { i8*, i32, i32, i32* }

@BPF_VERIFIER_TMP_LOG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"verifier log line truncated - local buffer too short\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bpf_verifier_vlog(%struct.bpf_verifier_log* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.bpf_verifier_log*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bpf_verifier_log* %0, %struct.bpf_verifier_log** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bpf_verifier_log*, %struct.bpf_verifier_log** %4, align 8
  %9 = getelementptr inbounds %struct.bpf_verifier_log, %struct.bpf_verifier_log* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load i32, i32* @BPF_VERIFIER_TMP_LOG_SIZE, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @vscnprintf(i8* %10, i32 %11, i8* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @BPF_VERIFIER_TMP_LOG_SIZE, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp uge i32 %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ONCE(i32 %19, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.bpf_verifier_log*, %struct.bpf_verifier_log** %4, align 8
  %22 = getelementptr inbounds %struct.bpf_verifier_log, %struct.bpf_verifier_log* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.bpf_verifier_log*, %struct.bpf_verifier_log** %4, align 8
  %25 = getelementptr inbounds %struct.bpf_verifier_log, %struct.bpf_verifier_log* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  %28 = sub nsw i32 %27, 1
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @min(i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.bpf_verifier_log*, %struct.bpf_verifier_log** %4, align 8
  %32 = getelementptr inbounds %struct.bpf_verifier_log, %struct.bpf_verifier_log* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8 0, i8* %36, align 1
  %37 = load %struct.bpf_verifier_log*, %struct.bpf_verifier_log** %4, align 8
  %38 = getelementptr inbounds %struct.bpf_verifier_log, %struct.bpf_verifier_log* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.bpf_verifier_log*, %struct.bpf_verifier_log** %4, align 8
  %41 = getelementptr inbounds %struct.bpf_verifier_log, %struct.bpf_verifier_log* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load %struct.bpf_verifier_log*, %struct.bpf_verifier_log** %4, align 8
  %46 = getelementptr inbounds %struct.bpf_verifier_log, %struct.bpf_verifier_log* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %48, 1
  %50 = call i32 @copy_to_user(i32* %44, i8* %47, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %3
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.bpf_verifier_log*, %struct.bpf_verifier_log** %4, align 8
  %55 = getelementptr inbounds %struct.bpf_verifier_log, %struct.bpf_verifier_log* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = add i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %61

58:                                               ; preds = %3
  %59 = load %struct.bpf_verifier_log*, %struct.bpf_verifier_log** %4, align 8
  %60 = getelementptr inbounds %struct.bpf_verifier_log, %struct.bpf_verifier_log* %59, i32 0, i32 3
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %58, %52
  ret void
}

declare dso_local i32 @vscnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @copy_to_user(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
