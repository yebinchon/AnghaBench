; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf__get_from_id.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf__get_from_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }
%struct.bpf_btf_info = type { i32, i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btf__get_from_id(i32 %0, %struct.btf** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.btf**, align 8
  %6 = alloca %struct.bpf_btf_info, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.btf** %1, %struct.btf*** %5, align 8
  %13 = bitcast %struct.bpf_btf_info* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  store i32 24, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.btf**, %struct.btf*** %5, align 8
  store %struct.btf* null, %struct.btf** %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @bpf_btf_get_fd_by_id(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %103

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %6, i32 0, i32 0
  store i32 4096, i32* %21, align 8
  %22 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i8* @malloc(i32 %24)
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %11, align 4
  br label %97

31:                                               ; preds = %20
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @memset(i8* %32, i32 0, i32 %33)
  %35 = load i8*, i8** %10, align 8
  %36 = call i8* @ptr_to_u64(i8* %35)
  %37 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %6, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @bpf_obj_get_info_by_fd(i32 %38, %struct.bpf_btf_info* %6, i32* %7)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %68, label %42

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %6, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %8, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i8* @realloc(i8* %50, i32 %51)
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %11, align 4
  br label %97

58:                                               ; preds = %47
  %59 = load i8*, i8** %12, align 8
  store i8* %59, i8** %10, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @memset(i8* %60, i32 0, i32 %61)
  %63 = load i8*, i8** %10, align 8
  %64 = call i8* @ptr_to_u64(i8* %63)
  %65 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %6, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @bpf_obj_get_info_by_fd(i32 %66, %struct.bpf_btf_info* %6, i32* %7)
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %58, %42, %31
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %6, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %71, %68
  %77 = load i32, i32* @errno, align 4
  store i32 %77, i32* %11, align 4
  br label %97

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %6, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = ptrtoint i8* %80 to i64
  %82 = inttoptr i64 %81 to i32*
  %83 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %6, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call %struct.btf* @btf__new(i32* %82, i32 %84)
  %86 = load %struct.btf**, %struct.btf*** %5, align 8
  store %struct.btf* %85, %struct.btf** %86, align 8
  %87 = load %struct.btf**, %struct.btf*** %5, align 8
  %88 = load %struct.btf*, %struct.btf** %87, align 8
  %89 = call i64 @IS_ERR(%struct.btf* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %78
  %92 = load %struct.btf**, %struct.btf*** %5, align 8
  %93 = load %struct.btf*, %struct.btf** %92, align 8
  %94 = call i32 @PTR_ERR(%struct.btf* %93)
  store i32 %94, i32* %11, align 4
  %95 = load %struct.btf**, %struct.btf*** %5, align 8
  store %struct.btf* null, %struct.btf** %95, align 8
  br label %96

96:                                               ; preds = %91, %78
  br label %97

97:                                               ; preds = %96, %76, %55, %28
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @close(i32 %98)
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @free(i8* %100)
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %97, %19
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bpf_btf_get_fd_by_id(i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i8* @ptr_to_u64(i8*) #2

declare dso_local i32 @bpf_obj_get_info_by_fd(i32, %struct.bpf_btf_info*, i32*) #2

declare dso_local i8* @realloc(i8*, i32) #2

declare dso_local %struct.btf* @btf__new(i32*, i32) #2

declare dso_local i64 @IS_ERR(%struct.btf*) #2

declare dso_local i32 @PTR_ERR(%struct.btf*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
