; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__init_user_btf_maps.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__init_user_btf_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.btf_type = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"failed to get Elf_Data from map section %d (%s)\0A\00", align 1
@MAPS_ELF_SEC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"DATASEC '%s' not found.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_object*, i32)* @bpf_object__init_user_btf_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_object__init_user_btf_maps(%struct.bpf_object* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btf_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.btf_type*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.bpf_object* %0, %struct.bpf_object** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.btf_type* null, %struct.btf_type** %6, align 8
  %15 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %16 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %123

21:                                               ; preds = %2
  %22 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %23 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %27 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @elf_getscn(i32 %25, i32 %29)
  store i32* %30, i32** %14, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i32*, i32** %14, align 8
  %35 = call i32* @elf_getdata(i32* %34, i32* null)
  store i32* %35, i32** %13, align 8
  br label %36

36:                                               ; preds = %33, %21
  %37 = load i32*, i32** %14, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32*, i32** %13, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %44 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MAPS_ELF_SEC, align 4
  %48 = call i32 (i8*, i32, ...) @pr_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %123

51:                                               ; preds = %39
  %52 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %53 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @btf__get_nr_types(i32 %54)
  store i32 %55, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %56

56:                                               ; preds = %85, %51
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %88

60:                                               ; preds = %56
  %61 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %62 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call %struct.btf_type* @btf__type_by_id(i32 %63, i32 %64)
  store %struct.btf_type* %65, %struct.btf_type** %11, align 8
  %66 = load %struct.btf_type*, %struct.btf_type** %11, align 8
  %67 = call i32 @btf_is_datasec(%struct.btf_type* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %60
  br label %85

70:                                               ; preds = %60
  %71 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %72 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.btf_type*, %struct.btf_type** %11, align 8
  %75 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @btf__name_by_offset(i32 %73, i32 %76)
  store i8* %77, i8** %12, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load i32, i32* @MAPS_ELF_SEC, align 4
  %80 = call i64 @strcmp(i8* %78, i32 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %70
  %83 = load %struct.btf_type*, %struct.btf_type** %11, align 8
  store %struct.btf_type* %83, %struct.btf_type** %6, align 8
  br label %88

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %84, %69
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %56

88:                                               ; preds = %82, %56
  %89 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %90 = icmp ne %struct.btf_type* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* @MAPS_ELF_SEC, align 4
  %93 = call i32 (i8*, i32, ...) @pr_warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @ENOENT, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %123

96:                                               ; preds = %88
  %97 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %98 = call i32 @btf_vlen(%struct.btf_type* %97)
  store i32 %98, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %119, %96
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %122

103:                                              ; preds = %99
  %104 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %105 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %108 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %13, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @bpf_object__init_user_btf_map(%struct.bpf_object* %104, %struct.btf_type* %105, i32 %106, i32 %110, i32* %111, i32 %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %103
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %3, align 4
  br label %123

118:                                              ; preds = %103
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %99

122:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %116, %91, %42, %20
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32* @elf_getscn(i32, i32) #1

declare dso_local i32* @elf_getdata(i32*, i32*) #1

declare dso_local i32 @pr_warning(i8*, i32, ...) #1

declare dso_local i32 @btf__get_nr_types(i32) #1

declare dso_local %struct.btf_type* @btf__type_by_id(i32, i32) #1

declare dso_local i32 @btf_is_datasec(%struct.btf_type*) #1

declare dso_local i8* @btf__name_by_offset(i32, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @btf_vlen(%struct.btf_type*) #1

declare dso_local i32 @bpf_object__init_user_btf_map(%struct.bpf_object*, %struct.btf_type*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
