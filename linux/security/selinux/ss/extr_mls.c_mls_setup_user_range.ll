; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_mls.c_mls_setup_user_range.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_mls.c_mls_setup_user_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i64 }
%struct.user_datum = type { %struct.mls_level, %struct.TYPE_3__ }
%struct.mls_level = type { i32 }
%struct.TYPE_3__ = type { %struct.mls_level* }
%struct.context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mls_level* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mls_setup_user_range(%struct.policydb* %0, %struct.context* %1, %struct.user_datum* %2, %struct.context* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.policydb*, align 8
  %7 = alloca %struct.context*, align 8
  %8 = alloca %struct.user_datum*, align 8
  %9 = alloca %struct.context*, align 8
  %10 = alloca %struct.mls_level*, align 8
  %11 = alloca %struct.mls_level*, align 8
  %12 = alloca %struct.mls_level*, align 8
  %13 = alloca %struct.mls_level*, align 8
  %14 = alloca %struct.mls_level*, align 8
  %15 = alloca %struct.mls_level*, align 8
  %16 = alloca %struct.mls_level*, align 8
  store %struct.policydb* %0, %struct.policydb** %6, align 8
  store %struct.context* %1, %struct.context** %7, align 8
  store %struct.user_datum* %2, %struct.user_datum** %8, align 8
  store %struct.context* %3, %struct.context** %9, align 8
  %17 = load %struct.policydb*, %struct.policydb** %6, align 8
  %18 = getelementptr inbounds %struct.policydb, %struct.policydb* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %116

21:                                               ; preds = %4
  %22 = load %struct.context*, %struct.context** %7, align 8
  %23 = getelementptr inbounds %struct.context, %struct.context* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.mls_level*, %struct.mls_level** %24, align 8
  %26 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %25, i64 0
  store %struct.mls_level* %26, %struct.mls_level** %10, align 8
  %27 = load %struct.context*, %struct.context** %7, align 8
  %28 = getelementptr inbounds %struct.context, %struct.context* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.mls_level*, %struct.mls_level** %29, align 8
  %31 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %30, i64 1
  store %struct.mls_level* %31, %struct.mls_level** %11, align 8
  %32 = load %struct.user_datum*, %struct.user_datum** %8, align 8
  %33 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.mls_level*, %struct.mls_level** %34, align 8
  %36 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %35, i64 0
  store %struct.mls_level* %36, %struct.mls_level** %12, align 8
  %37 = load %struct.user_datum*, %struct.user_datum** %8, align 8
  %38 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.mls_level*, %struct.mls_level** %39, align 8
  %41 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %40, i64 1
  store %struct.mls_level* %41, %struct.mls_level** %13, align 8
  %42 = load %struct.user_datum*, %struct.user_datum** %8, align 8
  %43 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %42, i32 0, i32 0
  store %struct.mls_level* %43, %struct.mls_level** %14, align 8
  %44 = load %struct.context*, %struct.context** %9, align 8
  %45 = getelementptr inbounds %struct.context, %struct.context* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.mls_level*, %struct.mls_level** %46, align 8
  %48 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %47, i64 0
  store %struct.mls_level* %48, %struct.mls_level** %15, align 8
  %49 = load %struct.context*, %struct.context** %9, align 8
  %50 = getelementptr inbounds %struct.context, %struct.context* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.mls_level*, %struct.mls_level** %51, align 8
  %53 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %52, i64 1
  store %struct.mls_level* %53, %struct.mls_level** %16, align 8
  %54 = load %struct.mls_level*, %struct.mls_level** %14, align 8
  %55 = load %struct.mls_level*, %struct.mls_level** %10, align 8
  %56 = load %struct.mls_level*, %struct.mls_level** %11, align 8
  %57 = call i64 @mls_level_between(%struct.mls_level* %54, %struct.mls_level* %55, %struct.mls_level* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %21
  %60 = load %struct.mls_level*, %struct.mls_level** %15, align 8
  %61 = load %struct.mls_level*, %struct.mls_level** %14, align 8
  %62 = bitcast %struct.mls_level* %60 to i8*
  %63 = bitcast %struct.mls_level* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 4, i1 false)
  br label %91

64:                                               ; preds = %21
  %65 = load %struct.mls_level*, %struct.mls_level** %10, align 8
  %66 = load %struct.mls_level*, %struct.mls_level** %14, align 8
  %67 = load %struct.mls_level*, %struct.mls_level** %13, align 8
  %68 = call i64 @mls_level_between(%struct.mls_level* %65, %struct.mls_level* %66, %struct.mls_level* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.mls_level*, %struct.mls_level** %15, align 8
  %72 = load %struct.mls_level*, %struct.mls_level** %10, align 8
  %73 = bitcast %struct.mls_level* %71 to i8*
  %74 = bitcast %struct.mls_level* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 %74, i64 4, i1 false)
  br label %90

75:                                               ; preds = %64
  %76 = load %struct.mls_level*, %struct.mls_level** %11, align 8
  %77 = load %struct.mls_level*, %struct.mls_level** %12, align 8
  %78 = load %struct.mls_level*, %struct.mls_level** %14, align 8
  %79 = call i64 @mls_level_between(%struct.mls_level* %76, %struct.mls_level* %77, %struct.mls_level* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.mls_level*, %struct.mls_level** %15, align 8
  %83 = load %struct.mls_level*, %struct.mls_level** %12, align 8
  %84 = bitcast %struct.mls_level* %82 to i8*
  %85 = bitcast %struct.mls_level* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 %85, i64 4, i1 false)
  br label %89

86:                                               ; preds = %75
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %5, align 4
  br label %117

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %70
  br label %91

91:                                               ; preds = %90, %59
  %92 = load %struct.mls_level*, %struct.mls_level** %13, align 8
  %93 = load %struct.mls_level*, %struct.mls_level** %11, align 8
  %94 = call i64 @mls_level_dom(%struct.mls_level* %92, %struct.mls_level* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.mls_level*, %struct.mls_level** %16, align 8
  %98 = load %struct.mls_level*, %struct.mls_level** %11, align 8
  %99 = bitcast %struct.mls_level* %97 to i8*
  %100 = bitcast %struct.mls_level* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 %100, i64 4, i1 false)
  br label %115

101:                                              ; preds = %91
  %102 = load %struct.mls_level*, %struct.mls_level** %11, align 8
  %103 = load %struct.mls_level*, %struct.mls_level** %13, align 8
  %104 = call i64 @mls_level_dom(%struct.mls_level* %102, %struct.mls_level* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.mls_level*, %struct.mls_level** %16, align 8
  %108 = load %struct.mls_level*, %struct.mls_level** %13, align 8
  %109 = bitcast %struct.mls_level* %107 to i8*
  %110 = bitcast %struct.mls_level* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %109, i8* align 4 %110, i64 4, i1 false)
  br label %114

111:                                              ; preds = %101
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %5, align 4
  br label %117

114:                                              ; preds = %106
  br label %115

115:                                              ; preds = %114, %96
  br label %116

116:                                              ; preds = %115, %4
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %116, %111, %86
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i64 @mls_level_between(%struct.mls_level*, %struct.mls_level*, %struct.mls_level*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mls_level_dom(%struct.mls_level*, %struct.mls_level*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
