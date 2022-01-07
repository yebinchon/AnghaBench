; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_do_update.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_do_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map_info = type { i32, i32 }

@BPF_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"update failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@json_output = common dso_local global i64 0, align 8
@json_wtr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_update(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.bpf_map_info, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = bitcast %struct.bpf_map_info* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  store i32 8, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %15 = load i32, i32* @BPF_ANY, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 (...) @usage()
  br label %20

20:                                               ; preds = %18, %2
  %21 = call i32 @map_parse_fd_and_info(i32* %4, i8*** %5, %struct.bpf_map_info* %6, i32* %7)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %79

25:                                               ; preds = %20
  %26 = call i32 @alloc_key_value(%struct.bpf_map_info* %6, i8** %10, i8** %11)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %55

30:                                               ; preds = %25
  %31 = load i8**, i8*** %5, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %6, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @parse_elem(i8** %31, %struct.bpf_map_info* %6, i8* %32, i8* %33, i32 %35, i32 %37, i32* %9, i32** %8)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %55

42:                                               ; preds = %30
  %43 = load i32, i32* %12, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @bpf_map_update_elem(i32 %43, i8* %44, i8* %45, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @strerror(i32 %51)
  %53 = call i32 @p_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %55

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %50, %41, %29
  %56 = load i32*, i32** %8, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @close(i32 %60)
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @close(i32 %67)
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %62
  %72 = load i64, i64* @json_output, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* @json_wtr, align 4
  %76 = call i32 @jsonw_null(i32 %75)
  br label %77

77:                                               ; preds = %74, %71, %62
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %24
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @usage(...) #2

declare dso_local i32 @map_parse_fd_and_info(i32*, i8***, %struct.bpf_map_info*, i32*) #2

declare dso_local i32 @alloc_key_value(%struct.bpf_map_info*, i8**, i8**) #2

declare dso_local i32 @parse_elem(i8**, %struct.bpf_map_info*, i8*, i8*, i32, i32, i32*, i32**) #2

declare dso_local i32 @bpf_map_update_elem(i32, i8*, i8*, i32) #2

declare dso_local i32 @p_err(i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @jsonw_null(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
