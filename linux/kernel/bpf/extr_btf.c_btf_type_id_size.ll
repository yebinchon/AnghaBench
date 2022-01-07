; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_type_id_size.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_type_id_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_type = type { i64 }
%struct.btf = type { i64*, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btf_type* @btf_type_id_size(%struct.btf* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.btf_type*, align 8
  %5 = alloca %struct.btf*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.btf_type*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.btf* %0, %struct.btf** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i64*, i64** %6, align 8
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %13 = load %struct.btf*, %struct.btf** %5, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call %struct.btf_type* @btf_type_by_id(%struct.btf* %13, i64 %14)
  store %struct.btf_type* %15, %struct.btf_type** %8, align 8
  %16 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %17 = call i64 @btf_type_nosize_or_null(%struct.btf_type* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store %struct.btf_type* null, %struct.btf_type** %4, align 8
  br label %114

20:                                               ; preds = %3
  %21 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %22 = call i64 @btf_type_has_size(%struct.btf_type* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %26 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  br label %104

28:                                               ; preds = %20
  %29 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %30 = call i64 @btf_type_is_array(%struct.btf_type* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.btf*, %struct.btf** %5, align 8
  %34 = getelementptr inbounds %struct.btf, %struct.btf* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %10, align 8
  br label %103

39:                                               ; preds = %28
  %40 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %41 = call i64 @btf_type_is_ptr(%struct.btf_type* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i64 8, i64* %10, align 8
  br label %102

44:                                               ; preds = %39
  %45 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %46 = call i32 @btf_type_is_modifier(%struct.btf_type* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %50 = call i32 @btf_type_is_var(%struct.btf_type* %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %48, %44
  %54 = phi i1 [ false, %44 ], [ %52, %48 ]
  %55 = zext i1 %54 to i32
  %56 = call i64 @WARN_ON_ONCE(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store %struct.btf_type* null, %struct.btf_type** %4, align 8
  br label %114

59:                                               ; preds = %53
  %60 = load %struct.btf*, %struct.btf** %5, align 8
  %61 = getelementptr inbounds %struct.btf, %struct.btf* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %9, align 8
  %66 = load %struct.btf*, %struct.btf** %5, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call %struct.btf_type* @btf_type_by_id(%struct.btf* %66, i64 %67)
  store %struct.btf_type* %68, %struct.btf_type** %8, align 8
  %69 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %70 = call i64 @btf_type_nosize_or_null(%struct.btf_type* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %59
  store %struct.btf_type* null, %struct.btf_type** %4, align 8
  br label %114

73:                                               ; preds = %59
  %74 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %75 = call i64 @btf_type_has_size(%struct.btf_type* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %79 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %10, align 8
  br label %100

81:                                               ; preds = %73
  %82 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %83 = call i64 @btf_type_is_array(%struct.btf_type* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load %struct.btf*, %struct.btf** %5, align 8
  %87 = getelementptr inbounds %struct.btf, %struct.btf* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %10, align 8
  br label %99

92:                                               ; preds = %81
  %93 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %94 = call i64 @btf_type_is_ptr(%struct.btf_type* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i64 8, i64* %10, align 8
  br label %98

97:                                               ; preds = %92
  store %struct.btf_type* null, %struct.btf_type** %4, align 8
  br label %114

98:                                               ; preds = %96
  br label %99

99:                                               ; preds = %98, %85
  br label %100

100:                                              ; preds = %99, %77
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101, %43
  br label %103

103:                                              ; preds = %102, %32
  br label %104

104:                                              ; preds = %103, %24
  %105 = load i64, i64* %9, align 8
  %106 = load i64*, i64** %6, align 8
  store i64 %105, i64* %106, align 8
  %107 = load i64*, i64** %7, align 8
  %108 = icmp ne i64* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i64, i64* %10, align 8
  %111 = load i64*, i64** %7, align 8
  store i64 %110, i64* %111, align 8
  br label %112

112:                                              ; preds = %109, %104
  %113 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  store %struct.btf_type* %113, %struct.btf_type** %4, align 8
  br label %114

114:                                              ; preds = %112, %97, %72, %58, %19
  %115 = load %struct.btf_type*, %struct.btf_type** %4, align 8
  ret %struct.btf_type* %115
}

declare dso_local %struct.btf_type* @btf_type_by_id(%struct.btf*, i64) #1

declare dso_local i64 @btf_type_nosize_or_null(%struct.btf_type*) #1

declare dso_local i64 @btf_type_has_size(%struct.btf_type*) #1

declare dso_local i64 @btf_type_is_array(%struct.btf_type*) #1

declare dso_local i64 @btf_type_is_ptr(%struct.btf_type*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @btf_type_is_modifier(%struct.btf_type*) #1

declare dso_local i32 @btf_type_is_var(%struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
