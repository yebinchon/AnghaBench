; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf_prog_linfo.c_dissect_jited_func.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf_prog_linfo.c_dissect_jited_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_linfo = type { i8*, i64*, i64, i64, i64*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_prog_linfo*, i64*, i64*)* @dissect_jited_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dissect_jited_func(%struct.bpf_prog_linfo* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_prog_linfo*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.bpf_prog_linfo* %0, %struct.bpf_prog_linfo** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %16 = load %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo** %5, align 8
  %17 = getelementptr inbounds %struct.bpf_prog_linfo, %struct.bpf_prog_linfo* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to i64*
  store i64* %20, i64** %11, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %11, align 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %128

28:                                               ; preds = %3
  %29 = load %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo** %5, align 8
  %30 = getelementptr inbounds %struct.bpf_prog_linfo, %struct.bpf_prog_linfo* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo** %5, align 8
  %34 = getelementptr inbounds %struct.bpf_prog_linfo, %struct.bpf_prog_linfo* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %8, align 8
  %36 = load %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo** %5, align 8
  %37 = getelementptr inbounds %struct.bpf_prog_linfo, %struct.bpf_prog_linfo* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %9, align 8
  store i64 0, i64* %14, align 8
  store i64 1, i64* %13, align 8
  store i64 1, i64* %15, align 8
  br label %39

39:                                               ; preds = %110, %28
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i64, i64* %15, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ult i64 %44, %45
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ false, %39 ], [ %46, %43 ]
  br i1 %48, label %49, label %113

49:                                               ; preds = %47
  %50 = load %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo** %5, align 8
  %51 = getelementptr inbounds %struct.bpf_prog_linfo, %struct.bpf_prog_linfo* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr i8, i8* %53, i64 %54
  store i8* %55, i8** %10, align 8
  %56 = load i64*, i64** %11, align 8
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %12, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = bitcast i8* %58 to i64*
  store i64* %59, i64** %11, align 8
  %60 = load i64*, i64** %6, align 8
  %61 = load i64, i64* %15, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %11, align 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %67, label %102

67:                                               ; preds = %49
  %68 = load i64, i64* %13, align 8
  %69 = load %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo** %5, align 8
  %70 = getelementptr inbounds %struct.bpf_prog_linfo, %struct.bpf_prog_linfo* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %15, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64 %68, i64* %73, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i64*, i64** %6, align 8
  %76 = load i64, i64* %15, align 8
  %77 = sub i64 %76, 1
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %74, %79
  %81 = add nsw i64 %80, 1
  %82 = load i64*, i64** %7, align 8
  %83 = load i64, i64* %15, align 8
  %84 = sub i64 %83, 1
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp ugt i64 %81, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %67
  br label %128

89:                                               ; preds = %67
  %90 = load i64, i64* %13, align 8
  %91 = load i64, i64* %14, align 8
  %92 = sub i64 %90, %91
  %93 = load %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo** %5, align 8
  %94 = getelementptr inbounds %struct.bpf_prog_linfo, %struct.bpf_prog_linfo* %93, i32 0, i32 4
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* %15, align 8
  %97 = sub i64 %96, 1
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  store i64 %92, i64* %98, align 8
  %99 = load i64, i64* %13, align 8
  store i64 %99, i64* %14, align 8
  %100 = load i64, i64* %15, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %15, align 8
  br label %109

102:                                              ; preds = %49
  %103 = load i64*, i64** %11, align 8
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %12, align 8
  %106 = icmp sle i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %128

108:                                              ; preds = %102
  br label %109

109:                                              ; preds = %108, %89
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %13, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %13, align 8
  br label %39

113:                                              ; preds = %47
  %114 = load i64, i64* %15, align 8
  %115 = load i64, i64* %8, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %128

118:                                              ; preds = %113
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* %14, align 8
  %121 = sub i64 %119, %120
  %122 = load %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo** %5, align 8
  %123 = getelementptr inbounds %struct.bpf_prog_linfo, %struct.bpf_prog_linfo* %122, i32 0, i32 4
  %124 = load i64*, i64** %123, align 8
  %125 = load i64, i64* %8, align 8
  %126 = sub i64 %125, 1
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  store i64 %121, i64* %127, align 8
  store i32 0, i32* %4, align 4
  br label %131

128:                                              ; preds = %117, %107, %88, %27
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %128, %118
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
