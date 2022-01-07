; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf_prog_linfo.c_bpf_prog_linfo__lfind_addr_func.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf_prog_linfo.c_bpf_prog_linfo__lfind_addr_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_line_info = type opaque
%struct.bpf_prog_linfo = type { i64, i64*, i64*, i64, i8*, i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_line_info* @bpf_prog_linfo__lfind_addr_func(%struct.bpf_prog_linfo* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.bpf_line_info*, align 8
  %6 = alloca %struct.bpf_prog_linfo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64*, align 8
  store %struct.bpf_prog_linfo* %0, %struct.bpf_prog_linfo** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo** %6, align 8
  %20 = getelementptr inbounds %struct.bpf_prog_linfo, %struct.bpf_prog_linfo* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp uge i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store %struct.bpf_line_info* null, %struct.bpf_line_info** %5, align 8
  br label %103

24:                                               ; preds = %4
  %25 = load %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo** %6, align 8
  %26 = getelementptr inbounds %struct.bpf_prog_linfo, %struct.bpf_prog_linfo* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp uge i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store %struct.bpf_line_info* null, %struct.bpf_line_info** %5, align 8
  br label %103

35:                                               ; preds = %24
  %36 = load %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo** %6, align 8
  %37 = getelementptr inbounds %struct.bpf_prog_linfo, %struct.bpf_prog_linfo* %36, i32 0, i32 2
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = add i64 %41, %42
  store i64 %43, i64* %13, align 8
  %44 = load %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo** %6, align 8
  %45 = getelementptr inbounds %struct.bpf_prog_linfo, %struct.bpf_prog_linfo* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %10, align 8
  %47 = load %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo** %6, align 8
  %48 = getelementptr inbounds %struct.bpf_prog_linfo, %struct.bpf_prog_linfo* %47, i32 0, i32 4
  %49 = load i8*, i8** %48, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %10, align 8
  %52 = mul i64 %50, %51
  %53 = getelementptr i8, i8* %49, i64 %52
  store i8* %53, i8** %15, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = bitcast i8* %54 to i64*
  store i64* %55, i64** %17, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64*, i64** %17, align 8
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %35
  store %struct.bpf_line_info* null, %struct.bpf_line_info** %5, align 8
  br label %103

61:                                               ; preds = %35
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %12, align 8
  %64 = sub i64 %63, %62
  store i64 %64, i64* %12, align 8
  %65 = load %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo** %6, align 8
  %66 = getelementptr inbounds %struct.bpf_prog_linfo, %struct.bpf_prog_linfo* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %11, align 8
  %68 = load %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo** %6, align 8
  %69 = getelementptr inbounds %struct.bpf_prog_linfo, %struct.bpf_prog_linfo* %68, i32 0, i32 6
  %70 = load i8*, i8** %69, align 8
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* %11, align 8
  %73 = mul i64 %71, %72
  %74 = getelementptr i8, i8* %70, i64 %73
  store i8* %74, i8** %16, align 8
  store i64 0, i64* %14, align 8
  br label %75

75:                                               ; preds = %94, %61
  %76 = load i64, i64* %14, align 8
  %77 = load i64, i64* %12, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %75
  %80 = load i64, i64* %7, align 8
  %81 = load i64*, i64** %17, align 8
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %97

85:                                               ; preds = %79
  %86 = load i64, i64* %11, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = getelementptr i8, i8* %87, i64 %86
  store i8* %88, i8** %16, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = getelementptr i8, i8* %90, i64 %89
  store i8* %91, i8** %15, align 8
  %92 = load i8*, i8** %15, align 8
  %93 = bitcast i8* %92 to i64*
  store i64* %93, i64** %17, align 8
  br label %94

94:                                               ; preds = %85
  %95 = load i64, i64* %14, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %14, align 8
  br label %75

97:                                               ; preds = %84, %75
  %98 = load i8*, i8** %16, align 8
  %99 = load i64, i64* %11, align 8
  %100 = sub i64 0, %99
  %101 = getelementptr i8, i8* %98, i64 %100
  %102 = bitcast i8* %101 to %struct.bpf_line_info*
  store %struct.bpf_line_info* %102, %struct.bpf_line_info** %5, align 8
  br label %103

103:                                              ; preds = %97, %60, %34, %23
  %104 = load %struct.bpf_line_info*, %struct.bpf_line_info** %5, align 8
  ret %struct.bpf_line_info* %104
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
