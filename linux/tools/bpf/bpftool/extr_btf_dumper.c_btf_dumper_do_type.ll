; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_btf_dumper.c_btf_dumper_do_type.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_btf_dumper.c_btf_dumper_do_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dumper = type { i32, i32, i32 }
%struct.btf_type = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"(fwd-kind-invalid)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"(unsupported-kind\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_dumper*, i32, i32, i8*)* @btf_dumper_do_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_dumper_do_type(%struct.btf_dumper* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btf_dumper*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.btf_type*, align 8
  store %struct.btf_dumper* %0, %struct.btf_dumper** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.btf_dumper*, %struct.btf_dumper** %6, align 8
  %12 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.btf_type* @btf__type_by_id(i32 %13, i32 %14)
  store %struct.btf_type* %15, %struct.btf_type** %10, align 8
  %16 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %17 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BTF_INFO_KIND(i32 %18)
  switch i32 %19, label %85 [
    i32 136, label %20
    i32 133, label %31
    i32 131, label %31
    i32 141, label %36
    i32 138, label %41
    i32 135, label %47
    i32 130, label %56
    i32 137, label %61
    i32 132, label %68
    i32 128, label %68
    i32 140, label %68
    i32 134, label %68
    i32 129, label %74
    i32 139, label %80
  ]

20:                                               ; preds = %4
  %21 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.btf_dumper*, %struct.btf_dumper** %6, align 8
  %25 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.btf_dumper*, %struct.btf_dumper** %6, align 8
  %28 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @btf_dumper_int(%struct.btf_type* %21, i32 %22, i8* %23, i32 %26, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %92

31:                                               ; preds = %4, %4
  %32 = load %struct.btf_dumper*, %struct.btf_dumper** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @btf_dumper_struct(%struct.btf_dumper* %32, i32 %33, i8* %34)
  store i32 %35, i32* %5, align 4
  br label %92

36:                                               ; preds = %4
  %37 = load %struct.btf_dumper*, %struct.btf_dumper** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @btf_dumper_array(%struct.btf_dumper* %37, i32 %38, i8* %39)
  store i32 %40, i32* %5, align 4
  br label %92

41:                                               ; preds = %4
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.btf_dumper*, %struct.btf_dumper** %6, align 8
  %44 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @btf_dumper_enum(i8* %42, i32 %45)
  store i32 0, i32* %5, align 4
  br label %92

47:                                               ; preds = %4
  %48 = load i8*, i8** %9, align 8
  %49 = load %struct.btf_dumper*, %struct.btf_dumper** %6, align 8
  %50 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.btf_dumper*, %struct.btf_dumper** %6, align 8
  %53 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @btf_dumper_ptr(i8* %48, i32 %51, i32 %54)
  store i32 0, i32* %5, align 4
  br label %92

56:                                               ; preds = %4
  %57 = load %struct.btf_dumper*, %struct.btf_dumper** %6, align 8
  %58 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @jsonw_printf(i32 %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %92

61:                                               ; preds = %4
  %62 = load %struct.btf_dumper*, %struct.btf_dumper** %6, align 8
  %63 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @jsonw_printf(i32 %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %92

68:                                               ; preds = %4, %4, %4, %4
  %69 = load %struct.btf_dumper*, %struct.btf_dumper** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @btf_dumper_modifier(%struct.btf_dumper* %69, i32 %70, i32 %71, i8* %72)
  store i32 %73, i32* %5, align 4
  br label %92

74:                                               ; preds = %4
  %75 = load %struct.btf_dumper*, %struct.btf_dumper** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @btf_dumper_var(%struct.btf_dumper* %75, i32 %76, i32 %77, i8* %78)
  store i32 %79, i32* %5, align 4
  br label %92

80:                                               ; preds = %4
  %81 = load %struct.btf_dumper*, %struct.btf_dumper** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @btf_dumper_datasec(%struct.btf_dumper* %81, i32 %82, i8* %83)
  store i32 %84, i32* %5, align 4
  br label %92

85:                                               ; preds = %4
  %86 = load %struct.btf_dumper*, %struct.btf_dumper** %6, align 8
  %87 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @jsonw_printf(i32 %88, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %85, %80, %74, %68, %61, %56, %47, %41, %36, %31, %20
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.btf_type* @btf__type_by_id(i32, i32) #1

declare dso_local i32 @BTF_INFO_KIND(i32) #1

declare dso_local i32 @btf_dumper_int(%struct.btf_type*, i32, i8*, i32, i32) #1

declare dso_local i32 @btf_dumper_struct(%struct.btf_dumper*, i32, i8*) #1

declare dso_local i32 @btf_dumper_array(%struct.btf_dumper*, i32, i8*) #1

declare dso_local i32 @btf_dumper_enum(i8*, i32) #1

declare dso_local i32 @btf_dumper_ptr(i8*, i32, i32) #1

declare dso_local i32 @jsonw_printf(i32, i8*) #1

declare dso_local i32 @btf_dumper_modifier(%struct.btf_dumper*, i32, i32, i8*) #1

declare dso_local i32 @btf_dumper_var(%struct.btf_dumper*, i32, i32, i8*) #1

declare dso_local i32 @btf_dumper_datasec(%struct.btf_dumper*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
