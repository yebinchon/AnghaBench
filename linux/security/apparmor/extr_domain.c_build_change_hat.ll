; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_build_change_hat.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_build_change_hat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.aa_profile = type { %struct.aa_label, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [25 x i8] c"conflicting target types\00", align 1
@EPERM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed null profile create\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@nullperms = common dso_local global i32 0, align 4
@OP_CHANGE_HAT = common dso_local global i32 0, align 4
@AA_MAY_CHANGEHAT = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aa_label* (%struct.aa_profile*, i8*, i32)* @build_change_hat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aa_label* @build_change_hat(%struct.aa_profile* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.aa_label*, align 8
  %5 = alloca %struct.aa_profile*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aa_profile*, align 8
  %9 = alloca %struct.aa_profile*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.aa_profile* null, %struct.aa_profile** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %16 = call i64 @PROFILE_IS_HAT(%struct.aa_profile* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %20 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %19, i32 0, i32 2
  %21 = call %struct.aa_profile* @aa_get_profile_rcu(i32* %20)
  store %struct.aa_profile* %21, %struct.aa_profile** %8, align 8
  br label %36

22:                                               ; preds = %14, %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %27 = call i64 @PROFILE_IS_HAT(%struct.aa_profile* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %31 = call %struct.aa_profile* @aa_get_profile(%struct.aa_profile* %30)
  store %struct.aa_profile* %31, %struct.aa_profile** %8, align 8
  br label %35

32:                                               ; preds = %25, %22
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %33 = load i32, i32* @EPERM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %11, align 4
  br label %63

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %18
  %37 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call %struct.aa_profile* @aa_find_child(%struct.aa_profile* %37, i8* %38)
  store %struct.aa_profile* %39, %struct.aa_profile** %9, align 8
  %40 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %41 = icmp ne %struct.aa_profile* %40, null
  br i1 %41, label %60, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %11, align 4
  %45 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %46 = call i64 @COMPLAIN_MODE(%struct.aa_profile* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.aa_profile* @aa_new_null_profile(%struct.aa_profile* %49, i32 1, i8* %50, i32 %51)
  store %struct.aa_profile* %52, %struct.aa_profile** %9, align 8
  %53 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %54 = icmp ne %struct.aa_profile* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %55, %48
  br label %59

59:                                               ; preds = %58, %42
  br label %60

60:                                               ; preds = %59, %36
  %61 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  %62 = call i32 @aa_put_profile(%struct.aa_profile* %61)
  br label %63

63:                                               ; preds = %60, %32
  %64 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %65 = load i32, i32* @OP_CHANGE_HAT, align 4
  %66 = load i32, i32* @AA_MAY_CHANGEHAT, align 4
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %69 = icmp ne %struct.aa_profile* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %72 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  br label %76

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75, %70
  %77 = phi i32* [ %74, %70 ], [ null, %75 ]
  %78 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %79 = icmp ne %struct.aa_profile* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %82 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %81, i32 0, i32 0
  br label %84

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %80
  %85 = phi %struct.aa_label* [ %82, %80 ], [ null, %83 ]
  %86 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %87 = load i8*, i8** %10, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @aa_audit_file(%struct.aa_profile* %64, i32* @nullperms, i32 %65, i32 %66, i8* %67, i32* %77, %struct.aa_label* %85, i32 %86, i8* %87, i32 %88)
  %90 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %91 = icmp ne %struct.aa_profile* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %84
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @ENOENT, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp ne i32 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %95, %84
  %101 = load i32, i32* %11, align 4
  %102 = call %struct.aa_label* @ERR_PTR(i32 %101)
  store %struct.aa_label* %102, %struct.aa_label** %4, align 8
  br label %106

103:                                              ; preds = %95, %92
  %104 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %105 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %104, i32 0, i32 0
  store %struct.aa_label* %105, %struct.aa_label** %4, align 8
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  ret %struct.aa_label* %107
}

declare dso_local i64 @PROFILE_IS_HAT(%struct.aa_profile*) #1

declare dso_local %struct.aa_profile* @aa_get_profile_rcu(i32*) #1

declare dso_local %struct.aa_profile* @aa_get_profile(%struct.aa_profile*) #1

declare dso_local %struct.aa_profile* @aa_find_child(%struct.aa_profile*, i8*) #1

declare dso_local i64 @COMPLAIN_MODE(%struct.aa_profile*) #1

declare dso_local %struct.aa_profile* @aa_new_null_profile(%struct.aa_profile*, i32, i8*, i32) #1

declare dso_local i32 @aa_put_profile(%struct.aa_profile*) #1

declare dso_local i32 @aa_audit_file(%struct.aa_profile*, i32*, i32, i32, i8*, i32*, %struct.aa_label*, i32, i8*, i32) #1

declare dso_local %struct.aa_label* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
