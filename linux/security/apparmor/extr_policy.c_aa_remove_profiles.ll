; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_aa_remove_profiles.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_aa_remove_profiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ns = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.aa_label = type { i32 }
%struct.aa_profile = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [21 x i8] c"no profile specified\00", align 1
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"namespace does not exist\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"profile does not exist\00", align 1
@OP_PROF_RM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @aa_remove_profiles(%struct.aa_ns* %0, %struct.aa_label* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.aa_ns*, align 8
  %7 = alloca %struct.aa_label*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.aa_ns*, align 8
  %11 = alloca %struct.aa_profile*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.aa_ns* %0, %struct.aa_ns** %6, align 8
  store %struct.aa_label* %1, %struct.aa_label** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.aa_ns* null, %struct.aa_ns** %10, align 8
  store %struct.aa_profile* null, %struct.aa_profile** %11, align 8
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i64 0, i64* %15, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %23 = load i64, i64* @ENOENT, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %15, align 8
  br label %135

25:                                               ; preds = %4
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 58
  br i1 %30, label %31, label %53

31:                                               ; preds = %25
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i8* @aa_splitn_fqname(i8* %32, i64 %33, i8** %14, i64* %16)
  store i8* %34, i8** %12, align 8
  %35 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  %36 = icmp ne %struct.aa_ns* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  br label %42

39:                                               ; preds = %31
  %40 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %41 = call %struct.aa_ns* @labels_ns(%struct.aa_label* %40)
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi %struct.aa_ns* [ %38, %37 ], [ %41, %39 ]
  %44 = load i8*, i8** %14, align 8
  %45 = load i64, i64* %16, align 8
  %46 = call %struct.aa_ns* @aa_lookupn_ns(%struct.aa_ns* %43, i8* %44, i64 %45)
  store %struct.aa_ns* %46, %struct.aa_ns** %10, align 8
  %47 = load %struct.aa_ns*, %struct.aa_ns** %10, align 8
  %48 = icmp ne %struct.aa_ns* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %50 = load i64, i64* @ENOENT, align 8
  %51 = sub i64 0, %50
  store i64 %51, i64* %15, align 8
  br label %135

52:                                               ; preds = %42
  br label %64

53:                                               ; preds = %25
  %54 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  %55 = icmp ne %struct.aa_ns* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  br label %61

58:                                               ; preds = %53
  %59 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %60 = call %struct.aa_ns* @labels_ns(%struct.aa_label* %59)
  br label %61

61:                                               ; preds = %58, %56
  %62 = phi %struct.aa_ns* [ %57, %56 ], [ %60, %58 ]
  %63 = call %struct.aa_ns* @aa_get_ns(%struct.aa_ns* %62)
  store %struct.aa_ns* %63, %struct.aa_ns** %10, align 8
  br label %64

64:                                               ; preds = %61, %52
  %65 = load i8*, i8** %12, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %85, label %67

67:                                               ; preds = %64
  %68 = load %struct.aa_ns*, %struct.aa_ns** %10, align 8
  %69 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %68, i32 0, i32 3
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load %struct.aa_ns*, %struct.aa_ns** %10, align 8
  %73 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @mutex_lock_nested(i32* %71, i32 %74)
  %76 = load %struct.aa_ns*, %struct.aa_ns** %10, align 8
  %77 = call i32 @__aa_remove_ns(%struct.aa_ns* %76)
  %78 = load %struct.aa_ns*, %struct.aa_ns** %10, align 8
  %79 = call i32 @__aa_bump_ns_revision(%struct.aa_ns* %78)
  %80 = load %struct.aa_ns*, %struct.aa_ns** %10, align 8
  %81 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %80, i32 0, i32 3
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  br label %116

85:                                               ; preds = %64
  %86 = load %struct.aa_ns*, %struct.aa_ns** %10, align 8
  %87 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %86, i32 0, i32 0
  %88 = load %struct.aa_ns*, %struct.aa_ns** %10, align 8
  %89 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @mutex_lock_nested(i32* %87, i32 %90)
  %92 = load %struct.aa_ns*, %struct.aa_ns** %10, align 8
  %93 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %92, i32 0, i32 1
  %94 = load i8*, i8** %12, align 8
  %95 = call i32 @__lookup_profile(i32* %93, i8* %94)
  %96 = call %struct.aa_profile* @aa_get_profile(i32 %95)
  store %struct.aa_profile* %96, %struct.aa_profile** %11, align 8
  %97 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %98 = icmp ne %struct.aa_profile* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %85
  %100 = load i64, i64* @ENOENT, align 8
  %101 = sub i64 0, %100
  store i64 %101, i64* %15, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %129

102:                                              ; preds = %85
  %103 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %104 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  store i8* %106, i8** %12, align 8
  %107 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %108 = call i32 @__remove_profile(%struct.aa_profile* %107)
  %109 = load %struct.aa_ns*, %struct.aa_ns** %10, align 8
  %110 = call i32 @__aa_labelset_update_subtree(%struct.aa_ns* %109)
  %111 = load %struct.aa_ns*, %struct.aa_ns** %10, align 8
  %112 = call i32 @__aa_bump_ns_revision(%struct.aa_ns* %111)
  %113 = load %struct.aa_ns*, %struct.aa_ns** %10, align 8
  %114 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %113, i32 0, i32 0
  %115 = call i32 @mutex_unlock(i32* %114)
  br label %116

116:                                              ; preds = %102, %67
  %117 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %118 = load i32, i32* @OP_PROF_RM, align 4
  %119 = load i8*, i8** %14, align 8
  %120 = load i8*, i8** %12, align 8
  %121 = load i8*, i8** %13, align 8
  %122 = load i64, i64* %15, align 8
  %123 = call i32 @audit_policy(%struct.aa_label* %117, i32 %118, i8* %119, i8* %120, i8* %121, i64 %122)
  %124 = load %struct.aa_ns*, %struct.aa_ns** %10, align 8
  %125 = call i32 @aa_put_ns(%struct.aa_ns* %124)
  %126 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %127 = call i32 @aa_put_profile(%struct.aa_profile* %126)
  %128 = load i64, i64* %9, align 8
  store i64 %128, i64* %5, align 8
  br label %144

129:                                              ; preds = %99
  %130 = load %struct.aa_ns*, %struct.aa_ns** %10, align 8
  %131 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %130, i32 0, i32 0
  %132 = call i32 @mutex_unlock(i32* %131)
  %133 = load %struct.aa_ns*, %struct.aa_ns** %10, align 8
  %134 = call i32 @aa_put_ns(%struct.aa_ns* %133)
  br label %135

135:                                              ; preds = %129, %49, %22
  %136 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %137 = load i32, i32* @OP_PROF_RM, align 4
  %138 = load i8*, i8** %14, align 8
  %139 = load i8*, i8** %12, align 8
  %140 = load i8*, i8** %13, align 8
  %141 = load i64, i64* %15, align 8
  %142 = call i32 @audit_policy(%struct.aa_label* %136, i32 %137, i8* %138, i8* %139, i8* %140, i64 %141)
  %143 = load i64, i64* %15, align 8
  store i64 %143, i64* %5, align 8
  br label %144

144:                                              ; preds = %135, %116
  %145 = load i64, i64* %5, align 8
  ret i64 %145
}

declare dso_local i8* @aa_splitn_fqname(i8*, i64, i8**, i64*) #1

declare dso_local %struct.aa_ns* @aa_lookupn_ns(%struct.aa_ns*, i8*, i64) #1

declare dso_local %struct.aa_ns* @labels_ns(%struct.aa_label*) #1

declare dso_local %struct.aa_ns* @aa_get_ns(%struct.aa_ns*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @__aa_remove_ns(%struct.aa_ns*) #1

declare dso_local i32 @__aa_bump_ns_revision(%struct.aa_ns*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.aa_profile* @aa_get_profile(i32) #1

declare dso_local i32 @__lookup_profile(i32*, i8*) #1

declare dso_local i32 @__remove_profile(%struct.aa_profile*) #1

declare dso_local i32 @__aa_labelset_update_subtree(%struct.aa_ns*) #1

declare dso_local i32 @audit_policy(%struct.aa_label*, i32, i8*, i8*, i8*, i64) #1

declare dso_local i32 @aa_put_ns(%struct.aa_ns*) #1

declare dso_local i32 @aa_put_profile(%struct.aa_profile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
