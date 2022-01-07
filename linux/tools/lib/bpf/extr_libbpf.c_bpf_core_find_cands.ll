; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_core_find_cands.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_core_find_cands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ids_vec = type { i32*, i64 }
%struct.btf = type { i32 }
%struct.btf_type = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"[%d] %s: found candidate [%d] %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ids_vec* (%struct.btf*, i32, %struct.btf*)* @bpf_core_find_cands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ids_vec* @bpf_core_find_cands(%struct.btf* %0, i32 %1, %struct.btf* %2) #0 {
  %4 = alloca %struct.ids_vec*, align 8
  %5 = alloca %struct.btf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.btf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.btf_type*, align 8
  %13 = alloca %struct.ids_vec*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.btf* %0, %struct.btf** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.btf* %2, %struct.btf** %7, align 8
  %18 = load %struct.btf*, %struct.btf** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.btf_type* @btf__type_by_id(%struct.btf* %18, i32 %19)
  store %struct.btf_type* %20, %struct.btf_type** %12, align 8
  %21 = load %struct.btf_type*, %struct.btf_type** %12, align 8
  %22 = icmp ne %struct.btf_type* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.ids_vec* @ERR_PTR(i32 %25)
  store %struct.ids_vec* %26, %struct.ids_vec** %4, align 8
  br label %126

27:                                               ; preds = %3
  %28 = load %struct.btf*, %struct.btf** %5, align 8
  %29 = load %struct.btf_type*, %struct.btf_type** %12, align 8
  %30 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @btf__name_by_offset(%struct.btf* %28, i32 %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i64 @str_is_empty(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.ids_vec* @ERR_PTR(i32 %38)
  store %struct.ids_vec* %39, %struct.ids_vec** %4, align 8
  br label %126

40:                                               ; preds = %27
  %41 = load i8*, i8** %10, align 8
  %42 = call i64 @bpf_core_essential_name_len(i8* %41)
  store i64 %42, i64* %8, align 8
  %43 = call %struct.ids_vec* @calloc(i32 1, i32 16)
  store %struct.ids_vec* %43, %struct.ids_vec** %13, align 8
  %44 = load %struct.ids_vec*, %struct.ids_vec** %13, align 8
  %45 = icmp ne %struct.ids_vec* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.ids_vec* @ERR_PTR(i32 %48)
  store %struct.ids_vec* %49, %struct.ids_vec** %4, align 8
  br label %126

50:                                               ; preds = %40
  %51 = load %struct.btf*, %struct.btf** %7, align 8
  %52 = call i32 @btf__get_nr_types(%struct.btf* %51)
  store i32 %52, i32* %17, align 4
  store i32 1, i32* %15, align 4
  br label %53

53:                                               ; preds = %116, %50
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %119

57:                                               ; preds = %53
  %58 = load %struct.btf*, %struct.btf** %7, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call %struct.btf_type* @btf__type_by_id(%struct.btf* %58, i32 %59)
  store %struct.btf_type* %60, %struct.btf_type** %12, align 8
  %61 = load %struct.btf*, %struct.btf** %7, align 8
  %62 = load %struct.btf_type*, %struct.btf_type** %12, align 8
  %63 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @btf__name_by_offset(%struct.btf* %61, i32 %64)
  store i8* %65, i8** %11, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = call i64 @str_is_empty(i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %116

70:                                               ; preds = %57
  %71 = load i8*, i8** %11, align 8
  %72 = call i64 @bpf_core_essential_name_len(i8* %71)
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %116

77:                                               ; preds = %70
  %78 = load i8*, i8** %10, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i64, i64* %8, align 8
  %81 = call i64 @strncmp(i8* %78, i8* %79, i64 %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %115

83:                                               ; preds = %77
  %84 = load i32, i32* %6, align 4
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* %15, align 4
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %84, i8* %85, i32 %86, i8* %87)
  %89 = load %struct.ids_vec*, %struct.ids_vec** %13, align 8
  %90 = getelementptr inbounds %struct.ids_vec, %struct.ids_vec* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.ids_vec*, %struct.ids_vec** %13, align 8
  %93 = getelementptr inbounds %struct.ids_vec, %struct.ids_vec* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  %96 = call i32* @realloc(i32* %91, i64 %95)
  store i32* %96, i32** %14, align 8
  %97 = load i32*, i32** %14, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %83
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %16, align 4
  br label %121

102:                                              ; preds = %83
  %103 = load i32*, i32** %14, align 8
  %104 = load %struct.ids_vec*, %struct.ids_vec** %13, align 8
  %105 = getelementptr inbounds %struct.ids_vec, %struct.ids_vec* %104, i32 0, i32 0
  store i32* %103, i32** %105, align 8
  %106 = load i32, i32* %15, align 4
  %107 = load %struct.ids_vec*, %struct.ids_vec** %13, align 8
  %108 = getelementptr inbounds %struct.ids_vec, %struct.ids_vec* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.ids_vec*, %struct.ids_vec** %13, align 8
  %111 = getelementptr inbounds %struct.ids_vec, %struct.ids_vec* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %111, align 8
  %114 = getelementptr inbounds i32, i32* %109, i64 %112
  store i32 %106, i32* %114, align 4
  br label %115

115:                                              ; preds = %102, %77
  br label %116

116:                                              ; preds = %115, %76, %69
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %15, align 4
  br label %53

119:                                              ; preds = %53
  %120 = load %struct.ids_vec*, %struct.ids_vec** %13, align 8
  store %struct.ids_vec* %120, %struct.ids_vec** %4, align 8
  br label %126

121:                                              ; preds = %99
  %122 = load %struct.ids_vec*, %struct.ids_vec** %13, align 8
  %123 = call i32 @bpf_core_free_cands(%struct.ids_vec* %122)
  %124 = load i32, i32* %16, align 4
  %125 = call %struct.ids_vec* @ERR_PTR(i32 %124)
  store %struct.ids_vec* %125, %struct.ids_vec** %4, align 8
  br label %126

126:                                              ; preds = %121, %119, %46, %36, %23
  %127 = load %struct.ids_vec*, %struct.ids_vec** %4, align 8
  ret %struct.ids_vec* %127
}

declare dso_local %struct.btf_type* @btf__type_by_id(%struct.btf*, i32) #1

declare dso_local %struct.ids_vec* @ERR_PTR(i32) #1

declare dso_local i8* @btf__name_by_offset(%struct.btf*, i32) #1

declare dso_local i64 @str_is_empty(i8*) #1

declare dso_local i64 @bpf_core_essential_name_len(i8*) #1

declare dso_local %struct.ids_vec* @calloc(i32, i32) #1

declare dso_local i32 @btf__get_nr_types(%struct.btf*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32* @realloc(i32*, i64) #1

declare dso_local i32 @bpf_core_free_cands(%struct.ids_vec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
