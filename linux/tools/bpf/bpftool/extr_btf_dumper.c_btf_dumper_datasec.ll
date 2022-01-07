; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_btf_dumper.c_btf_dumper_datasec.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_btf_dumper.c_btf_dumper_datasec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dumper = type { i32, i32 }
%struct.btf_var_secinfo = type { i32, i32 }
%struct.btf_type = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_dumper*, i32, i8*)* @btf_dumper_datasec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_dumper_datasec(%struct.btf_dumper* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btf_dumper*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.btf_var_secinfo*, align 8
  %9 = alloca %struct.btf_type*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.btf_dumper* %0, %struct.btf_dumper** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %14 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.btf_type* @btf__type_by_id(i32 %15, i32 %16)
  store %struct.btf_type* %17, %struct.btf_type** %9, align 8
  %18 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %19 = icmp ne %struct.btf_type* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %89

23:                                               ; preds = %3
  %24 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %25 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @BTF_INFO_VLEN(i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %29 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %28, i64 1
  %30 = bitcast %struct.btf_type* %29 to %struct.btf_var_secinfo*
  store %struct.btf_var_secinfo* %30, %struct.btf_var_secinfo** %8, align 8
  %31 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %32 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @jsonw_start_object(i32 %33)
  %35 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %36 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %39 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %42 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @btf__name_by_offset(i32 %40, i32 %43)
  %45 = call i32 @jsonw_name(i32 %37, i32 %44)
  %46 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %47 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @jsonw_start_array(i32 %48)
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %76, %23
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %50
  %55 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %56 = load %struct.btf_var_secinfo*, %struct.btf_var_secinfo** %8, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.btf_var_secinfo, %struct.btf_var_secinfo* %56, i64 %58
  %60 = getelementptr inbounds %struct.btf_var_secinfo, %struct.btf_var_secinfo* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = load %struct.btf_var_secinfo*, %struct.btf_var_secinfo** %8, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.btf_var_secinfo, %struct.btf_var_secinfo* %63, i64 %65
  %67 = getelementptr inbounds %struct.btf_var_secinfo, %struct.btf_var_secinfo* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr i8, i8* %62, i64 %69
  %71 = call i32 @btf_dumper_do_type(%struct.btf_dumper* %55, i32 %61, i32 0, i8* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %54
  br label %79

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %50

79:                                               ; preds = %74, %50
  %80 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %81 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @jsonw_end_array(i32 %82)
  %84 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %85 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @jsonw_end_object(i32 %86)
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %79, %20
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.btf_type* @btf__type_by_id(i32, i32) #1

declare dso_local i32 @BTF_INFO_VLEN(i32) #1

declare dso_local i32 @jsonw_start_object(i32) #1

declare dso_local i32 @jsonw_name(i32, i32) #1

declare dso_local i32 @btf__name_by_offset(i32, i32) #1

declare dso_local i32 @jsonw_start_array(i32) #1

declare dso_local i32 @btf_dumper_do_type(%struct.btf_dumper*, i32, i32, i8*) #1

declare dso_local i32 @jsonw_end_array(i32) #1

declare dso_local i32 @jsonw_end_object(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
