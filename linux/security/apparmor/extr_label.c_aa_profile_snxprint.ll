; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_profile_snxprint.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_profile_snxprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ns = type { %struct.aa_profile* }
%struct.aa_profile = type { i64, %struct.TYPE_2__, %struct.aa_ns* }
%struct.TYPE_2__ = type { i8* }

@FLAG_VIEW_SUBNS = common dso_local global i32 0, align 4
@aa_hidden_ns_name = common dso_local global i8* null, align 8
@FLAG_HIDDEN_UNCONFINED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"unconfined\00", align 1
@FLAG_SHOW_MODE = common dso_local global i32 0, align 4
@aa_profile_mode_names = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c":%s:%s (%s)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c":%s:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.aa_ns*, %struct.aa_profile*, i32, %struct.aa_ns**)* @aa_profile_snxprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aa_profile_snxprint(i8* %0, i64 %1, %struct.aa_ns* %2, %struct.aa_profile* %3, i32 %4, %struct.aa_ns** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.aa_ns*, align 8
  %11 = alloca %struct.aa_profile*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.aa_ns**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.aa_ns* %2, %struct.aa_ns** %10, align 8
  store %struct.aa_profile* %3, %struct.aa_profile** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.aa_ns** %5, %struct.aa_ns*** %13, align 8
  store i8* null, i8** %14, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %18, %6
  %22 = phi i1 [ false, %6 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @AA_BUG(i32 %23)
  %25 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %26 = icmp ne %struct.aa_profile* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @AA_BUG(i32 %28)
  %30 = load %struct.aa_ns*, %struct.aa_ns** %10, align 8
  %31 = icmp ne %struct.aa_ns* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  %33 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %34 = call %struct.aa_ns* @profiles_ns(%struct.aa_profile* %33)
  store %struct.aa_ns* %34, %struct.aa_ns** %10, align 8
  br label %35

35:                                               ; preds = %32, %21
  %36 = load %struct.aa_ns*, %struct.aa_ns** %10, align 8
  %37 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %38 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %37, i32 0, i32 2
  %39 = load %struct.aa_ns*, %struct.aa_ns** %38, align 8
  %40 = icmp ne %struct.aa_ns* %36, %39
  br i1 %40, label %41, label %86

41:                                               ; preds = %35
  %42 = load %struct.aa_ns**, %struct.aa_ns*** %13, align 8
  %43 = icmp ne %struct.aa_ns** %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load %struct.aa_ns**, %struct.aa_ns*** %13, align 8
  %46 = load %struct.aa_ns*, %struct.aa_ns** %45, align 8
  %47 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %48 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %47, i32 0, i32 2
  %49 = load %struct.aa_ns*, %struct.aa_ns** %48, align 8
  %50 = icmp ne %struct.aa_ns* %46, %49
  br i1 %50, label %51, label %86

51:                                               ; preds = %44, %41
  %52 = load %struct.aa_ns**, %struct.aa_ns*** %13, align 8
  %53 = icmp ne %struct.aa_ns** %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %56 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %55, i32 0, i32 2
  %57 = load %struct.aa_ns*, %struct.aa_ns** %56, align 8
  %58 = load %struct.aa_ns**, %struct.aa_ns*** %13, align 8
  store %struct.aa_ns* %57, %struct.aa_ns** %58, align 8
  br label %59

59:                                               ; preds = %54, %51
  %60 = load %struct.aa_ns*, %struct.aa_ns** %10, align 8
  %61 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %62 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %61, i32 0, i32 2
  %63 = load %struct.aa_ns*, %struct.aa_ns** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @FLAG_VIEW_SUBNS, align 4
  %66 = and i32 %64, %65
  %67 = call i8* @aa_ns_name(%struct.aa_ns* %60, %struct.aa_ns* %63, i32 %66)
  store i8* %67, i8** %14, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = load i8*, i8** @aa_hidden_ns_name, align 8
  %70 = icmp eq i8* %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %59
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @FLAG_HIDDEN_UNCONFINED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i8*, i8** %8, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %77, i64 %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %79, i32* %7, align 4
  br label %147

80:                                               ; preds = %71
  %81 = load i8*, i8** %8, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i8*, i8** %14, align 8
  %84 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %81, i64 %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %83)
  store i32 %84, i32* %7, align 4
  br label %147

85:                                               ; preds = %59
  br label %86

86:                                               ; preds = %85, %44, %35
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @FLAG_SHOW_MODE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %127

91:                                               ; preds = %86
  %92 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %93 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %94 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %93, i32 0, i32 2
  %95 = load %struct.aa_ns*, %struct.aa_ns** %94, align 8
  %96 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %95, i32 0, i32 0
  %97 = load %struct.aa_profile*, %struct.aa_profile** %96, align 8
  %98 = icmp ne %struct.aa_profile* %92, %97
  br i1 %98, label %99, label %127

99:                                               ; preds = %91
  %100 = load i8**, i8*** @aa_profile_mode_names, align 8
  %101 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %102 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i8*, i8** %100, i64 %103
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %15, align 8
  %106 = load i8*, i8** %14, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %118

108:                                              ; preds = %99
  %109 = load i8*, i8** %8, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load i8*, i8** %14, align 8
  %112 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %113 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i8*, i8** %15, align 8
  %117 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %109, i64 %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %111, i8* %115, i8* %116)
  store i32 %117, i32* %7, align 4
  br label %147

118:                                              ; preds = %99
  %119 = load i8*, i8** %8, align 8
  %120 = load i64, i64* %9, align 8
  %121 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %122 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i8*, i8** %15, align 8
  %126 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %119, i64 %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %124, i8* %125)
  store i32 %126, i32* %7, align 4
  br label %147

127:                                              ; preds = %91, %86
  %128 = load i8*, i8** %14, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %139

130:                                              ; preds = %127
  %131 = load i8*, i8** %8, align 8
  %132 = load i64, i64* %9, align 8
  %133 = load i8*, i8** %14, align 8
  %134 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %135 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %131, i64 %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %133, i8* %137)
  store i32 %138, i32* %7, align 4
  br label %147

139:                                              ; preds = %127
  %140 = load i8*, i8** %8, align 8
  %141 = load i64, i64* %9, align 8
  %142 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %143 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %140, i64 %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %145)
  store i32 %146, i32* %7, align 4
  br label %147

147:                                              ; preds = %139, %130, %118, %108, %80, %76
  %148 = load i32, i32* %7, align 4
  ret i32 %148
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local %struct.aa_ns* @profiles_ns(%struct.aa_profile*) #1

declare dso_local i8* @aa_ns_name(%struct.aa_ns*, %struct.aa_ns*, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
