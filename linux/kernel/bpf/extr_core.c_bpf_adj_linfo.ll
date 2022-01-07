; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_core.c_bpf_adj_linfo.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_core.c_bpf_adj_linfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.bpf_line_info* }
%struct.bpf_line_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_prog*, i64, i64)* @bpf_adj_linfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_adj_linfo(%struct.bpf_prog* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bpf_prog*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bpf_line_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.bpf_prog* %0, %struct.bpf_prog** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %11 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %3
  br label %60

21:                                               ; preds = %17
  %22 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %23 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.bpf_line_info*, %struct.bpf_line_info** %25, align 8
  store %struct.bpf_line_info* %26, %struct.bpf_line_info** %7, align 8
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %41, %21
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.bpf_line_info*, %struct.bpf_line_info** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %33, i64 %34
  %36 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %32, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %44

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %8, align 8
  br label %27

44:                                               ; preds = %39, %27
  br label %45

45:                                               ; preds = %57, %44
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.bpf_line_info*, %struct.bpf_line_info** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %51, i64 %52
  %54 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, %50
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %49
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %8, align 8
  br label %45

60:                                               ; preds = %20, %45
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
