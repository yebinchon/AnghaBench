; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_btf_dumper.c_btf_dump_linfo_json.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_btf_dumper.c_btf_dump_linfo_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }
%struct.bpf_line_info = type { i32, i32, i32 }

@json_wtr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"src\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"line_num\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"line_col\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btf_dump_linfo_json(%struct.btf* %0, %struct.bpf_line_info* %1, i32 %2) #0 {
  %4 = alloca %struct.btf*, align 8
  %5 = alloca %struct.bpf_line_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.btf* %0, %struct.btf** %4, align 8
  store %struct.bpf_line_info* %1, %struct.bpf_line_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.btf*, %struct.btf** %4, align 8
  %10 = load %struct.bpf_line_info*, %struct.bpf_line_info** %5, align 8
  %11 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @btf__name_by_offset(%struct.btf* %9, i32 %12)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32, i32* @json_wtr, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = call i8* @ltrim(i8* %18)
  %20 = call i32 @jsonw_string_field(i32 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %16, %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %21
  %25 = load %struct.btf*, %struct.btf** %4, align 8
  %26 = load %struct.bpf_line_info*, %struct.bpf_line_info** %5, align 8
  %27 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @btf__name_by_offset(%struct.btf* %25, i32 %28)
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load i32, i32* @json_wtr, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @jsonw_string_field(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %32, %24
  %37 = load %struct.bpf_line_info*, %struct.bpf_line_info** %5, align 8
  %38 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @BPF_LINE_INFO_LINE_NUM(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i32, i32* @json_wtr, align 4
  %44 = load %struct.bpf_line_info*, %struct.bpf_line_info** %5, align 8
  %45 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @BPF_LINE_INFO_LINE_NUM(i32 %46)
  %48 = call i32 @jsonw_int_field(i32 %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  br label %49

49:                                               ; preds = %42, %36
  %50 = load %struct.bpf_line_info*, %struct.bpf_line_info** %5, align 8
  %51 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @BPF_LINE_INFO_LINE_COL(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load i32, i32* @json_wtr, align 4
  %57 = load %struct.bpf_line_info*, %struct.bpf_line_info** %5, align 8
  %58 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @BPF_LINE_INFO_LINE_COL(i32 %59)
  %61 = call i32 @jsonw_int_field(i32 %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %55, %49
  br label %63

63:                                               ; preds = %62, %21
  ret void
}

declare dso_local i8* @btf__name_by_offset(%struct.btf*, i32) #1

declare dso_local i32 @jsonw_string_field(i32, i8*, i8*) #1

declare dso_local i8* @ltrim(i8*) #1

declare dso_local i64 @BPF_LINE_INFO_LINE_NUM(i32) #1

declare dso_local i32 @jsonw_int_field(i32, i8*, i64) #1

declare dso_local i64 @BPF_LINE_INFO_LINE_COL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
