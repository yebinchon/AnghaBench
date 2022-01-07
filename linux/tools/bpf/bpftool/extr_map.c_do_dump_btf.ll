; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_do_dump_btf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_do_dump_btf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dumper = type { i32 }
%struct.bpf_map_info = type { i64, i32, i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_dumper*, %struct.bpf_map_info*, i8*, i8*)* @do_dump_btf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_dump_btf(%struct.btf_dumper* %0, %struct.bpf_map_info* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.btf_dumper*, align 8
  %6 = alloca %struct.bpf_map_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.btf_dumper* %0, %struct.btf_dumper** %5, align 8
  store %struct.bpf_map_info* %1, %struct.bpf_map_info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %14 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @jsonw_start_object(i32 %15)
  %17 = load %struct.bpf_map_info*, %struct.bpf_map_info** %6, align 8
  %18 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %4
  %22 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %23 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @jsonw_name(i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %27 = load %struct.bpf_map_info*, %struct.bpf_map_info** %6, align 8
  %28 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @btf_dumper_type(%struct.btf_dumper* %26, i64 %29, i8* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %113

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35, %4
  %37 = load %struct.bpf_map_info*, %struct.bpf_map_info** %6, align 8
  %38 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @map_is_per_cpu(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %36
  %43 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %44 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @jsonw_name(i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %48 = load %struct.bpf_map_info*, %struct.bpf_map_info** %6, align 8
  %49 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @btf_dumper_type(%struct.btf_dumper* %47, i64 %50, i8* %51)
  store i32 %52, i32* %9, align 4
  br label %112

53:                                               ; preds = %36
  %54 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %55 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @jsonw_name(i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %59 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @jsonw_start_array(i32 %60)
  %62 = call i32 (...) @get_possible_cpus()
  store i32 %62, i32* %11, align 4
  %63 = load %struct.bpf_map_info*, %struct.bpf_map_info** %6, align 8
  %64 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @round_up(i32 %65, i32 8)
  store i32 %66, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %104, %53
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %107

71:                                               ; preds = %67
  %72 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %73 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @jsonw_start_object(i32 %74)
  %76 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %77 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @jsonw_int_field(i32 %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %82 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @jsonw_name(i32 %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %86 = load %struct.bpf_map_info*, %struct.bpf_map_info** %6, align 8
  %87 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %12, align 4
  %92 = mul i32 %90, %91
  %93 = zext i32 %92 to i64
  %94 = getelementptr i8, i8* %89, i64 %93
  %95 = call i32 @btf_dumper_type(%struct.btf_dumper* %85, i64 %88, i8* %94)
  store i32 %95, i32* %9, align 4
  %96 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %97 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @jsonw_end_object(i32 %98)
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %71
  br label %107

103:                                              ; preds = %71
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %10, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %67

107:                                              ; preds = %102, %67
  %108 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %109 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @jsonw_end_array(i32 %110)
  br label %112

112:                                              ; preds = %107, %42
  br label %113

113:                                              ; preds = %112, %34
  %114 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %115 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @jsonw_end_object(i32 %116)
  %118 = load i32, i32* %9, align 4
  ret i32 %118
}

declare dso_local i32 @jsonw_start_object(i32) #1

declare dso_local i32 @jsonw_name(i32, i8*) #1

declare dso_local i32 @btf_dumper_type(%struct.btf_dumper*, i64, i8*) #1

declare dso_local i32 @map_is_per_cpu(i32) #1

declare dso_local i32 @jsonw_start_array(i32) #1

declare dso_local i32 @get_possible_cpus(...) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @jsonw_int_field(i32, i8*, i32) #1

declare dso_local i32 @jsonw_end_object(i32) #1

declare dso_local i32 @jsonw_end_array(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
