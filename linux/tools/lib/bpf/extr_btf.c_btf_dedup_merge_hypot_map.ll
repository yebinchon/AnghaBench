; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_dedup_merge_hypot_map.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_dedup_merge_hypot_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dedup = type { i32, i64*, i64*, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@BTF_KIND_FWD = common dso_local global i64 0, align 8
@BTF_KIND_STRUCT = common dso_local global i64 0, align 8
@BTF_KIND_UNION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btf_dedup*)* @btf_dedup_merge_hypot_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btf_dedup_merge_hypot_map(%struct.btf_dedup* %0) #0 {
  %2 = alloca %struct.btf_dedup*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.btf_dedup* %0, %struct.btf_dedup** %2, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %114, %1
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.btf_dedup*, %struct.btf_dedup** %2, align 8
  %13 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %117

16:                                               ; preds = %10
  %17 = load %struct.btf_dedup*, %struct.btf_dedup** %2, align 8
  %18 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %3, align 8
  %24 = load %struct.btf_dedup*, %struct.btf_dedup** %2, align 8
  %25 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %24, i32 0, i32 2
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %4, align 8
  %30 = load %struct.btf_dedup*, %struct.btf_dedup** %2, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @resolve_type_id(%struct.btf_dedup* %30, i64 %31)
  store i64 %32, i64* %7, align 8
  %33 = load %struct.btf_dedup*, %struct.btf_dedup** %2, align 8
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @resolve_type_id(%struct.btf_dedup* %33, i64 %34)
  store i64 %35, i64* %8, align 8
  %36 = load %struct.btf_dedup*, %struct.btf_dedup** %2, align 8
  %37 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %36, i32 0, i32 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @btf_kind(i32 %43)
  store i64 %44, i64* %5, align 8
  %45 = load %struct.btf_dedup*, %struct.btf_dedup** %2, align 8
  %46 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %45, i32 0, i32 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @btf_kind(i32 %52)
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @BTF_KIND_FWD, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %16
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @BTF_KIND_FWD, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.btf_dedup*, %struct.btf_dedup** %2, align 8
  %64 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %63, i32 0, i32 3
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  store i64 %62, i64* %67, align 8
  br label %84

68:                                               ; preds = %57, %16
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* @BTF_KIND_FWD, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @BTF_KIND_FWD, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.btf_dedup*, %struct.btf_dedup** %2, align 8
  %79 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %78, i32 0, i32 3
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  store i64 %77, i64* %82, align 8
  br label %83

83:                                               ; preds = %76, %72, %68
  br label %84

84:                                               ; preds = %83, %61
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* @BTF_KIND_STRUCT, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* @BTF_KIND_UNION, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %113

92:                                               ; preds = %88, %84
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* @BTF_KIND_FWD, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %92
  %97 = load %struct.btf_dedup*, %struct.btf_dedup** %2, align 8
  %98 = load i64, i64* %8, align 8
  %99 = call i64 @is_type_mapped(%struct.btf_dedup* %97, i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  %102 = load %struct.btf_dedup*, %struct.btf_dedup** %2, align 8
  %103 = load i64, i64* %7, align 8
  %104 = call i64 @is_type_mapped(%struct.btf_dedup* %102, i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %101
  %107 = load i64, i64* %8, align 8
  %108 = load %struct.btf_dedup*, %struct.btf_dedup** %2, align 8
  %109 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %108, i32 0, i32 3
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* %7, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  store i64 %107, i64* %112, align 8
  br label %113

113:                                              ; preds = %106, %101, %96, %92, %88
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %10

117:                                              ; preds = %10
  ret void
}

declare dso_local i64 @resolve_type_id(%struct.btf_dedup*, i64) #1

declare dso_local i64 @btf_kind(i32) #1

declare dso_local i64 @is_type_mapped(%struct.btf_dedup*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
