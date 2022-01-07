; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_core_fields_are_compat.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_core_fields_are_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }
%struct.btf_type = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"unexpected kind %d relocated, local [%d], target [%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf*, i32, %struct.btf*, i32)* @bpf_core_fields_are_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_core_fields_are_compat(%struct.btf* %0, i32 %1, %struct.btf* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.btf_type*, align 8
  %11 = alloca %struct.btf_type*, align 8
  store %struct.btf* %0, %struct.btf** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.btf* %2, %struct.btf** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %12

12:                                               ; preds = %81, %4
  %13 = load %struct.btf*, %struct.btf** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.btf_type* @skip_mods_and_typedefs(%struct.btf* %13, i32 %14, i32* %7)
  store %struct.btf_type* %15, %struct.btf_type** %10, align 8
  %16 = load %struct.btf*, %struct.btf** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call %struct.btf_type* @skip_mods_and_typedefs(%struct.btf* %16, i32 %17, i32* %9)
  store %struct.btf_type* %18, %struct.btf_type** %11, align 8
  %19 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %20 = icmp ne %struct.btf_type* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load %struct.btf_type*, %struct.btf_type** %11, align 8
  %23 = icmp ne %struct.btf_type* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %12
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %96

27:                                               ; preds = %21
  %28 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %29 = call i64 @btf_is_composite(%struct.btf_type* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.btf_type*, %struct.btf_type** %11, align 8
  %33 = call i64 @btf_is_composite(%struct.btf_type* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %96

36:                                               ; preds = %31, %27
  %37 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %38 = call i32 @btf_kind(%struct.btf_type* %37)
  %39 = load %struct.btf_type*, %struct.btf_type** %11, align 8
  %40 = call i32 @btf_kind(%struct.btf_type* %39)
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %96

43:                                               ; preds = %36
  %44 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %45 = call i32 @btf_kind(%struct.btf_type* %44)
  switch i32 %45, label %90 [
    i32 130, label %46
    i32 128, label %46
    i32 131, label %47
    i32 129, label %56
    i32 132, label %81
  ]

46:                                               ; preds = %43, %43
  store i32 1, i32* %5, align 4
  br label %96

47:                                               ; preds = %43
  %48 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %49 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.btf_type*, %struct.btf_type** %11, align 8
  %52 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %50, %53
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %5, align 4
  br label %96

56:                                               ; preds = %43
  %57 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %58 = call i32 @btf_int_offset(%struct.btf_type* %57)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %56
  %61 = load %struct.btf_type*, %struct.btf_type** %11, align 8
  %62 = call i32 @btf_int_offset(%struct.btf_type* %61)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %66 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.btf_type*, %struct.btf_type** %11, align 8
  %69 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %74 = call i32 @btf_int_bits(%struct.btf_type* %73)
  %75 = load %struct.btf_type*, %struct.btf_type** %11, align 8
  %76 = call i32 @btf_int_bits(%struct.btf_type* %75)
  %77 = icmp eq i32 %74, %76
  br label %78

78:                                               ; preds = %72, %64, %60, %56
  %79 = phi i1 [ false, %64 ], [ false, %60 ], [ false, %56 ], [ %77, %72 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %5, align 4
  br label %96

81:                                               ; preds = %43
  %82 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %83 = call %struct.TYPE_2__* @btf_array(%struct.btf_type* %82)
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %7, align 4
  %86 = load %struct.btf_type*, %struct.btf_type** %11, align 8
  %87 = call %struct.TYPE_2__* @btf_array(%struct.btf_type* %86)
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %9, align 4
  br label %12

90:                                               ; preds = %43
  %91 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %92 = call i32 @btf_kind(%struct.btf_type* %91)
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @pr_warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %93, i32 %94)
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %90, %78, %47, %46, %42, %35, %24
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.btf_type* @skip_mods_and_typedefs(%struct.btf*, i32, i32*) #1

declare dso_local i64 @btf_is_composite(%struct.btf_type*) #1

declare dso_local i32 @btf_kind(%struct.btf_type*) #1

declare dso_local i32 @btf_int_offset(%struct.btf_type*) #1

declare dso_local i32 @btf_int_bits(%struct.btf_type*) #1

declare dso_local %struct.TYPE_2__* @btf_array(%struct.btf_type*) #1

declare dso_local i32 @pr_warning(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
