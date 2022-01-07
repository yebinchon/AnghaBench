; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_check_sec_info.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_check_sec_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { %struct.btf* }
%struct.btf = type { %struct.btf_header }
%struct.btf_header = type { i64 }
%struct.btf_sec_info = type { i64, i64 }

@btf_sec_info_offset = common dso_local global i32* null, align 8
@btf_sec_info_cmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid section offset\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unsupported section found\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Section overlap found\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Total section length too long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*, i64)* @btf_check_sec_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_check_sec_info(%struct.btf_verifier_env* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf_verifier_env*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.btf_header*, align 8
  %12 = alloca %struct.btf*, align 8
  %13 = alloca i32, align 4
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i32*, i32** @btf_sec_info_offset, align 8
  %15 = call i64 @ARRAY_SIZE(i32* %14)
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca %struct.btf_sec_info, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %19 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %18, i32 0, i32 0
  %20 = load %struct.btf*, %struct.btf** %19, align 8
  store %struct.btf* %20, %struct.btf** %12, align 8
  %21 = load %struct.btf*, %struct.btf** %12, align 8
  %22 = getelementptr inbounds %struct.btf, %struct.btf* %21, i32 0, i32 0
  store %struct.btf_header* %22, %struct.btf_header** %11, align 8
  store i64 0, i64* %10, align 8
  br label %23

23:                                               ; preds = %42, %2
  %24 = load i64, i64* %10, align 8
  %25 = load i32*, i32** @btf_sec_info_offset, align 8
  %26 = call i64 @ARRAY_SIZE(i32* %25)
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds %struct.btf_sec_info, %struct.btf_sec_info* %17, i64 %29
  %31 = load %struct.btf_header*, %struct.btf_header** %11, align 8
  %32 = bitcast %struct.btf_header* %31 to i8*
  %33 = load i32*, i32** @btf_sec_info_offset, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr i8, i8* %32, i64 %37
  %39 = bitcast i8* %38 to %struct.btf_sec_info*
  %40 = bitcast %struct.btf_sec_info* %30 to i8*
  %41 = bitcast %struct.btf_sec_info* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %40, i8* align 8 %41, i64 16, i1 false)
  br label %42

42:                                               ; preds = %28
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %10, align 8
  br label %23

45:                                               ; preds = %23
  %46 = load i32*, i32** @btf_sec_info_offset, align 8
  %47 = call i64 @ARRAY_SIZE(i32* %46)
  %48 = load i32, i32* @btf_sec_info_cmp, align 4
  %49 = call i32 @sort(%struct.btf_sec_info* %17, i64 %47, i32 16, i32 %48, i32* null)
  store i64 0, i64* %8, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.btf_header*, %struct.btf_header** %11, align 8
  %52 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub i64 %50, %53
  store i64 %54, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %55

55:                                               ; preds = %117, %45
  %56 = load i64, i64* %10, align 8
  %57 = load i32*, i32** @btf_sec_info_offset, align 8
  %58 = call i64 @ARRAY_SIZE(i32* %57)
  %59 = icmp ult i64 %56, %58
  br i1 %59, label %60, label %120

60:                                               ; preds = %55
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds %struct.btf_sec_info, %struct.btf_sec_info* %17, i64 %62
  %64 = getelementptr inbounds %struct.btf_sec_info, %struct.btf_sec_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 16
  %66 = icmp ult i64 %61, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %69 = call i32 @btf_verifier_log(%struct.btf_verifier_env* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %130

72:                                               ; preds = %60
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds %struct.btf_sec_info, %struct.btf_sec_info* %17, i64 %74
  %76 = getelementptr inbounds %struct.btf_sec_info, %struct.btf_sec_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 16
  %78 = icmp ult i64 %73, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %81 = call i32 @btf_verifier_log(%struct.btf_verifier_env* %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %130

84:                                               ; preds = %72
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds %struct.btf_sec_info, %struct.btf_sec_info* %17, i64 %86
  %88 = getelementptr inbounds %struct.btf_sec_info, %struct.btf_sec_info* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 16
  %90 = icmp ugt i64 %85, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %93 = call i32 @btf_verifier_log(%struct.btf_verifier_env* %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %130

96:                                               ; preds = %84
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* %8, align 8
  %99 = sub i64 %97, %98
  %100 = load i64, i64* %10, align 8
  %101 = getelementptr inbounds %struct.btf_sec_info, %struct.btf_sec_info* %17, i64 %100
  %102 = getelementptr inbounds %struct.btf_sec_info, %struct.btf_sec_info* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ult i64 %99, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %96
  %106 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %107 = call i32 @btf_verifier_log(%struct.btf_verifier_env* %106, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %130

110:                                              ; preds = %96
  %111 = load i64, i64* %10, align 8
  %112 = getelementptr inbounds %struct.btf_sec_info, %struct.btf_sec_info* %17, i64 %111
  %113 = getelementptr inbounds %struct.btf_sec_info, %struct.btf_sec_info* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %8, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %8, align 8
  br label %117

117:                                              ; preds = %110
  %118 = load i64, i64* %10, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %10, align 8
  br label %55

120:                                              ; preds = %55
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* %8, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %126 = call i32 @btf_verifier_log(%struct.btf_verifier_env* %125, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %130

129:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %130

130:                                              ; preds = %129, %124, %105, %91, %79, %67
  %131 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @sort(%struct.btf_sec_info*, i64, i32, i32, i32*) #1

declare dso_local i32 @btf_verifier_log(%struct.btf_verifier_env*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
