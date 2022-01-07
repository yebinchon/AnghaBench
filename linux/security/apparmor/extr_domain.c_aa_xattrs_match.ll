; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_aa_xattrs_match.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_aa_xattrs_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.aa_profile = type { i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linux_binprm*, %struct.aa_profile*, i32)* @aa_xattrs_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aa_xattrs_match(%struct.linux_binprm* %0, %struct.aa_profile* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.linux_binprm*, align 8
  %6 = alloca %struct.aa_profile*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %5, align 8
  store %struct.aa_profile* %1, %struct.aa_profile** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %16 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %13, align 4
  %18 = load %struct.linux_binprm*, %struct.linux_binprm** %5, align 8
  %19 = icmp ne %struct.linux_binprm* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %22 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %3
  store i32 0, i32* %4, align 4
  br label %105

26:                                               ; preds = %20
  %27 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %28 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @aa_dfa_null_transition(i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.linux_binprm*, %struct.linux_binprm** %5, align 8
  %33 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.dentry*, %struct.dentry** %36, align 8
  store %struct.dentry* %37, %struct.dentry** %10, align 8
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %97, %26
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %41 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %100

44:                                               ; preds = %38
  %45 = load %struct.dentry*, %struct.dentry** %10, align 8
  %46 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %47 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i64 @vfs_getxattr_alloc(%struct.dentry* %45, i32 %52, i8** %11, i32 %53, i32 %54)
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp sge i64 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %44
  %59 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %60 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i8*, i8** %11, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @aa_dfa_match_len(i32 %61, i32 %62, i8* %63, i64 %64)
  store i32 %65, i32* %7, align 4
  %66 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %67 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @dfa_user_allow(i32 %68, i32 %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @MAY_EXEC, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %58
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %13, align 4
  br label %101

78:                                               ; preds = %58
  br label %79

79:                                               ; preds = %78, %44
  %80 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %81 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @aa_dfa_null_transition(i32 %82, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i64, i64* %9, align 8
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %79
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %13, align 4
  br label %101

93:                                               ; preds = %87
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %93, %79
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %38

100:                                              ; preds = %38
  br label %101

101:                                              ; preds = %100, %90, %75
  %102 = load i8*, i8** %11, align 8
  %103 = call i32 @kfree(i8* %102)
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %101, %25
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @aa_dfa_null_transition(i32, i32) #1

declare dso_local i64 @vfs_getxattr_alloc(%struct.dentry*, i32, i8**, i32, i32) #1

declare dso_local i32 @aa_dfa_match_len(i32, i32, i8*, i64) #1

declare dso_local i32 @dfa_user_allow(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
