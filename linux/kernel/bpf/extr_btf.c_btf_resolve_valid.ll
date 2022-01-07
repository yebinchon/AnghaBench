; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_resolve_valid.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_resolve_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { %struct.btf* }
%struct.btf = type { i64*, i32* }
%struct.btf_type = type { i32 }
%struct.btf_array = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*, %struct.btf_type*, i64)* @btf_resolve_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_resolve_valid(%struct.btf_verifier_env* %0, %struct.btf_type* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btf_verifier_env*, align 8
  %6 = alloca %struct.btf_type*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.btf*, align 8
  %9 = alloca %struct.btf_array*, align 8
  %10 = alloca %struct.btf_type*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %5, align 8
  store %struct.btf_type* %1, %struct.btf_type** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %14 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %13, i32 0, i32 0
  %15 = load %struct.btf*, %struct.btf** %14, align 8
  store %struct.btf* %15, %struct.btf** %8, align 8
  %16 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @env_type_is_resolved(%struct.btf_verifier_env* %16, i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %117

21:                                               ; preds = %3
  %22 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %23 = call i64 @btf_type_is_struct(%struct.btf_type* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %27 = call i64 @btf_type_is_datasec(%struct.btf_type* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %25, %21
  %30 = load %struct.btf*, %struct.btf** %8, align 8
  %31 = getelementptr inbounds %struct.btf, %struct.btf* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %29
  %38 = load %struct.btf*, %struct.btf** %8, align 8
  %39 = getelementptr inbounds %struct.btf, %struct.btf* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %37, %29
  %47 = phi i1 [ false, %29 ], [ %45, %37 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %4, align 4
  br label %117

49:                                               ; preds = %25
  %50 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %51 = call i64 @btf_type_is_modifier(%struct.btf_type* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %55 = call i64 @btf_type_is_ptr(%struct.btf_type* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %59 = call i64 @btf_type_is_var(%struct.btf_type* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %57, %53, %49
  %62 = load %struct.btf*, %struct.btf** %8, align 8
  %63 = call %struct.btf_type* @btf_type_id_resolve(%struct.btf* %62, i64* %7)
  store %struct.btf_type* %63, %struct.btf_type** %6, align 8
  %64 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %65 = icmp ne %struct.btf_type* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %68 = call i64 @btf_type_is_modifier(%struct.btf_type* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %66
  %71 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %72 = call i64 @btf_type_is_var(%struct.btf_type* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %76 = call i64 @btf_type_is_datasec(%struct.btf_type* %75)
  %77 = icmp ne i64 %76, 0
  %78 = xor i1 %77, true
  br label %79

79:                                               ; preds = %74, %70, %66, %61
  %80 = phi i1 [ false, %70 ], [ false, %66 ], [ false, %61 ], [ %78, %74 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %4, align 4
  br label %117

82:                                               ; preds = %57
  %83 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %84 = call i64 @btf_type_is_array(%struct.btf_type* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %116

86:                                               ; preds = %82
  %87 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %88 = call %struct.btf_array* @btf_type_array(%struct.btf_type* %87)
  store %struct.btf_array* %88, %struct.btf_array** %9, align 8
  %89 = load %struct.btf_array*, %struct.btf_array** %9, align 8
  %90 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %11, align 8
  %92 = load %struct.btf*, %struct.btf** %8, align 8
  %93 = call %struct.btf_type* @btf_type_id_size(%struct.btf* %92, i64* %11, i64* %12)
  store %struct.btf_type* %93, %struct.btf_type** %10, align 8
  %94 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %95 = icmp ne %struct.btf_type* %94, null
  br i1 %95, label %96, label %113

96:                                               ; preds = %86
  %97 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %98 = call i64 @btf_type_is_modifier(%struct.btf_type* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %113, label %100

100:                                              ; preds = %96
  %101 = load %struct.btf_array*, %struct.btf_array** %9, align 8
  %102 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %12, align 8
  %105 = mul i64 %103, %104
  %106 = load %struct.btf*, %struct.btf** %8, align 8
  %107 = getelementptr inbounds %struct.btf, %struct.btf* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %105, %111
  br label %113

113:                                              ; preds = %100, %96, %86
  %114 = phi i1 [ false, %96 ], [ false, %86 ], [ %112, %100 ]
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %4, align 4
  br label %117

116:                                              ; preds = %82
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %116, %113, %79, %46, %20
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @env_type_is_resolved(%struct.btf_verifier_env*, i64) #1

declare dso_local i64 @btf_type_is_struct(%struct.btf_type*) #1

declare dso_local i64 @btf_type_is_datasec(%struct.btf_type*) #1

declare dso_local i64 @btf_type_is_modifier(%struct.btf_type*) #1

declare dso_local i64 @btf_type_is_ptr(%struct.btf_type*) #1

declare dso_local i64 @btf_type_is_var(%struct.btf_type*) #1

declare dso_local %struct.btf_type* @btf_type_id_resolve(%struct.btf*, i64*) #1

declare dso_local i64 @btf_type_is_array(%struct.btf_type*) #1

declare dso_local %struct.btf_array* @btf_type_array(%struct.btf_type*) #1

declare dso_local %struct.btf_type* @btf_type_id_size(%struct.btf*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
