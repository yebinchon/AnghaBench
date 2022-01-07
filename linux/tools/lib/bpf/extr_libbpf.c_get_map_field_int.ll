; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_get_map_field_int.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_get_map_field_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }
%struct.btf_type = type { i32 }
%struct.btf_member = type { i32, i32 }
%struct.btf_array = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"map '%s': attr '%s': expected PTR, got %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"map '%s': attr '%s': type [%u] not found.\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"map '%s': attr '%s': expected ARRAY, got %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.btf*, %struct.btf_type*, %struct.btf_member*, i32*)* @get_map_field_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_map_field_int(i8* %0, %struct.btf* %1, %struct.btf_type* %2, %struct.btf_member* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.btf*, align 8
  %9 = alloca %struct.btf_type*, align 8
  %10 = alloca %struct.btf_member*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.btf_type*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.btf_array*, align 8
  %15 = alloca %struct.btf_type*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.btf* %1, %struct.btf** %8, align 8
  store %struct.btf_type* %2, %struct.btf_type** %9, align 8
  store %struct.btf_member* %3, %struct.btf_member** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.btf*, %struct.btf** %8, align 8
  %17 = load %struct.btf_member*, %struct.btf_member** %10, align 8
  %18 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.btf_type* @skip_mods_and_typedefs(%struct.btf* %16, i32 %19, i32* null)
  store %struct.btf_type* %20, %struct.btf_type** %12, align 8
  %21 = load %struct.btf*, %struct.btf** %8, align 8
  %22 = load %struct.btf_member*, %struct.btf_member** %10, align 8
  %23 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @btf__name_by_offset(%struct.btf* %21, i32 %24)
  store i8* %25, i8** %13, align 8
  %26 = load %struct.btf_type*, %struct.btf_type** %12, align 8
  %27 = call i32 @btf_is_ptr(%struct.btf_type* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %5
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = load %struct.btf_type*, %struct.btf_type** %12, align 8
  %33 = call i32 @btf_kind(%struct.btf_type* %32)
  %34 = call i32 @pr_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %31, i32 %33)
  store i32 0, i32* %6, align 4
  br label %67

35:                                               ; preds = %5
  %36 = load %struct.btf*, %struct.btf** %8, align 8
  %37 = load %struct.btf_type*, %struct.btf_type** %12, align 8
  %38 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.btf_type* @btf__type_by_id(%struct.btf* %36, i32 %39)
  store %struct.btf_type* %40, %struct.btf_type** %15, align 8
  %41 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %42 = icmp ne %struct.btf_type* %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %35
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load %struct.btf_type*, %struct.btf_type** %12, align 8
  %47 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pr_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %44, i8* %45, i32 %48)
  store i32 0, i32* %6, align 4
  br label %67

50:                                               ; preds = %35
  %51 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %52 = call i32 @btf_is_array(%struct.btf_type* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load i8*, i8** %7, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %58 = call i32 @btf_kind(%struct.btf_type* %57)
  %59 = call i32 @pr_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %55, i8* %56, i32 %58)
  store i32 0, i32* %6, align 4
  br label %67

60:                                               ; preds = %50
  %61 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %62 = call %struct.btf_array* @btf_array(%struct.btf_type* %61)
  store %struct.btf_array* %62, %struct.btf_array** %14, align 8
  %63 = load %struct.btf_array*, %struct.btf_array** %14, align 8
  %64 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %11, align 8
  store i32 %65, i32* %66, align 4
  store i32 1, i32* %6, align 4
  br label %67

67:                                               ; preds = %60, %54, %43, %29
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.btf_type* @skip_mods_and_typedefs(%struct.btf*, i32, i32*) #1

declare dso_local i8* @btf__name_by_offset(%struct.btf*, i32) #1

declare dso_local i32 @btf_is_ptr(%struct.btf_type*) #1

declare dso_local i32 @pr_warning(i8*, i8*, i8*, i32) #1

declare dso_local i32 @btf_kind(%struct.btf_type*) #1

declare dso_local %struct.btf_type* @btf__type_by_id(%struct.btf*, i32) #1

declare dso_local i32 @btf_is_array(%struct.btf_type*) #1

declare dso_local %struct.btf_array* @btf_array(%struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
