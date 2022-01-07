; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_cgroup.c_show_bpf_prog.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_cgroup.c_show_bpf_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_info = type { i8*, i8* }

@json_output = common dso_local global i64 0, align 8
@json_wtr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"attach_type\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"attach_flags\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%s%-8u %-15s %-15s %-15s\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i32)* @show_bpf_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_bpf_prog(i32 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_prog_info, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = bitcast %struct.bpf_prog_info* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  store i32 16, i32* %11, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @bpf_prog_get_fd_by_id(i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %63

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  %21 = call i64 @bpf_obj_get_info_by_fd(i32 %20, %struct.bpf_prog_info* %10, i32* %11)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @close(i32 %24)
  store i32 -1, i32* %5, align 4
  br label %63

26:                                               ; preds = %19
  %27 = load i64, i64* @json_output, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load i32, i32* @json_wtr, align 4
  %31 = call i32 @jsonw_start_object(i32 %30)
  %32 = load i32, i32* @json_wtr, align 4
  %33 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %10, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @jsonw_uint_field(i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @json_wtr, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @jsonw_string_field(i32 %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* @json_wtr, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @jsonw_string_field(i32 %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* @json_wtr, align 4
  %43 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %10, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @jsonw_string_field(i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* @json_wtr, align 4
  %47 = call i32 @jsonw_end_object(i32 %46)
  br label %60

48:                                               ; preds = %26
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %53 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %10, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %10, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %52, i8* %54, i8* %55, i8* %56, i8* %58)
  br label %60

60:                                               ; preds = %48, %29
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @close(i32 %61)
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %23, %18
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bpf_prog_get_fd_by_id(i32) #2

declare dso_local i64 @bpf_obj_get_info_by_fd(i32, %struct.bpf_prog_info*, i32*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @jsonw_start_object(i32) #2

declare dso_local i32 @jsonw_uint_field(i32, i8*, i8*) #2

declare dso_local i32 @jsonw_string_field(i32, i8*, i8*) #2

declare dso_local i32 @jsonw_end_object(i32) #2

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
