; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6core.c_q6core_get_svc_api_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6core.c_q6core_get_svc_api_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_7__ = type { i32, %struct.avcs_svc_info* }
%struct.avcs_svc_info = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.avcs_svc_api_info* }
%struct.avcs_svc_api_info = type { i32, i64, i32 }
%struct.q6core_svc_api_info = type { i64, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@g_core = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @q6core_get_svc_api_info(i32 %0, %struct.q6core_svc_api_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.q6core_svc_api_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.avcs_svc_api_info*, align 8
  %9 = alloca %struct.avcs_svc_info*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.q6core_svc_api_info* %1, %struct.q6core_svc_api_info** %5, align 8
  %10 = load i32, i32* @ENOTSUPP, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_core, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.q6core_svc_api_info*, %struct.q6core_svc_api_info** %5, align 8
  %16 = icmp ne %struct.q6core_svc_api_info* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %129

18:                                               ; preds = %14
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_core, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_core, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %18
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_core, align 8
  %28 = call i32 @q6core_get_fwk_versions(%struct.TYPE_8__* %27)
  %29 = load i32, i32* @ENOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_core, align 8
  %34 = call i32 @q6core_get_svc_versions(%struct.TYPE_8__* %33)
  br label %35

35:                                               ; preds = %32, %26
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_core, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %18
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_core, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %82

43:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %78, %43
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_core, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %45, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %44
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_core, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load %struct.avcs_svc_api_info*, %struct.avcs_svc_api_info** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.avcs_svc_api_info, %struct.avcs_svc_api_info* %57, i64 %59
  store %struct.avcs_svc_api_info* %60, %struct.avcs_svc_api_info** %8, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.avcs_svc_api_info*, %struct.avcs_svc_api_info** %8, align 8
  %63 = getelementptr inbounds %struct.avcs_svc_api_info, %struct.avcs_svc_api_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  br label %78

67:                                               ; preds = %52
  %68 = load %struct.avcs_svc_api_info*, %struct.avcs_svc_api_info** %8, align 8
  %69 = getelementptr inbounds %struct.avcs_svc_api_info, %struct.avcs_svc_api_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.q6core_svc_api_info*, %struct.q6core_svc_api_info** %5, align 8
  %72 = getelementptr inbounds %struct.q6core_svc_api_info, %struct.q6core_svc_api_info* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.avcs_svc_api_info*, %struct.avcs_svc_api_info** %8, align 8
  %74 = getelementptr inbounds %struct.avcs_svc_api_info, %struct.avcs_svc_api_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.q6core_svc_api_info*, %struct.q6core_svc_api_info** %5, align 8
  %77 = getelementptr inbounds %struct.q6core_svc_api_info, %struct.q6core_svc_api_info* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  store i32 0, i32* %7, align 4
  br label %81

78:                                               ; preds = %66
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %44

81:                                               ; preds = %67, %44
  br label %124

82:                                               ; preds = %38
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_core, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %123

87:                                               ; preds = %82
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %119, %87
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_core, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %89, %94
  br i1 %95, label %96, label %122

96:                                               ; preds = %88
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_core, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load %struct.avcs_svc_info*, %struct.avcs_svc_info** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.avcs_svc_info, %struct.avcs_svc_info* %101, i64 %103
  store %struct.avcs_svc_info* %104, %struct.avcs_svc_info** %9, align 8
  %105 = load i32, i32* %4, align 4
  %106 = load %struct.avcs_svc_info*, %struct.avcs_svc_info** %9, align 8
  %107 = getelementptr inbounds %struct.avcs_svc_info, %struct.avcs_svc_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %105, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %96
  br label %119

111:                                              ; preds = %96
  %112 = load %struct.avcs_svc_info*, %struct.avcs_svc_info** %9, align 8
  %113 = getelementptr inbounds %struct.avcs_svc_info, %struct.avcs_svc_info* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.q6core_svc_api_info*, %struct.q6core_svc_api_info** %5, align 8
  %116 = getelementptr inbounds %struct.q6core_svc_api_info, %struct.q6core_svc_api_info* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load %struct.q6core_svc_api_info*, %struct.q6core_svc_api_info** %5, align 8
  %118 = getelementptr inbounds %struct.q6core_svc_api_info, %struct.q6core_svc_api_info* %117, i32 0, i32 0
  store i64 0, i64* %118, align 8
  store i32 0, i32* %7, align 4
  br label %122

119:                                              ; preds = %110
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  br label %88

122:                                              ; preds = %111, %88
  br label %123

123:                                              ; preds = %122, %82
  br label %124

124:                                              ; preds = %123, %81
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_core, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = call i32 @mutex_unlock(i32* %126)
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %124, %17
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @q6core_get_fwk_versions(%struct.TYPE_8__*) #1

declare dso_local i32 @q6core_get_svc_versions(%struct.TYPE_8__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
