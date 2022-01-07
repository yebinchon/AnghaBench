; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_add_subprog.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_add_subprog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"call to invalid destination\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BPF_MAX_SUBPROGS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"too many subprograms\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@cmp_subprogs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, i32)* @add_subprog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_subprog(%struct.bpf_verifier_env* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_verifier_env*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %9 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16, %2
  %20 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %21 = call i32 @verbose(%struct.bpf_verifier_env* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %61

24:                                               ; preds = %16
  %25 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @find_subprog(%struct.bpf_verifier_env* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %61

31:                                               ; preds = %24
  %32 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %33 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BPF_MAX_SUBPROGS, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %39 = call i32 @verbose(%struct.bpf_verifier_env* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @E2BIG, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %61

42:                                               ; preds = %31
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %45 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %48 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %49
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %43, i32* %52, align 4
  %53 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %54 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %57 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @cmp_subprogs, align 4
  %60 = call i32 @sort(%struct.TYPE_4__* %55, i64 %58, i32 4, i32 %59, i32* null)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %42, %37, %30, %19
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*) #1

declare dso_local i32 @find_subprog(%struct.bpf_verifier_env*, i32) #1

declare dso_local i32 @sort(%struct.TYPE_4__*, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
