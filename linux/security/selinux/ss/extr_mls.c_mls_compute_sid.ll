; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_mls.c_mls_compute_sid.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_mls.c_mls_compute_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i32, %struct.class_datum**, %struct.TYPE_2__, i32, i32 }
%struct.class_datum = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.context = type { i32 }
%struct.range_trans = type { i32, i32, i32 }
%struct.mls_range = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mls_compute_sid(%struct.policydb* %0, %struct.context* %1, %struct.context* %2, i32 %3, i32 %4, %struct.context* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.policydb*, align 8
  %10 = alloca %struct.context*, align 8
  %11 = alloca %struct.context*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.context*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.range_trans, align 4
  %17 = alloca %struct.mls_range*, align 8
  %18 = alloca %struct.class_datum*, align 8
  %19 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %9, align 8
  store %struct.context* %1, %struct.context** %10, align 8
  store %struct.context* %2, %struct.context** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.context* %5, %struct.context** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %19, align 4
  %20 = load %struct.policydb*, %struct.policydb** %9, align 8
  %21 = getelementptr inbounds %struct.policydb, %struct.policydb* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %125

25:                                               ; preds = %7
  %26 = load i32, i32* %13, align 4
  switch i32 %26, label %122 [
    i32 134, label %27
    i32 136, label %101
    i32 135, label %118
  ]

27:                                               ; preds = %25
  %28 = load %struct.context*, %struct.context** %10, align 8
  %29 = getelementptr inbounds %struct.context, %struct.context* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.range_trans, %struct.range_trans* %16, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load %struct.context*, %struct.context** %11, align 8
  %33 = getelementptr inbounds %struct.context, %struct.context* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.range_trans, %struct.range_trans* %16, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %12, align 4
  %37 = getelementptr inbounds %struct.range_trans, %struct.range_trans* %16, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load %struct.policydb*, %struct.policydb** %9, align 8
  %39 = getelementptr inbounds %struct.policydb, %struct.policydb* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.mls_range* @hashtab_search(i32 %40, %struct.range_trans* %16)
  store %struct.mls_range* %41, %struct.mls_range** %17, align 8
  %42 = load %struct.mls_range*, %struct.mls_range** %17, align 8
  %43 = icmp ne %struct.mls_range* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %27
  %45 = load %struct.context*, %struct.context** %14, align 8
  %46 = load %struct.mls_range*, %struct.mls_range** %17, align 8
  %47 = call i32 @mls_range_set(%struct.context* %45, %struct.mls_range* %46)
  store i32 %47, i32* %8, align 4
  br label %125

48:                                               ; preds = %27
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %48
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.policydb*, %struct.policydb** %9, align 8
  %54 = getelementptr inbounds %struct.policydb, %struct.policydb* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sle i32 %52, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %51
  %59 = load %struct.policydb*, %struct.policydb** %9, align 8
  %60 = getelementptr inbounds %struct.policydb, %struct.policydb* %59, i32 0, i32 1
  %61 = load %struct.class_datum**, %struct.class_datum*** %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.class_datum*, %struct.class_datum** %61, i64 %64
  %66 = load %struct.class_datum*, %struct.class_datum** %65, align 8
  store %struct.class_datum* %66, %struct.class_datum** %18, align 8
  %67 = load %struct.class_datum*, %struct.class_datum** %18, align 8
  %68 = icmp ne %struct.class_datum* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %58
  %70 = load %struct.class_datum*, %struct.class_datum** %18, align 8
  %71 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %19, align 4
  br label %73

73:                                               ; preds = %69, %58
  br label %74

74:                                               ; preds = %73, %51, %48
  %75 = load i32, i32* %19, align 4
  switch i32 %75, label %100 [
    i32 132, label %76
    i32 133, label %80
    i32 131, label %84
    i32 129, label %88
    i32 130, label %92
    i32 128, label %96
  ]

76:                                               ; preds = %74
  %77 = load %struct.context*, %struct.context** %14, align 8
  %78 = load %struct.context*, %struct.context** %10, align 8
  %79 = call i32 @mls_context_cpy_low(%struct.context* %77, %struct.context* %78)
  store i32 %79, i32* %8, align 4
  br label %125

80:                                               ; preds = %74
  %81 = load %struct.context*, %struct.context** %14, align 8
  %82 = load %struct.context*, %struct.context** %10, align 8
  %83 = call i32 @mls_context_cpy_high(%struct.context* %81, %struct.context* %82)
  store i32 %83, i32* %8, align 4
  br label %125

84:                                               ; preds = %74
  %85 = load %struct.context*, %struct.context** %14, align 8
  %86 = load %struct.context*, %struct.context** %10, align 8
  %87 = call i32 @mls_context_cpy(%struct.context* %85, %struct.context* %86)
  store i32 %87, i32* %8, align 4
  br label %125

88:                                               ; preds = %74
  %89 = load %struct.context*, %struct.context** %14, align 8
  %90 = load %struct.context*, %struct.context** %11, align 8
  %91 = call i32 @mls_context_cpy_low(%struct.context* %89, %struct.context* %90)
  store i32 %91, i32* %8, align 4
  br label %125

92:                                               ; preds = %74
  %93 = load %struct.context*, %struct.context** %14, align 8
  %94 = load %struct.context*, %struct.context** %11, align 8
  %95 = call i32 @mls_context_cpy_high(%struct.context* %93, %struct.context* %94)
  store i32 %95, i32* %8, align 4
  br label %125

96:                                               ; preds = %74
  %97 = load %struct.context*, %struct.context** %14, align 8
  %98 = load %struct.context*, %struct.context** %11, align 8
  %99 = call i32 @mls_context_cpy(%struct.context* %97, %struct.context* %98)
  store i32 %99, i32* %8, align 4
  br label %125

100:                                              ; preds = %74
  br label %101

101:                                              ; preds = %25, %100
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.policydb*, %struct.policydb** %9, align 8
  %104 = getelementptr inbounds %struct.policydb, %struct.policydb* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %102, %105
  br i1 %106, label %110, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* %15, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %114

110:                                              ; preds = %107, %101
  %111 = load %struct.context*, %struct.context** %14, align 8
  %112 = load %struct.context*, %struct.context** %10, align 8
  %113 = call i32 @mls_context_cpy(%struct.context* %111, %struct.context* %112)
  store i32 %113, i32* %8, align 4
  br label %125

114:                                              ; preds = %107
  %115 = load %struct.context*, %struct.context** %14, align 8
  %116 = load %struct.context*, %struct.context** %10, align 8
  %117 = call i32 @mls_context_cpy_low(%struct.context* %115, %struct.context* %116)
  store i32 %117, i32* %8, align 4
  br label %125

118:                                              ; preds = %25
  %119 = load %struct.context*, %struct.context** %14, align 8
  %120 = load %struct.context*, %struct.context** %10, align 8
  %121 = call i32 @mls_context_cpy_low(%struct.context* %119, %struct.context* %120)
  store i32 %121, i32* %8, align 4
  br label %125

122:                                              ; preds = %25
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %122, %118, %114, %110, %96, %92, %88, %84, %80, %76, %44, %24
  %126 = load i32, i32* %8, align 4
  ret i32 %126
}

declare dso_local %struct.mls_range* @hashtab_search(i32, %struct.range_trans*) #1

declare dso_local i32 @mls_range_set(%struct.context*, %struct.mls_range*) #1

declare dso_local i32 @mls_context_cpy_low(%struct.context*, %struct.context*) #1

declare dso_local i32 @mls_context_cpy_high(%struct.context*, %struct.context*) #1

declare dso_local i32 @mls_context_cpy(%struct.context*, %struct.context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
