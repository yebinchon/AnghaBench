; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_trace_helpers.c_ksym_search.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_trace_helpers.c_ksym_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksym = type { i64 }

@sym_cnt = common dso_local global i32 0, align 4
@syms = common dso_local global %struct.ksym* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ksym* @ksym_search(i64 %0) #0 {
  %2 = alloca %struct.ksym*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @sym_cnt, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @sym_cnt, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.ksym* null, %struct.ksym** %2, align 8
  br label %82

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %50, %12
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 %19, %20
  %22 = sdiv i32 %21, 2
  %23 = add nsw i32 %18, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load %struct.ksym*, %struct.ksym** @syms, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.ksym, %struct.ksym* %26, i64 %27
  %29 = getelementptr inbounds %struct.ksym, %struct.ksym* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %25, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %17
  %36 = load i64, i64* %7, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %5, align 4
  br label %50

38:                                               ; preds = %17
  %39 = load i32, i32* %6, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, 1
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  br label %49

45:                                               ; preds = %38
  %46 = load %struct.ksym*, %struct.ksym** @syms, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds %struct.ksym, %struct.ksym* %46, i64 %47
  store %struct.ksym* %48, %struct.ksym** %2, align 8
  br label %82

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %35
  br label %13

51:                                               ; preds = %13
  %52 = load i32, i32* %4, align 4
  %53 = icmp sge i32 %52, 1
  br i1 %53, label %54, label %79

54:                                               ; preds = %51
  %55 = load %struct.ksym*, %struct.ksym** @syms, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ksym, %struct.ksym* %55, i64 %58
  %60 = getelementptr inbounds %struct.ksym, %struct.ksym* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %3, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %54
  %65 = load i64, i64* %3, align 8
  %66 = load %struct.ksym*, %struct.ksym** @syms, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ksym, %struct.ksym* %66, i64 %68
  %70 = getelementptr inbounds %struct.ksym, %struct.ksym* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %65, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = load %struct.ksym*, %struct.ksym** @syms, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ksym, %struct.ksym* %74, i64 %77
  store %struct.ksym* %78, %struct.ksym** %2, align 8
  br label %82

79:                                               ; preds = %64, %54, %51
  %80 = load %struct.ksym*, %struct.ksym** @syms, align 8
  %81 = getelementptr inbounds %struct.ksym, %struct.ksym* %80, i64 0
  store %struct.ksym* %81, %struct.ksym** %2, align 8
  br label %82

82:                                               ; preds = %79, %73, %45, %11
  %83 = load %struct.ksym*, %struct.ksym** %2, align 8
  ret %struct.ksym* %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
