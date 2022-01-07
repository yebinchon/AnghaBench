; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_core_spec_match.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_core_spec_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }
%struct.bpf_core_spec = type { i32, i64, i64*, i32, %struct.btf*, %struct.bpf_core_accessor* }
%struct.bpf_core_accessor = type { i64, i32*, i32 }
%struct.btf_type = type { i32 }
%struct.btf_array = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BPF_CORE_SPEC_MAX_LEN = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_core_spec*, %struct.btf*, i32, %struct.bpf_core_spec*)* @bpf_core_spec_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_core_spec_match(%struct.bpf_core_spec* %0, %struct.btf* %1, i32 %2, %struct.bpf_core_spec* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_core_spec*, align 8
  %7 = alloca %struct.btf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bpf_core_spec*, align 8
  %10 = alloca %struct.btf_type*, align 8
  %11 = alloca %struct.bpf_core_accessor*, align 8
  %12 = alloca %struct.bpf_core_accessor*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.btf_array*, align 8
  store %struct.bpf_core_spec* %0, %struct.bpf_core_spec** %6, align 8
  store %struct.btf* %1, %struct.btf** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.bpf_core_spec* %3, %struct.bpf_core_spec** %9, align 8
  %17 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %18 = call i32 @memset(%struct.bpf_core_spec* %17, i32 0, i32 48)
  %19 = load %struct.btf*, %struct.btf** %7, align 8
  %20 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %21 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %20, i32 0, i32 4
  store %struct.btf* %19, %struct.btf** %21, align 8
  %22 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %6, align 8
  %23 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %22, i32 0, i32 5
  %24 = load %struct.bpf_core_accessor*, %struct.bpf_core_accessor** %23, align 8
  %25 = getelementptr inbounds %struct.bpf_core_accessor, %struct.bpf_core_accessor* %24, i64 0
  store %struct.bpf_core_accessor* %25, %struct.bpf_core_accessor** %11, align 8
  %26 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %27 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %26, i32 0, i32 5
  %28 = load %struct.bpf_core_accessor*, %struct.bpf_core_accessor** %27, align 8
  %29 = getelementptr inbounds %struct.bpf_core_accessor, %struct.bpf_core_accessor* %28, i64 0
  store %struct.bpf_core_accessor* %29, %struct.bpf_core_accessor** %12, align 8
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %155, %4
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %6, align 8
  %33 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %162

36:                                               ; preds = %30
  %37 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %38 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %37, i32 0, i32 4
  %39 = load %struct.btf*, %struct.btf** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call %struct.btf_type* @skip_mods_and_typedefs(%struct.btf* %39, i32 %40, i32* %8)
  store %struct.btf_type* %41, %struct.btf_type** %10, align 8
  %42 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %43 = icmp ne %struct.btf_type* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %163

47:                                               ; preds = %36
  %48 = load %struct.bpf_core_accessor*, %struct.bpf_core_accessor** %11, align 8
  %49 = getelementptr inbounds %struct.bpf_core_accessor, %struct.bpf_core_accessor* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %6, align 8
  %54 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %53, i32 0, i32 4
  %55 = load %struct.btf*, %struct.btf** %54, align 8
  %56 = load %struct.bpf_core_accessor*, %struct.bpf_core_accessor** %11, align 8
  %57 = load %struct.btf*, %struct.btf** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %60 = call i32 @bpf_core_match_member(%struct.btf* %55, %struct.bpf_core_accessor* %56, %struct.btf* %57, i32 %58, %struct.bpf_core_spec* %59, i32* %8)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i32, i32* %15, align 4
  store i32 %64, i32* %5, align 4
  br label %163

65:                                               ; preds = %52
  br label %154

66:                                               ; preds = %47
  %67 = load i32, i32* %13, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %96

69:                                               ; preds = %66
  %70 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %71 = call i32 @btf_is_array(%struct.btf_type* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %163

74:                                               ; preds = %69
  %75 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %76 = call %struct.btf_array* @btf_array(%struct.btf_type* %75)
  store %struct.btf_array* %76, %struct.btf_array** %16, align 8
  %77 = load %struct.bpf_core_accessor*, %struct.bpf_core_accessor** %11, align 8
  %78 = getelementptr inbounds %struct.bpf_core_accessor, %struct.bpf_core_accessor* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.btf_array*, %struct.btf_array** %16, align 8
  %81 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  br label %163

85:                                               ; preds = %74
  %86 = load %struct.btf*, %struct.btf** %7, align 8
  %87 = load %struct.btf_array*, %struct.btf_array** %16, align 8
  %88 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call %struct.btf_type* @skip_mods_and_typedefs(%struct.btf* %86, i32 %89, i32* %8)
  %91 = icmp ne %struct.btf_type* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %163

95:                                               ; preds = %85
  br label %96

96:                                               ; preds = %95, %66
  %97 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %98 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @BPF_CORE_SPEC_MAX_LEN, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* @E2BIG, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %163

105:                                              ; preds = %96
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.bpf_core_accessor*, %struct.bpf_core_accessor** %12, align 8
  %108 = getelementptr inbounds %struct.bpf_core_accessor, %struct.bpf_core_accessor* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.bpf_core_accessor*, %struct.bpf_core_accessor** %11, align 8
  %110 = getelementptr inbounds %struct.bpf_core_accessor, %struct.bpf_core_accessor* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.bpf_core_accessor*, %struct.bpf_core_accessor** %12, align 8
  %113 = getelementptr inbounds %struct.bpf_core_accessor, %struct.bpf_core_accessor* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.bpf_core_accessor*, %struct.bpf_core_accessor** %12, align 8
  %115 = getelementptr inbounds %struct.bpf_core_accessor, %struct.bpf_core_accessor* %114, i32 0, i32 1
  store i32* null, i32** %115, align 8
  %116 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %117 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  %120 = load %struct.bpf_core_accessor*, %struct.bpf_core_accessor** %12, align 8
  %121 = getelementptr inbounds %struct.bpf_core_accessor, %struct.bpf_core_accessor* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %124 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %123, i32 0, i32 2
  %125 = load i64*, i64** %124, align 8
  %126 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %127 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds i64, i64* %125, i64 %128
  store i64 %122, i64* %129, align 8
  %130 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %131 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %131, align 8
  %134 = load %struct.btf*, %struct.btf** %7, align 8
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @btf__resolve_size(%struct.btf* %134, i32 %135)
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %105
  %140 = load i32, i32* %14, align 4
  store i32 %140, i32* %5, align 4
  br label %163

141:                                              ; preds = %105
  %142 = load %struct.bpf_core_accessor*, %struct.bpf_core_accessor** %11, align 8
  %143 = getelementptr inbounds %struct.bpf_core_accessor, %struct.bpf_core_accessor* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = mul nsw i64 %144, %146
  %148 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %9, align 8
  %149 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %151, %147
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %149, align 8
  br label %154

154:                                              ; preds = %141, %65
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %13, align 4
  %158 = load %struct.bpf_core_accessor*, %struct.bpf_core_accessor** %11, align 8
  %159 = getelementptr inbounds %struct.bpf_core_accessor, %struct.bpf_core_accessor* %158, i32 1
  store %struct.bpf_core_accessor* %159, %struct.bpf_core_accessor** %11, align 8
  %160 = load %struct.bpf_core_accessor*, %struct.bpf_core_accessor** %12, align 8
  %161 = getelementptr inbounds %struct.bpf_core_accessor, %struct.bpf_core_accessor* %160, i32 1
  store %struct.bpf_core_accessor* %161, %struct.bpf_core_accessor** %12, align 8
  br label %30

162:                                              ; preds = %30
  store i32 1, i32* %5, align 4
  br label %163

163:                                              ; preds = %162, %139, %102, %92, %84, %73, %63, %44
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local i32 @memset(%struct.bpf_core_spec*, i32, i32) #1

declare dso_local %struct.btf_type* @skip_mods_and_typedefs(%struct.btf*, i32, i32*) #1

declare dso_local i32 @bpf_core_match_member(%struct.btf*, %struct.bpf_core_accessor*, %struct.btf*, i32, %struct.bpf_core_spec*, i32*) #1

declare dso_local i32 @btf_is_array(%struct.btf_type*) #1

declare dso_local %struct.btf_array* @btf_array(%struct.btf_type*) #1

declare dso_local i32 @btf__resolve_size(%struct.btf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
