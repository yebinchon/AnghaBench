; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_btf_dumper.c_btf_dump_func.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_btf_dumper.c_btf_dump_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }
%struct.btf_type = type { i32, i32, i64 }
%struct.btf_param = type { i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"%s(\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf*, i8*, %struct.btf_type*, %struct.btf_type*, i32, i32)* @btf_dump_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_dump_func(%struct.btf* %0, i8* %1, %struct.btf_type* %2, %struct.btf_type* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.btf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.btf_type*, align 8
  %10 = alloca %struct.btf_type*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.btf_param*, align 8
  store %struct.btf* %0, %struct.btf** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.btf_type* %2, %struct.btf_type** %9, align 8
  store %struct.btf_type* %3, %struct.btf_type** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %17 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @BTF_PRINT_TYPE(i64 %18)
  %20 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %21 = icmp ne %struct.btf_type* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %6
  %23 = load %struct.btf*, %struct.btf** %7, align 8
  %24 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %25 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @btf__name_by_offset(%struct.btf* %23, i32 %26)
  %28 = call i32 (i8*, ...) @BTF_PRINT_ARG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %31

29:                                               ; preds = %6
  %30 = call i32 (i8*, ...) @BTF_PRINT_ARG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %22
  %32 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %33 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @BTF_INFO_VLEN(i32 %34)
  store i32 %35, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %70, %31
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %73

40:                                               ; preds = %36
  %41 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %42 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %41, i64 1
  %43 = bitcast %struct.btf_type* %42 to %struct.btf_param*
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %43, i64 %45
  store %struct.btf_param* %46, %struct.btf_param** %15, align 8
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = call i32 (i8*, ...) @BTF_PRINT_ARG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %40
  %52 = load %struct.btf_param*, %struct.btf_param** %15, align 8
  %53 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load %struct.btf_param*, %struct.btf_param** %15, align 8
  %58 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @BTF_PRINT_TYPE(i64 %59)
  %61 = load %struct.btf*, %struct.btf** %7, align 8
  %62 = load %struct.btf_param*, %struct.btf_param** %15, align 8
  %63 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @btf__name_by_offset(%struct.btf* %61, i32 %64)
  %66 = call i32 (i8*, ...) @BTF_PRINT_ARG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %69

67:                                               ; preds = %51
  %68 = call i32 (i8*, ...) @BTF_PRINT_ARG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %56
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %36

73:                                               ; preds = %36
  %74 = call i32 (i8*, ...) @BTF_PRINT_ARG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %75 = load i32, i32* %11, align 4
  ret i32 %75
}

declare dso_local i32 @BTF_PRINT_TYPE(i64) #1

declare dso_local i32 @BTF_PRINT_ARG(i8*, ...) #1

declare dso_local i32 @btf__name_by_offset(%struct.btf*, i32) #1

declare dso_local i32 @BTF_INFO_VLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
