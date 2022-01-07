; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_print_key_value.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_print_key_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map_info = type { i32 }
%struct.btf = type { i32 }
%struct.btf_dumper = type { i32, i32*, %struct.btf* }

@.str = private unnamed_addr constant [18 x i8] c"failed to get btf\00", align 1
@json_output = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"failed to create json writer for btf. falling back to plain output\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_map_info*, i8*, i8*)* @print_key_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_key_value(%struct.bpf_map_info* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.bpf_map_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.btf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.btf_dumper, align 8
  store %struct.bpf_map_info* %0, %struct.bpf_map_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.btf* null, %struct.btf** %8, align 8
  %11 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %12 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @btf__get_from_id(i32 %13, %struct.btf** %8)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 @p_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %64

19:                                               ; preds = %3
  %20 = load i64, i64* @json_output, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.btf*, %struct.btf** %8, align 8
  %27 = call i32 @print_entry_json(%struct.bpf_map_info* %23, i8* %24, i8* %25, %struct.btf* %26)
  br label %61

28:                                               ; preds = %19
  %29 = load %struct.btf*, %struct.btf** %8, align 8
  %30 = icmp ne %struct.btf* %29, null
  br i1 %30, label %31, label %55

31:                                               ; preds = %28
  %32 = call i32* (...) @get_btf_writer()
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = call i32 @p_info(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.btf*, %struct.btf** %8, align 8
  %38 = call i32 @btf__free(%struct.btf* %37)
  store %struct.btf* null, %struct.btf** %8, align 8
  %39 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @print_entry_plain(%struct.bpf_map_info* %39, i8* %40, i8* %41)
  br label %54

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %10, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %10, i32 0, i32 1
  %46 = load i32*, i32** %7, align 8
  store i32* %46, i32** %45, align 8
  %47 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %10, i32 0, i32 2
  %48 = load %struct.btf*, %struct.btf** %8, align 8
  store %struct.btf* %48, %struct.btf** %47, align 8
  %49 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @do_dump_btf(%struct.btf_dumper* %10, %struct.bpf_map_info* %49, i8* %50, i8* %51)
  %53 = call i32 @jsonw_destroy(i32** %7)
  br label %54

54:                                               ; preds = %43, %35
  br label %60

55:                                               ; preds = %28
  %56 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @print_entry_plain(%struct.bpf_map_info* %56, i8* %57, i8* %58)
  br label %60

60:                                               ; preds = %55, %54
  br label %61

61:                                               ; preds = %60, %22
  %62 = load %struct.btf*, %struct.btf** %8, align 8
  %63 = call i32 @btf__free(%struct.btf* %62)
  br label %64

64:                                               ; preds = %61, %17
  ret void
}

declare dso_local i32 @btf__get_from_id(i32, %struct.btf**) #1

declare dso_local i32 @p_err(i8*) #1

declare dso_local i32 @print_entry_json(%struct.bpf_map_info*, i8*, i8*, %struct.btf*) #1

declare dso_local i32* @get_btf_writer(...) #1

declare dso_local i32 @p_info(i8*) #1

declare dso_local i32 @btf__free(%struct.btf*) #1

declare dso_local i32 @print_entry_plain(%struct.bpf_map_info*, i8*, i8*) #1

declare dso_local i32 @do_dump_btf(%struct.btf_dumper*, %struct.bpf_map_info*, i8*, i8*) #1

declare dso_local i32 @jsonw_destroy(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
