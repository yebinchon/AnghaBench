; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf__resolve_size.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf__resolve_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }
%struct.btf_array = type { i32, i32 }
%struct.btf_type = type { i32, i32 }

@MAX_RESOLVE_DEPTH = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btf__resolve_size(%struct.btf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btf_array*, align 8
  %7 = alloca %struct.btf_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.btf* %0, %struct.btf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %11 = load %struct.btf*, %struct.btf** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.btf_type* @btf__type_by_id(%struct.btf* %11, i32 %12)
  store %struct.btf_type* %13, %struct.btf_type** %7, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %69, %2
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @MAX_RESOLVE_DEPTH, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %20 = call i32 @btf_type_is_void_or_null(%struct.btf_type* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi i1 [ false, %14 ], [ %22, %18 ]
  br i1 %24, label %25, label %72

25:                                               ; preds = %23
  %26 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %27 = call i32 @btf_kind(%struct.btf_type* %26)
  switch i32 %27, label %62 [
    i32 135, label %28
    i32 132, label %28
    i32 130, label %28
    i32 136, label %28
    i32 137, label %28
    i32 134, label %32
    i32 131, label %33
    i32 128, label %33
    i32 138, label %33
    i32 133, label %33
    i32 129, label %33
    i32 139, label %37
  ]

28:                                               ; preds = %25, %25, %25, %25, %25
  %29 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %30 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  br label %79

32:                                               ; preds = %25
  store i32 8, i32* %9, align 4
  br label %79

33:                                               ; preds = %25, %25, %25, %25, %25
  %34 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %35 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  br label %65

37:                                               ; preds = %25
  %38 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %39 = call %struct.btf_array* @btf_array(%struct.btf_type* %38)
  store %struct.btf_array* %39, %struct.btf_array** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.btf_array*, %struct.btf_array** %6, align 8
  %44 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @UINT32_MAX, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sdiv i32 %46, %47
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @E2BIG, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %95

53:                                               ; preds = %42, %37
  %54 = load %struct.btf_array*, %struct.btf_array** %6, align 8
  %55 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = mul nsw i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load %struct.btf_array*, %struct.btf_array** %6, align 8
  %60 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %5, align 4
  br label %65

62:                                               ; preds = %25
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %95

65:                                               ; preds = %53, %33
  %66 = load %struct.btf*, %struct.btf** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call %struct.btf_type* @btf__type_by_id(%struct.btf* %66, i32 %67)
  store %struct.btf_type* %68, %struct.btf_type** %7, align 8
  br label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %14

72:                                               ; preds = %23
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %95

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %32, %28
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @UINT32_MAX, align 4
  %85 = load i32, i32* %8, align 4
  %86 = sdiv i32 %84, %85
  %87 = icmp sgt i32 %83, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32, i32* @E2BIG, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %95

91:                                               ; preds = %82, %79
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = mul nsw i32 %92, %93
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %91, %88, %75, %62, %50
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.btf_type* @btf__type_by_id(%struct.btf*, i32) #1

declare dso_local i32 @btf_type_is_void_or_null(%struct.btf_type*) #1

declare dso_local i32 @btf_kind(%struct.btf_type*) #1

declare dso_local %struct.btf_array* @btf_array(%struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
