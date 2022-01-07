; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_do_getnext.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_do_getnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map_info = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"mem alloc failed\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"can't get next key: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@json_output = common dso_local global i64 0, align 8
@json_wtr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"next_key\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"key:\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"key: None\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"next key:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_getnext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_getnext(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.bpf_map_info, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = bitcast %struct.bpf_map_info* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  store i32 4, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (...) @usage()
  br label %17

17:                                               ; preds = %15, %2
  %18 = call i32 @map_parse_fd_and_info(i32* %4, i8*** %5, %struct.bpf_map_info* %6, i32* %7)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %120

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @malloc(i32 %24)
  store i8* %25, i8** %8, align 8
  %26 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @malloc(i32 %27)
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31, %22
  %35 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %112

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load i8**, i8*** %5, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @parse_elem(i8** %40, %struct.bpf_map_info* %6, i8* %41, i32* null, i32 %43, i32 0, i32* null, i32* null)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %112

48:                                               ; preds = %39
  br label %52

49:                                               ; preds = %36
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @free(i8* %50)
  store i8* null, i8** %8, align 8
  br label %52

52:                                               ; preds = %49, %48
  %53 = load i32, i32* %11, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @bpf_map_get_next_key(i32 %53, i8* %54, i8* %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32, i32* @errno, align 4
  %61 = call i32 @strerror(i32 %60)
  %62 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %112

63:                                               ; preds = %52
  %64 = load i64, i64* @json_output, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %63
  %67 = load i32, i32* @json_wtr, align 4
  %68 = call i32 @jsonw_start_object(i32 %67)
  %69 = load i8*, i8** %8, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i32, i32* @json_wtr, align 4
  %73 = call i32 @jsonw_name(i32 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %6, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @print_hex_data_json(i8* %74, i32 %76)
  br label %81

78:                                               ; preds = %66
  %79 = load i32, i32* @json_wtr, align 4
  %80 = call i32 @jsonw_null_field(i32 %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %71
  %82 = load i32, i32* @json_wtr, align 4
  %83 = call i32 @jsonw_name(i32 %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %6, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @print_hex_data_json(i8* %84, i32 %86)
  %88 = load i32, i32* @json_wtr, align 4
  %89 = call i32 @jsonw_end_object(i32 %88)
  br label %111

90:                                               ; preds = %63
  %91 = load i8*, i8** %8, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* @stdout, align 4
  %96 = load i8*, i8** %8, align 8
  %97 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %6, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @fprint_hex(i32 %95, i8* %96, i32 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %100 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %103

101:                                              ; preds = %90
  %102 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %93
  %104 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %105 = load i32, i32* @stdout, align 4
  %106 = load i8*, i8** %9, align 8
  %107 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %6, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @fprint_hex(i32 %105, i8* %106, i32 %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %110 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %111

111:                                              ; preds = %103, %81
  br label %112

112:                                              ; preds = %111, %59, %47, %34
  %113 = load i8*, i8** %9, align 8
  %114 = call i32 @free(i8* %113)
  %115 = load i8*, i8** %8, align 8
  %116 = call i32 @free(i8* %115)
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @close(i32 %117)
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %112, %21
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @usage(...) #2

declare dso_local i32 @map_parse_fd_and_info(i32*, i8***, %struct.bpf_map_info*, i32*) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @p_err(i8*, ...) #2

declare dso_local i32 @parse_elem(i8**, %struct.bpf_map_info*, i8*, i32*, i32, i32, i32*, i32*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @bpf_map_get_next_key(i32, i8*, i8*) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @jsonw_start_object(i32) #2

declare dso_local i32 @jsonw_name(i32, i8*) #2

declare dso_local i32 @print_hex_data_json(i8*, i32) #2

declare dso_local i32 @jsonw_null_field(i32, i8*) #2

declare dso_local i32 @jsonw_end_object(i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @fprint_hex(i32, i8*, i32, i8*) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
