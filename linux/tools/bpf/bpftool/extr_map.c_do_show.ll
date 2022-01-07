; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_do_show.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_do_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map_info = type { i32 }

@show_pinned = common dso_local global i64 0, align 8
@map_table = common dso_local global i32 0, align 4
@BPF_OBJ_MAP = common dso_local global i32 0, align 4
@json_output = common dso_local global i64 0, align 8
@json_wtr = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"can't get next map: %s%s\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c" -- kernel too old?\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"can't get map by id (%u): %s\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"can't get map info: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_show(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.bpf_map_info, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = bitcast %struct.bpf_map_info* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  store i32 4, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i64, i64* @show_pinned, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @BPF_OBJ_MAP, align 4
  %16 = call i32 @build_pinned_obj_table(i32* @map_table, i32 %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = call i32 @map_parse_fd_and_info(i32* %4, i8*** %5, %struct.bpf_map_info* %6, i32* %7)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %113

25:                                               ; preds = %20
  %26 = load i64, i64* @json_output, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @show_map_close_json(i32 %29, %struct.bpf_map_info* %6)
  store i32 %30, i32* %3, align 4
  br label %113

31:                                               ; preds = %25
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @show_map_close_plain(i32 %32, %struct.bpf_map_info* %6)
  store i32 %33, i32* %3, align 4
  br label %113

34:                                               ; preds = %17
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (...) @BAD_ARG()
  store i32 %38, i32* %3, align 4
  br label %113

39:                                               ; preds = %34
  %40 = load i64, i64* @json_output, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @json_wtr, align 4
  %44 = call i32 @jsonw_start_array(i32 %43)
  br label %45

45:                                               ; preds = %42, %39
  br label %46

46:                                               ; preds = %45, %74, %100
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @bpf_map_get_next_id(i32 %47, i32* %8)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load i64, i64* @errno, align 8
  %53 = load i64, i64* @ENOENT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %101

56:                                               ; preds = %51
  %57 = load i64, i64* @errno, align 8
  %58 = call i32 @strerror(i64 %57)
  %59 = load i64, i64* @errno, align 8
  %60 = load i64, i64* @EINVAL, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %64 = call i32 (i8*, i32, ...) @p_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %58, i8* %63)
  br label %101

65:                                               ; preds = %46
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @bpf_map_get_fd_by_id(i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load i64, i64* @errno, align 8
  %72 = load i64, i64* @ENOENT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %46

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  %77 = load i64, i64* @errno, align 8
  %78 = call i32 @strerror(i64 %77)
  %79 = call i32 (i8*, i32, ...) @p_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32 %78)
  br label %101

80:                                               ; preds = %65
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @bpf_obj_get_info_by_fd(i32 %81, %struct.bpf_map_info* %6, i32* %7)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i64, i64* @errno, align 8
  %87 = call i32 @strerror(i64 %86)
  %88 = call i32 (i8*, i32, ...) @p_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @close(i32 %89)
  br label %101

91:                                               ; preds = %80
  %92 = load i64, i64* @json_output, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @show_map_close_json(i32 %95, %struct.bpf_map_info* %6)
  br label %100

97:                                               ; preds = %91
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @show_map_close_plain(i32 %98, %struct.bpf_map_info* %6)
  br label %100

100:                                              ; preds = %97, %94
  br label %46

101:                                              ; preds = %85, %75, %56, %55
  %102 = load i64, i64* @json_output, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* @json_wtr, align 4
  %106 = call i32 @jsonw_end_array(i32 %105)
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i64, i64* @errno, align 8
  %109 = load i64, i64* @ENOENT, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 0, i32 -1
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %107, %37, %31, %28, %24
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @build_pinned_obj_table(i32*, i32) #2

declare dso_local i32 @map_parse_fd_and_info(i32*, i8***, %struct.bpf_map_info*, i32*) #2

declare dso_local i32 @show_map_close_json(i32, %struct.bpf_map_info*) #2

declare dso_local i32 @show_map_close_plain(i32, %struct.bpf_map_info*) #2

declare dso_local i32 @BAD_ARG(...) #2

declare dso_local i32 @jsonw_start_array(i32) #2

declare dso_local i32 @bpf_map_get_next_id(i32, i32*) #2

declare dso_local i32 @p_err(i8*, i32, ...) #2

declare dso_local i32 @strerror(i64) #2

declare dso_local i32 @bpf_map_get_fd_by_id(i32) #2

declare dso_local i32 @bpf_obj_get_info_by_fd(i32, %struct.bpf_map_info*, i32*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @jsonw_end_array(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
