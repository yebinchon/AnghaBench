; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyctl_pkey.c_keyctl_pkey_params_parse.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyctl_pkey.c_keyctl_pkey_params_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_pkey_params = type { i8*, i8*, i8* }
%struct.TYPE_3__ = type { i8* }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@param_keys = common dso_local global i32 0, align 4
@Opt_err = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernel_pkey_params*)* @keyctl_pkey_params_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyctl_pkey_params_parse(%struct.kernel_pkey_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kernel_pkey_params*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kernel_pkey_params* %0, %struct.kernel_pkey_params** %3, align 8
  store i64 0, i64* %4, align 8
  %12 = load i32, i32* @MAX_OPT_ARGS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca %struct.TYPE_3__, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load %struct.kernel_pkey_params*, %struct.kernel_pkey_params** %3, align 8
  %17 = getelementptr inbounds %struct.kernel_pkey_params, %struct.kernel_pkey_params* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %7, align 8
  br label %19

19:                                               ; preds = %79, %37, %1
  %20 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %80

22:                                               ; preds = %19
  %23 = load i8*, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 32
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 9
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %27, %22
  br label %19

38:                                               ; preds = %32
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* @param_keys, align 4
  %41 = call i32 @match_token(i8* %39, i32 %40, %struct.TYPE_3__* %15)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @Opt_err, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %81

48:                                               ; preds = %38
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @__test_and_set_bit(i32 %49, i64* %4)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %81

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 16
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %81

66:                                               ; preds = %55
  %67 = load i32, i32* %10, align 4
  switch i32 %67, label %76 [
    i32 129, label %68
    i32 128, label %72
  ]

68:                                               ; preds = %66
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.kernel_pkey_params*, %struct.kernel_pkey_params** %3, align 8
  %71 = getelementptr inbounds %struct.kernel_pkey_params, %struct.kernel_pkey_params* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  br label %79

72:                                               ; preds = %66
  %73 = load i8*, i8** %9, align 8
  %74 = load %struct.kernel_pkey_params*, %struct.kernel_pkey_params** %3, align 8
  %75 = getelementptr inbounds %struct.kernel_pkey_params, %struct.kernel_pkey_params* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  br label %79

76:                                               ; preds = %66
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %81

79:                                               ; preds = %72, %68
  br label %19

80:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %81

81:                                               ; preds = %80, %76, %63, %52, %45
  %82 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, %struct.TYPE_3__*) #2

declare dso_local i64 @__test_and_set_bit(i32, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
