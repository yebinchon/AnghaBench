; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_do_pop_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_do_pop_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map_info = type { i32 }

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@json_output = common dso_local global i64 0, align 8
@json_wtr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Error: empty map\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"pop failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_pop_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_pop_dequeue(i32 %0, i8** %1) #0 {
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
  br label %64

22:                                               ; preds = %17
  %23 = call i32 @alloc_key_value(%struct.bpf_map_info* %6, i8** %8, i8** %9)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %56

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @bpf_map_lookup_and_delete_elem(i32 %28, i8* %29, i8* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %27
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @ENOENT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i64, i64* @json_output, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @json_wtr, align 4
  %43 = call i32 @jsonw_null(i32 %42)
  br label %46

44:                                               ; preds = %38
  %45 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %41
  br label %51

47:                                               ; preds = %34
  %48 = load i64, i64* @errno, align 8
  %49 = call i32 @strerror(i64 %48)
  %50 = call i32 @p_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %46
  br label %56

52:                                               ; preds = %27
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @print_key_value(%struct.bpf_map_info* %6, i8* %53, i8* %54)
  br label %56

56:                                               ; preds = %52, %51, %26
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @close(i32 %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %56, %21
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @usage(...) #2

declare dso_local i32 @map_parse_fd_and_info(i32*, i8***, %struct.bpf_map_info*, i32*) #2

declare dso_local i32 @alloc_key_value(%struct.bpf_map_info*, i8**, i8**) #2

declare dso_local i32 @bpf_map_lookup_and_delete_elem(i32, i8*, i8*) #2

declare dso_local i32 @jsonw_null(i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @p_err(i8*, i32) #2

declare dso_local i32 @strerror(i64) #2

declare dso_local i32 @print_key_value(%struct.bpf_map_info*, i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
