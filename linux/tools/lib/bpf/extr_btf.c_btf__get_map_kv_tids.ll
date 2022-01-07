; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf__get_map_kv_tids.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf__get_map_kv_tids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }
%struct.btf_type = type { i32 }
%struct.btf_member = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"____btf_map_%s\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"map:%s length of '____btf_map_%s' is too long\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [80 x i8] c"map:%s container_name:%s cannot be found in BTF. Missing BPF_ANNOTATE_KV_PAIR?\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"map:%s cannot find BTF type for container_id:%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"map:%s container_name:%s is an invalid container struct\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"map:%s invalid BTF key_type_size\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"map:%s btf_key_type_size:%u != map_def_key_size:%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"map:%s invalid BTF value_type_size\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"map:%s btf_value_type_size:%u != map_def_value_size:%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btf__get_map_kv_tids(%struct.btf* %0, i8* %1, i64 %2, i64 %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btf*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.btf_type*, align 8
  %15 = alloca %struct.btf_member*, align 8
  %16 = alloca %struct.btf_member*, align 8
  %17 = alloca i64, align 8
  %18 = alloca [256 x i8], align 16
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.btf* %0, %struct.btf** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store i64 256, i64* %17, align 8
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %23 = load i8*, i8** %9, align 8
  %24 = call i64 @snprintf(i8* %22, i64 256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = icmp eq i64 %24, 256
  br i1 %25, label %26, label %32

26:                                               ; preds = %6
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 (i8*, i8*, ...) @pr_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %130

32:                                               ; preds = %6
  %33 = load %struct.btf*, %struct.btf** %8, align 8
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %35 = call i32 @btf__find_by_name(%struct.btf* %33, i8* %34)
  store i32 %35, i32* %21, align 4
  %36 = load i32, i32* %21, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i8* %39, i8* %40)
  %42 = load i32, i32* %21, align 4
  store i32 %42, i32* %7, align 4
  br label %130

43:                                               ; preds = %32
  %44 = load %struct.btf*, %struct.btf** %8, align 8
  %45 = load i32, i32* %21, align 4
  %46 = call %struct.btf_type* @btf__type_by_id(%struct.btf* %44, i32 %45)
  store %struct.btf_type* %46, %struct.btf_type** %14, align 8
  %47 = load %struct.btf_type*, %struct.btf_type** %14, align 8
  %48 = icmp ne %struct.btf_type* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %21, align 4
  %52 = call i32 (i8*, i8*, ...) @pr_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %50, i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %130

55:                                               ; preds = %43
  %56 = load %struct.btf_type*, %struct.btf_type** %14, align 8
  %57 = call i32 @btf_is_struct(%struct.btf_type* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.btf_type*, %struct.btf_type** %14, align 8
  %61 = call i32 @btf_vlen(%struct.btf_type* %60)
  %62 = icmp slt i32 %61, 2
  br i1 %62, label %63, label %69

63:                                               ; preds = %59, %55
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %66 = call i32 (i8*, i8*, ...) @pr_warning(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i8* %64, i8* %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %7, align 4
  br label %130

69:                                               ; preds = %59
  %70 = load %struct.btf_type*, %struct.btf_type** %14, align 8
  %71 = call %struct.btf_member* @btf_members(%struct.btf_type* %70)
  store %struct.btf_member* %71, %struct.btf_member** %15, align 8
  %72 = load %struct.btf_member*, %struct.btf_member** %15, align 8
  %73 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %72, i64 1
  store %struct.btf_member* %73, %struct.btf_member** %16, align 8
  %74 = load %struct.btf*, %struct.btf** %8, align 8
  %75 = load %struct.btf_member*, %struct.btf_member** %15, align 8
  %76 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @btf__resolve_size(%struct.btf* %74, i64 %77)
  store i64 %78, i64* %19, align 8
  %79 = load i64, i64* %19, align 8
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %69
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 (i8*, i8*, ...) @pr_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %82)
  %84 = load i64, i64* %19, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %7, align 4
  br label %130

86:                                               ; preds = %69
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %19, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load i8*, i8** %9, align 8
  %92 = load i64, i64* %19, align 8
  %93 = load i64, i64* %10, align 8
  %94 = call i32 (i8*, i8*, ...) @pr_warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i8* %91, i64 %92, i64 %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %7, align 4
  br label %130

97:                                               ; preds = %86
  %98 = load %struct.btf*, %struct.btf** %8, align 8
  %99 = load %struct.btf_member*, %struct.btf_member** %16, align 8
  %100 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @btf__resolve_size(%struct.btf* %98, i64 %101)
  store i64 %102, i64* %20, align 8
  %103 = load i64, i64* %20, align 8
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %97
  %106 = load i8*, i8** %9, align 8
  %107 = call i32 (i8*, i8*, ...) @pr_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* %106)
  %108 = load i64, i64* %20, align 8
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %7, align 4
  br label %130

110:                                              ; preds = %97
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* %20, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = load i8*, i8** %9, align 8
  %116 = load i64, i64* %20, align 8
  %117 = load i64, i64* %11, align 8
  %118 = call i32 (i8*, i8*, ...) @pr_warning(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i8* %115, i64 %116, i64 %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %7, align 4
  br label %130

121:                                              ; preds = %110
  %122 = load %struct.btf_member*, %struct.btf_member** %15, align 8
  %123 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64*, i64** %12, align 8
  store i64 %124, i64* %125, align 8
  %126 = load %struct.btf_member*, %struct.btf_member** %16, align 8
  %127 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64*, i64** %13, align 8
  store i64 %128, i64* %129, align 8
  store i32 0, i32* %7, align 4
  br label %130

130:                                              ; preds = %121, %114, %105, %90, %81, %63, %49, %38, %26
  %131 = load i32, i32* %7, align 4
  ret i32 %131
}

declare dso_local i64 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @pr_warning(i8*, i8*, ...) #1

declare dso_local i32 @btf__find_by_name(%struct.btf*, i8*) #1

declare dso_local i32 @pr_debug(i8*, i8*, i8*) #1

declare dso_local %struct.btf_type* @btf__type_by_id(%struct.btf*, i32) #1

declare dso_local i32 @btf_is_struct(%struct.btf_type*) #1

declare dso_local i32 @btf_vlen(%struct.btf_type*) #1

declare dso_local %struct.btf_member* @btf_members(%struct.btf_type*) #1

declare dso_local i64 @btf__resolve_size(%struct.btf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
