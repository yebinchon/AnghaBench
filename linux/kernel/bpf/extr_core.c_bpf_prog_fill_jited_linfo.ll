; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_core.c_bpf_prog_fill_jited_linfo.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_core.c_bpf_prog_fill_jited_linfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i64, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8**, i64, i64, %struct.bpf_line_info* }
%struct.bpf_line_info = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bpf_prog_fill_jited_linfo(%struct.bpf_prog* %0, i64* %1) #0 {
  %3 = alloca %struct.bpf_prog*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bpf_line_info*, align 8
  %11 = alloca i8**, align 8
  store %struct.bpf_prog* %0, %struct.bpf_prog** %3, align 8
  store i64* %1, i64** %4, align 8
  %12 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %13 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8**, i8*** %15, align 8
  %17 = icmp ne i8** %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %96

19:                                               ; preds = %2
  %20 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %21 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %5, align 8
  %25 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %26 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load %struct.bpf_line_info*, %struct.bpf_line_info** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %29, i64 %30
  store %struct.bpf_line_info* %31, %struct.bpf_line_info** %10, align 8
  %32 = load %struct.bpf_line_info*, %struct.bpf_line_info** %10, align 8
  %33 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %32, i64 0
  %34 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %38 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %36, %39
  store i64 %40, i64* %7, align 8
  %41 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %42 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  store i8** %47, i8*** %11, align 8
  %48 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %49 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i8**, i8*** %11, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %54 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = sub i64 %57, %58
  store i64 %59, i64* %8, align 8
  store i64 1, i64* %9, align 8
  br label %60

60:                                               ; preds = %93, %19
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load %struct.bpf_line_info*, %struct.bpf_line_info** %10, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %65, i64 %66
  %68 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = icmp ult i64 %69, %70
  br label %72

72:                                               ; preds = %64, %60
  %73 = phi i1 [ false, %60 ], [ %71, %64 ]
  br i1 %73, label %74, label %96

74:                                               ; preds = %72
  %75 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %76 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load i64*, i64** %4, align 8
  %79 = load %struct.bpf_line_info*, %struct.bpf_line_info** %10, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %79, i64 %80
  %82 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = sub i64 %83, %84
  %86 = sub i64 %85, 1
  %87 = getelementptr inbounds i64, i64* %78, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr i8, i8* %77, i64 %88
  %90 = load i8**, i8*** %11, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds i8*, i8** %90, i64 %91
  store i8* %89, i8** %92, align 8
  br label %93

93:                                               ; preds = %74
  %94 = load i64, i64* %9, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %9, align 8
  br label %60

96:                                               ; preds = %18, %72
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
