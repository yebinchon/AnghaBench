; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_policydb_load_isids.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_policydb_load_isids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.ocontext** }
%struct.ocontext = type { i64*, %struct.TYPE_3__, %struct.TYPE_4__*, %struct.ocontext* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sidtab = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"SELinux:  out of memory on SID table init\0A\00", align 1
@OCON_ISID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"SELinux:  SID %s was never defined.\0A\00", align 1
@SECSID_NULL = common dso_local global i64 0, align 8
@SECINITSID_NUM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"SELinux:  Initial SID %s out of range.\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"SELinux:  unable to load initial SID %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @policydb_load_isids(%struct.policydb* %0, %struct.sidtab* %1) #0 {
  %3 = alloca %struct.policydb*, align 8
  %4 = alloca %struct.sidtab*, align 8
  %5 = alloca %struct.ocontext*, align 8
  %6 = alloca %struct.ocontext*, align 8
  %7 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %3, align 8
  store %struct.sidtab* %1, %struct.sidtab** %4, align 8
  %8 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %9 = call i32 @sidtab_init(%struct.sidtab* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %95

14:                                               ; preds = %2
  %15 = load %struct.policydb*, %struct.policydb** %3, align 8
  %16 = getelementptr inbounds %struct.policydb, %struct.policydb* %15, i32 0, i32 0
  %17 = load %struct.ocontext**, %struct.ocontext*** %16, align 8
  %18 = load i64, i64* @OCON_ISID, align 8
  %19 = getelementptr inbounds %struct.ocontext*, %struct.ocontext** %17, i64 %18
  %20 = load %struct.ocontext*, %struct.ocontext** %19, align 8
  store %struct.ocontext* %20, %struct.ocontext** %5, align 8
  %21 = load %struct.ocontext*, %struct.ocontext** %5, align 8
  store %struct.ocontext* %21, %struct.ocontext** %6, align 8
  br label %22

22:                                               ; preds = %90, %14
  %23 = load %struct.ocontext*, %struct.ocontext** %6, align 8
  %24 = icmp ne %struct.ocontext* %23, null
  br i1 %24, label %25, label %94

25:                                               ; preds = %22
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.ocontext*, %struct.ocontext** %6, align 8
  %29 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %25
  %36 = load %struct.ocontext*, %struct.ocontext** %6, align 8
  %37 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %42 = call i32 @sidtab_destroy(%struct.sidtab* %41)
  br label %95

43:                                               ; preds = %25
  %44 = load %struct.ocontext*, %struct.ocontext** %6, align 8
  %45 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SECSID_NULL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = load %struct.ocontext*, %struct.ocontext** %6, align 8
  %53 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SECINITSID_NUM, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %51, %43
  %60 = load %struct.ocontext*, %struct.ocontext** %6, align 8
  %61 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %66 = call i32 @sidtab_destroy(%struct.sidtab* %65)
  br label %95

67:                                               ; preds = %51
  %68 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %69 = load %struct.ocontext*, %struct.ocontext** %6, align 8
  %70 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.ocontext*, %struct.ocontext** %6, align 8
  %75 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 0
  %78 = call i32 @sidtab_set_initial(%struct.sidtab* %68, i64 %73, %struct.TYPE_4__* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %67
  %82 = load %struct.ocontext*, %struct.ocontext** %6, align 8
  %83 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %88 = call i32 @sidtab_destroy(%struct.sidtab* %87)
  br label %95

89:                                               ; preds = %67
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.ocontext*, %struct.ocontext** %6, align 8
  %92 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %91, i32 0, i32 3
  %93 = load %struct.ocontext*, %struct.ocontext** %92, align 8
  store %struct.ocontext* %93, %struct.ocontext** %6, align 8
  br label %22

94:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %94, %81, %59, %35, %12
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @sidtab_init(%struct.sidtab*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @sidtab_destroy(%struct.sidtab*) #1

declare dso_local i32 @sidtab_set_initial(%struct.sidtab*, i64, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
