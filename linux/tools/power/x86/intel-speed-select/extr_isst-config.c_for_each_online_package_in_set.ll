; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_for_each_online_package_in_set.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_for_each_online_package_in_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PACKAGE_COUNT = common dso_local global i32 0, align 4
@topo_max_cpus = common dso_local global i32 0, align 4
@present_cpumask_size = common dso_local global i32 0, align 4
@present_cpumask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"/sys/devices/system/cpu/cpu%d/online\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (void (i32, i8*, i8*, i8*, i8*)*, i8*, i8*, i8*, i8*)* @for_each_online_package_in_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @for_each_online_package_in_set(void (i32, i8*, i8*, i8*, i8*)* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca void (i32, i8*, i8*, i8*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store void (i32, i8*, i8*, i8*, i8*)* %0, void (i32, i8*, i8*, i8*, i8*)** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %20 = load i32, i32* @MAX_PACKAGE_COUNT, align 4
  %21 = load i32, i32* @MAX_PACKAGE_COUNT, align 4
  %22 = mul nsw i32 %20, %21
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %26 = mul nuw i64 4, %23
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memset(i32* %25, i32 255, i32 %27)
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %99, %5
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @topo_max_cpus, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %102

33:                                               ; preds = %29
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* @present_cpumask_size, align 4
  %36 = load i32, i32* @present_cpumask, align 4
  %37 = call i32 @CPU_ISSET_S(i32 %34, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %99

40:                                               ; preds = %33
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @parse_int_file(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32 %45, i32* %16, align 4
  br label %47

46:                                               ; preds = %40
  store i32 1, i32* %16, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @get_physical_die_id(i32 %48)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* %18, align 4
  br label %53

53:                                               ; preds = %52, %47
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @get_physical_package_id(i32 %54)
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* @MAX_PACKAGE_COUNT, align 4
  %57 = load i32, i32* %17, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* %18, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %61

61:                                               ; preds = %74, %53
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %25, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 1, i32* %19, align 4
  br label %77

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %15, align 4
  br label %61

77:                                               ; preds = %72, %61
  %78 = load i32, i32* %19, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %98, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %80
  %84 = load void (i32, i8*, i8*, i8*, i8*)*, void (i32, i8*, i8*, i8*, i8*)** %6, align 8
  %85 = icmp ne void (i32, i8*, i8*, i8*, i8*)* %84, null
  br i1 %85, label %86, label %98

86:                                               ; preds = %83
  %87 = load void (i32, i8*, i8*, i8*, i8*)*, void (i32, i8*, i8*, i8*, i8*)** %6, align 8
  %88 = load i32, i32* %14, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = load i8*, i8** %10, align 8
  call void %87(i32 %88, i8* %89, i8* %90, i8* %91, i8* %92)
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %25, i64 %96
  store i32 %93, i32* %97, align 4
  br label %98

98:                                               ; preds = %86, %83, %80, %77
  br label %99

99:                                               ; preds = %98, %39
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %29

102:                                              ; preds = %29
  %103 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %103)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @CPU_ISSET_S(i32, i32, i32) #2

declare dso_local i32 @parse_int_file(i32, i8*, i32) #2

declare dso_local i32 @get_physical_die_id(i32) #2

declare dso_local i32 @get_physical_package_id(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
