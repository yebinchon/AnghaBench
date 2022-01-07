; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_do_delete.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_do_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map_info = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"mem alloc failed\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"delete failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@json_output = common dso_local global i64 0, align 8
@json_wtr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_delete(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.bpf_map_info, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = bitcast %struct.bpf_map_info* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  store i32 4, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (...) @usage()
  br label %16

16:                                               ; preds = %14, %2
  %17 = call i32 @map_parse_fd_and_info(i32* %4, i8*** %5, %struct.bpf_map_info* %6, i32* %7)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %64

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @malloc(i32 %23)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %49

29:                                               ; preds = %21
  %30 = load i8**, i8*** %5, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @parse_elem(i8** %30, %struct.bpf_map_info* %6, i8* %31, i32* null, i32 %33, i32 0, i32* null, i32* null)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %49

38:                                               ; preds = %29
  %39 = load i32, i32* %10, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @bpf_map_delete_elem(i32 %39, i8* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 @strerror(i32 %45)
  %47 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %38
  br label %49

49:                                               ; preds = %48, %37, %27
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @close(i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %49
  %57 = load i64, i64* @json_output, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @json_wtr, align 4
  %61 = call i32 @jsonw_null(i32 %60)
  br label %62

62:                                               ; preds = %59, %56, %49
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %20
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @usage(...) #2

declare dso_local i32 @map_parse_fd_and_info(i32*, i8***, %struct.bpf_map_info*, i32*) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @p_err(i8*, ...) #2

declare dso_local i32 @parse_elem(i8**, %struct.bpf_map_info*, i8*, i32*, i32, i32, i32*, i32*) #2

declare dso_local i32 @bpf_map_delete_elem(i32, i8*) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @jsonw_null(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
