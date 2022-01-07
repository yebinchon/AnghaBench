; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_target.c_target__validate.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_target.c_target__validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target = type { i32, i32, i32*, i32*, i64, i64 }

@TARGET_ERRNO__SUCCESS = common dso_local global i32 0, align 4
@TARGET_ERRNO__PID_OVERRIDE_CPU = common dso_local global i32 0, align 4
@TARGET_ERRNO__PID_OVERRIDE_UID = common dso_local global i32 0, align 4
@TARGET_ERRNO__UID_OVERRIDE_CPU = common dso_local global i32 0, align 4
@TARGET_ERRNO__PID_OVERRIDE_SYSTEM = common dso_local global i32 0, align 4
@TARGET_ERRNO__UID_OVERRIDE_SYSTEM = common dso_local global i32 0, align 4
@TARGET_ERRNO__SYSTEM_OVERRIDE_THREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target__validate(%struct.target* %0) #0 {
  %2 = alloca %struct.target*, align 8
  %3 = alloca i32, align 4
  store %struct.target* %0, %struct.target** %2, align 8
  %4 = load i32, i32* @TARGET_ERRNO__SUCCESS, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.target*, %struct.target** %2, align 8
  %6 = getelementptr inbounds %struct.target, %struct.target* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.target*, %struct.target** %2, align 8
  %11 = getelementptr inbounds %struct.target, %struct.target* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.target*, %struct.target** %2, align 8
  %14 = getelementptr inbounds %struct.target, %struct.target* %13, i32 0, i32 4
  store i64 %12, i64* %14, align 8
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.target*, %struct.target** %2, align 8
  %17 = getelementptr inbounds %struct.target, %struct.target* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load %struct.target*, %struct.target** %2, align 8
  %22 = getelementptr inbounds %struct.target, %struct.target* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.target*, %struct.target** %2, align 8
  %27 = getelementptr inbounds %struct.target, %struct.target* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @TARGET_ERRNO__SUCCESS, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @TARGET_ERRNO__PID_OVERRIDE_CPU, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %25
  br label %34

34:                                               ; preds = %33, %20, %15
  %35 = load %struct.target*, %struct.target** %2, align 8
  %36 = getelementptr inbounds %struct.target, %struct.target* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load %struct.target*, %struct.target** %2, align 8
  %41 = getelementptr inbounds %struct.target, %struct.target* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.target*, %struct.target** %2, align 8
  %46 = getelementptr inbounds %struct.target, %struct.target* %45, i32 0, i32 3
  store i32* null, i32** %46, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @TARGET_ERRNO__SUCCESS, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @TARGET_ERRNO__PID_OVERRIDE_UID, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %44
  br label %53

53:                                               ; preds = %52, %39, %34
  %54 = load %struct.target*, %struct.target** %2, align 8
  %55 = getelementptr inbounds %struct.target, %struct.target* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load %struct.target*, %struct.target** %2, align 8
  %60 = getelementptr inbounds %struct.target, %struct.target* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.target*, %struct.target** %2, align 8
  %65 = getelementptr inbounds %struct.target, %struct.target* %64, i32 0, i32 2
  store i32* null, i32** %65, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @TARGET_ERRNO__SUCCESS, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @TARGET_ERRNO__UID_OVERRIDE_CPU, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %63
  br label %72

72:                                               ; preds = %71, %58, %53
  %73 = load %struct.target*, %struct.target** %2, align 8
  %74 = getelementptr inbounds %struct.target, %struct.target* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %72
  %78 = load %struct.target*, %struct.target** %2, align 8
  %79 = getelementptr inbounds %struct.target, %struct.target* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load %struct.target*, %struct.target** %2, align 8
  %84 = getelementptr inbounds %struct.target, %struct.target* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @TARGET_ERRNO__SUCCESS, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @TARGET_ERRNO__PID_OVERRIDE_SYSTEM, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %82
  br label %91

91:                                               ; preds = %90, %77, %72
  %92 = load %struct.target*, %struct.target** %2, align 8
  %93 = getelementptr inbounds %struct.target, %struct.target* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %110

96:                                               ; preds = %91
  %97 = load %struct.target*, %struct.target** %2, align 8
  %98 = getelementptr inbounds %struct.target, %struct.target* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %96
  %102 = load %struct.target*, %struct.target** %2, align 8
  %103 = getelementptr inbounds %struct.target, %struct.target* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* @TARGET_ERRNO__SUCCESS, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @TARGET_ERRNO__UID_OVERRIDE_SYSTEM, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %107, %101
  br label %110

110:                                              ; preds = %109, %96, %91
  %111 = load %struct.target*, %struct.target** %2, align 8
  %112 = getelementptr inbounds %struct.target, %struct.target* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %134

115:                                              ; preds = %110
  %116 = load %struct.target*, %struct.target** %2, align 8
  %117 = getelementptr inbounds %struct.target, %struct.target* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %115
  %121 = load %struct.target*, %struct.target** %2, align 8
  %122 = getelementptr inbounds %struct.target, %struct.target* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %134

125:                                              ; preds = %120, %115
  %126 = load %struct.target*, %struct.target** %2, align 8
  %127 = getelementptr inbounds %struct.target, %struct.target* %126, i32 0, i32 1
  store i32 0, i32* %127, align 4
  %128 = load i32, i32* %3, align 4
  %129 = load i32, i32* @TARGET_ERRNO__SUCCESS, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = load i32, i32* @TARGET_ERRNO__SYSTEM_OVERRIDE_THREAD, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %131, %125
  br label %134

134:                                              ; preds = %133, %120, %110
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
