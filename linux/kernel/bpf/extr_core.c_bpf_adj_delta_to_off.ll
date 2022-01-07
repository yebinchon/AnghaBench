; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_core.c_bpf_adj_delta_to_off.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_core.c_bpf_adj_delta_to_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn = type { i64 }

@S16_MIN = common dso_local global i64 0, align 8
@S16_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_insn*, i64, i64, i64, i64, i32)* @bpf_adj_delta_to_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_adj_delta_to_off(%struct.bpf_insn* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bpf_insn*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.bpf_insn* %0, %struct.bpf_insn** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i64, i64* @S16_MIN, align 8
  store i64 %18, i64* %14, align 8
  %19 = load i64, i64* @S16_MAX, align 8
  store i64 %19, i64* %15, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* %10, align 8
  %22 = sub nsw i64 %20, %21
  store i64 %22, i64* %16, align 8
  %23 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %24 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %17, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %6
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* %17, align 8
  %32 = add nsw i64 %30, %31
  %33 = add nsw i64 %32, 1
  %34 = load i64, i64* %10, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i64, i64* %16, align 8
  %38 = load i64, i64* %17, align 8
  %39 = add nsw i64 %38, %37
  store i64 %39, i64* %17, align 8
  br label %56

40:                                               ; preds = %29, %6
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %11, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %17, align 8
  %47 = add nsw i64 %45, %46
  %48 = add nsw i64 %47, 1
  %49 = load i64, i64* %11, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i64, i64* %16, align 8
  %53 = load i64, i64* %17, align 8
  %54 = sub nsw i64 %53, %52
  store i64 %54, i64* %17, align 8
  br label %55

55:                                               ; preds = %51, %44, %40
  br label %56

56:                                               ; preds = %55, %36
  %57 = load i64, i64* %17, align 8
  %58 = load i64, i64* %14, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %17, align 8
  %62 = load i64, i64* %15, align 8
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60, %56
  %65 = load i32, i32* @ERANGE, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %75

67:                                               ; preds = %60
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = load i64, i64* %17, align 8
  %72 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %73 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %70, %67
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %74, %64
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
