; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_mls.c_mls_from_string.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_mls.c_mls_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i32 }
%struct.context = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SECSID_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mls_from_string(%struct.policydb* %0, i8* %1, %struct.context* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.policydb*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.context* %2, %struct.context** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.policydb*, %struct.policydb** %6, align 8
  %13 = getelementptr inbounds %struct.policydb, %struct.policydb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %38

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i8* @kstrdup(i8* %20, i32 %21)
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %11, align 4
  br label %36

28:                                               ; preds = %19
  %29 = load %struct.policydb*, %struct.policydb** %6, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load %struct.context*, %struct.context** %8, align 8
  %32 = load i32, i32* @SECSID_NULL, align 4
  %33 = call i32 @mls_context_to_sid(%struct.policydb* %29, i8 signext 58, i8* %30, %struct.context* %31, i32* null, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @kfree(i8* %34)
  br label %36

36:                                               ; preds = %28, %25
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %16
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @mls_context_to_sid(%struct.policydb*, i8 signext, i8*, %struct.context*, i32*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
