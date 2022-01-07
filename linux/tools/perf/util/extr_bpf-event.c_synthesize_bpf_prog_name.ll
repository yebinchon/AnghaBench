; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-event.c_synthesize_bpf_prog_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-event.c_synthesize_bpf_prog_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_info = type { i64, i64, i8*, i64, i64 }
%struct.btf = type { i32 }
%struct.bpf_func_info = type { i32 }
%struct.btf_type = type { i32 }

@prog_tags = common dso_local global i32* null, align 8
@BPF_TAG_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"bpf_prog_\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"_%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.bpf_prog_info*, %struct.btf*, i64)* @synthesize_bpf_prog_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synthesize_bpf_prog_name(i8* %0, i32 %1, %struct.bpf_prog_info* %2, %struct.btf* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bpf_prog_info*, align 8
  %9 = alloca %struct.btf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.bpf_func_info*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.btf_type*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.bpf_prog_info* %2, %struct.bpf_prog_info** %8, align 8
  store %struct.btf* %3, %struct.btf** %9, align 8
  store i64 %4, i64* %10, align 8
  %17 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %8, align 8
  %18 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load i32*, i32** @prog_tags, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i8** @u8(i32 %22)
  %24 = load i64, i64* @BPF_TAG_SIZE, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  store i8* %20, i8** %25, align 8
  %26 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %8, align 8
  %27 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %11, align 8
  %30 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %8, align 8
  %31 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %12, align 8
  store i8* null, i8** %14, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %33, i32 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %35, i32* %16, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %16, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %16, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load i32*, i32** @prog_tags, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* @BPF_TAG_SIZE, align 8
  %48 = call i64 @snprintf_hex(i8* %39, i32 %42, i32 %46, i64 %47)
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %16, align 4
  %53 = load %struct.btf*, %struct.btf** %9, align 8
  %54 = icmp ne %struct.btf* %53, null
  br i1 %54, label %55, label %74

55:                                               ; preds = %5
  %56 = load i8*, i8** %11, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %8, align 8
  %59 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = mul i64 %57, %60
  %62 = getelementptr i8, i8* %56, i64 %61
  %63 = bitcast i8* %62 to %struct.bpf_func_info*
  store %struct.bpf_func_info* %63, %struct.bpf_func_info** %13, align 8
  %64 = load %struct.btf*, %struct.btf** %9, align 8
  %65 = load %struct.bpf_func_info*, %struct.bpf_func_info** %13, align 8
  %66 = getelementptr inbounds %struct.bpf_func_info, %struct.bpf_func_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.btf_type* @btf__type_by_id(%struct.btf* %64, i32 %67)
  store %struct.btf_type* %68, %struct.btf_type** %15, align 8
  %69 = load %struct.btf*, %struct.btf** %9, align 8
  %70 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %71 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @btf__name_by_offset(%struct.btf* %69, i32 %72)
  store i8* %73, i8** %14, align 8
  br label %94

74:                                               ; preds = %5
  %75 = load i64, i64* %10, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %74
  %78 = load i64, i64* %12, align 8
  %79 = icmp eq i64 %78, 1
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %8, align 8
  %82 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %8, align 8
  %89 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %14, align 8
  br label %91

91:                                               ; preds = %87, %80
  br label %93

92:                                               ; preds = %77, %74
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %93

93:                                               ; preds = %92, %91
  br label %94

94:                                               ; preds = %93, %55
  %95 = load i8*, i8** %14, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = load i8*, i8** %6, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %16, align 4
  %104 = sub nsw i32 %102, %103
  %105 = load i8*, i8** %14, align 8
  %106 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %101, i32 %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %105)
  %107 = load i32, i32* %16, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %16, align 4
  br label %109

109:                                              ; preds = %97, %94
  %110 = load i32, i32* %16, align 4
  ret i32 %110
}

declare dso_local i8** @u8(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @snprintf_hex(i8*, i32, i32, i64) #1

declare dso_local %struct.btf_type* @btf__type_by_id(%struct.btf*, i32) #1

declare dso_local i8* @btf__name_by_offset(%struct.btf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
