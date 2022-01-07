; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_ext_reloc_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_ext_reloc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }
%struct.btf_ext_info = type { i64, i64, %struct.btf_ext_info_sec* }
%struct.btf_ext_info_sec = type { i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf*, %struct.btf_ext_info*, i8*, i64, i8**, i64*)* @btf_ext_reloc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_ext_reloc_info(%struct.btf* %0, %struct.btf_ext_info* %1, i8* %2, i64 %3, i8** %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btf*, align 8
  %9 = alloca %struct.btf_ext_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.btf_ext_info_sec*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64*, align 8
  store %struct.btf* %0, %struct.btf** %8, align 8
  store %struct.btf_ext_info* %1, %struct.btf_ext_info** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8** %4, i8*** %12, align 8
  store i64* %5, i64** %13, align 8
  store i64 16, i64* %14, align 8
  %24 = load %struct.btf_ext_info*, %struct.btf_ext_info** %9, align 8
  %25 = getelementptr inbounds %struct.btf_ext_info, %struct.btf_ext_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %16, align 8
  %27 = load %struct.btf_ext_info*, %struct.btf_ext_info** %9, align 8
  %28 = getelementptr inbounds %struct.btf_ext_info, %struct.btf_ext_info* %27, i32 0, i32 2
  %29 = load %struct.btf_ext_info_sec*, %struct.btf_ext_info_sec** %28, align 8
  store %struct.btf_ext_info_sec* %29, %struct.btf_ext_info_sec** %19, align 8
  %30 = load %struct.btf_ext_info*, %struct.btf_ext_info** %9, align 8
  %31 = getelementptr inbounds %struct.btf_ext_info, %struct.btf_ext_info* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %21, align 8
  br label %33

33:                                               ; preds = %51, %6
  %34 = load i64, i64* %21, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %122

36:                                               ; preds = %33
  %37 = load %struct.btf_ext_info_sec*, %struct.btf_ext_info_sec** %19, align 8
  %38 = getelementptr inbounds %struct.btf_ext_info_sec, %struct.btf_ext_info_sec* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %16, align 8
  %41 = mul nsw i64 %39, %40
  store i64 %41, i64* %18, align 8
  %42 = load %struct.btf*, %struct.btf** %8, align 8
  %43 = load %struct.btf_ext_info_sec*, %struct.btf_ext_info_sec** %19, align 8
  %44 = getelementptr inbounds %struct.btf_ext_info_sec, %struct.btf_ext_info_sec* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @btf__name_by_offset(%struct.btf* %42, i32 %45)
  store i8* %46, i8** %20, align 8
  %47 = load i8*, i8** %20, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i64 @strcmp(i8* %47, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %36
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %18, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i64, i64* %21, align 8
  %56 = sub nsw i64 %55, %54
  store i64 %56, i64* %21, align 8
  %57 = load %struct.btf_ext_info_sec*, %struct.btf_ext_info_sec** %19, align 8
  %58 = bitcast %struct.btf_ext_info_sec* %57 to i8*
  %59 = load i64, i64* %14, align 8
  %60 = getelementptr i8, i8* %58, i64 %59
  %61 = load i64, i64* %18, align 8
  %62 = getelementptr i8, i8* %60, i64 %61
  %63 = bitcast i8* %62 to %struct.btf_ext_info_sec*
  store %struct.btf_ext_info_sec* %63, %struct.btf_ext_info_sec** %19, align 8
  br label %33

64:                                               ; preds = %36
  %65 = load i64*, i64** %13, align 8
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %16, align 8
  %68 = mul nsw i64 %66, %67
  store i64 %68, i64* %17, align 8
  %69 = load i8**, i8*** %12, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = load i64, i64* %17, align 8
  %72 = load i64, i64* %18, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i8* @realloc(i8* %70, i64 %73)
  store i8* %74, i8** %22, align 8
  %75 = load i8*, i8** %22, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %64
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %125

80:                                               ; preds = %64
  %81 = load i8*, i8** %22, align 8
  %82 = load i64, i64* %17, align 8
  %83 = getelementptr i8, i8* %81, i64 %82
  %84 = load %struct.btf_ext_info_sec*, %struct.btf_ext_info_sec** %19, align 8
  %85 = getelementptr inbounds %struct.btf_ext_info_sec, %struct.btf_ext_info_sec* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i64, i64* %18, align 8
  %88 = call i32 @memcpy(i8* %83, i32 %86, i64 %87)
  store i64 0, i64* %15, align 8
  br label %89

89:                                               ; preds = %110, %80
  %90 = load i64, i64* %15, align 8
  %91 = load %struct.btf_ext_info_sec*, %struct.btf_ext_info_sec** %19, align 8
  %92 = getelementptr inbounds %struct.btf_ext_info_sec, %struct.btf_ext_info_sec* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %90, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %89
  %96 = load i8*, i8** %22, align 8
  %97 = load i64, i64* %17, align 8
  %98 = getelementptr i8, i8* %96, i64 %97
  %99 = load i64, i64* %15, align 8
  %100 = load i64, i64* %16, align 8
  %101 = mul nsw i64 %99, %100
  %102 = getelementptr i8, i8* %98, i64 %101
  %103 = bitcast i8* %102 to i64*
  store i64* %103, i64** %23, align 8
  %104 = load i64*, i64** %23, align 8
  %105 = load i64, i64* %104, align 8
  %106 = udiv i64 %105, 4
  %107 = load i64, i64* %11, align 8
  %108 = add i64 %106, %107
  %109 = load i64*, i64** %23, align 8
  store i64 %108, i64* %109, align 8
  br label %110

110:                                              ; preds = %95
  %111 = load i64, i64* %15, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %15, align 8
  br label %89

113:                                              ; preds = %89
  %114 = load i8*, i8** %22, align 8
  %115 = load i8**, i8*** %12, align 8
  store i8* %114, i8** %115, align 8
  %116 = load %struct.btf_ext_info_sec*, %struct.btf_ext_info_sec** %19, align 8
  %117 = getelementptr inbounds %struct.btf_ext_info_sec, %struct.btf_ext_info_sec* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64*, i64** %13, align 8
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, %118
  store i64 %121, i64* %119, align 8
  store i32 0, i32* %7, align 4
  br label %125

122:                                              ; preds = %33
  %123 = load i32, i32* @ENOENT, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %122, %113, %77
  %126 = load i32, i32* %7, align 4
  ret i32 %126
}

declare dso_local i8* @btf__name_by_offset(%struct.btf*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
