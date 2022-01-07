; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_release_reference_state.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_release_reference_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_func_state = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_func_state*, i32)* @release_reference_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @release_reference_state(%struct.bpf_func_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_func_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bpf_func_state* %0, %struct.bpf_func_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %9 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %63, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %15 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %66

18:                                               ; preds = %12
  %19 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %20 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %18
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %38 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %44 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = call i32 @memcpy(%struct.TYPE_4__* %42, %struct.TYPE_4__* %48, i32 4)
  br label %50

50:                                               ; preds = %36, %32, %29
  %51 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %52 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = call i32 @memset(%struct.TYPE_4__* %56, i32 0, i32 4)
  %58 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %59 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 8
  store i32 0, i32* %3, align 4
  br label %69

62:                                               ; preds = %18
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %12

66:                                               ; preds = %12
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %50
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @memcpy(%struct.TYPE_4__*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
