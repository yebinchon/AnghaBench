; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_btf.c_dump_btf_raw.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_btf.c_dump_btf_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }
%struct.btf_type = type { i32 }

@json_output = common dso_local global i64 0, align 8
@json_wtr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"types\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf*, i32*, i32)* @dump_btf_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_btf_raw(%struct.btf* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.btf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.btf_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btf* %0, %struct.btf** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* @json_output, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i32, i32* @json_wtr, align 4
  %14 = call i32 @jsonw_start_object(i32 %13)
  %15 = load i32, i32* @json_wtr, align 4
  %16 = call i32 @jsonw_name(i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @json_wtr, align 4
  %18 = call i32 @jsonw_start_array(i32 %17)
  br label %19

19:                                               ; preds = %12, %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %43, %22
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %23
  %28 = load %struct.btf*, %struct.btf** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.btf_type* @btf__type_by_id(%struct.btf* %28, i32 %33)
  store %struct.btf_type* %34, %struct.btf_type** %7, align 8
  %35 = load %struct.btf*, %struct.btf** %4, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %42 = call i32 @dump_btf_type(%struct.btf* %35, i32 %40, %struct.btf_type* %41)
  br label %43

43:                                               ; preds = %27
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %23

46:                                               ; preds = %23
  br label %66

47:                                               ; preds = %19
  %48 = load %struct.btf*, %struct.btf** %4, align 8
  %49 = call i32 @btf__get_nr_types(%struct.btf* %48)
  store i32 %49, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %50

50:                                               ; preds = %62, %47
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load %struct.btf*, %struct.btf** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call %struct.btf_type* @btf__type_by_id(%struct.btf* %55, i32 %56)
  store %struct.btf_type* %57, %struct.btf_type** %7, align 8
  %58 = load %struct.btf*, %struct.btf** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %61 = call i32 @dump_btf_type(%struct.btf* %58, i32 %59, %struct.btf_type* %60)
  br label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %50

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65, %46
  %67 = load i64, i64* @json_output, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* @json_wtr, align 4
  %71 = call i32 @jsonw_end_array(i32 %70)
  %72 = load i32, i32* @json_wtr, align 4
  %73 = call i32 @jsonw_end_object(i32 %72)
  br label %74

74:                                               ; preds = %69, %66
  ret i32 0
}

declare dso_local i32 @jsonw_start_object(i32) #1

declare dso_local i32 @jsonw_name(i32, i8*) #1

declare dso_local i32 @jsonw_start_array(i32) #1

declare dso_local %struct.btf_type* @btf__type_by_id(%struct.btf*, i32) #1

declare dso_local i32 @dump_btf_type(%struct.btf*, i32, %struct.btf_type*) #1

declare dso_local i32 @btf__get_nr_types(%struct.btf*) #1

declare dso_local i32 @jsonw_end_array(i32) #1

declare dso_local i32 @jsonw_end_object(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
