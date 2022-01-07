; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_context_read_and_validate.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_context_read_and_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32, i8*, i8*, i8* }
%struct.policydb = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"SELinux: context truncated\0A\00", align 1
@POLICYDB_VERSION_MLS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"SELinux: error reading MLS range of context\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"SELinux:  invalid security context\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.context*, %struct.policydb*, i8*)* @context_read_and_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @context_read_and_validate(%struct.context* %0, %struct.policydb* %1, i8* %2) #0 {
  %4 = alloca %struct.context*, align 8
  %5 = alloca %struct.policydb*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %4, align 8
  store %struct.policydb* %1, %struct.policydb** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @next_entry(i32* %9, i8* %10, i32 12)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %59

16:                                               ; preds = %3
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @le32_to_cpu(i32 %18)
  %20 = load %struct.context*, %struct.context** %4, align 8
  %21 = getelementptr inbounds %struct.context, %struct.context* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @le32_to_cpu(i32 %23)
  %25 = load %struct.context*, %struct.context** %4, align 8
  %26 = getelementptr inbounds %struct.context, %struct.context* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @le32_to_cpu(i32 %28)
  %30 = load %struct.context*, %struct.context** %4, align 8
  %31 = getelementptr inbounds %struct.context, %struct.context* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.policydb*, %struct.policydb** %5, align 8
  %33 = getelementptr inbounds %struct.policydb, %struct.policydb* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @POLICYDB_VERSION_MLS, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %16
  %38 = load %struct.context*, %struct.context** %4, align 8
  %39 = getelementptr inbounds %struct.context, %struct.context* %38, i32 0, i32 0
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @mls_read_range_helper(i32* %39, i8* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %59

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %16
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  %50 = load %struct.policydb*, %struct.policydb** %5, align 8
  %51 = load %struct.context*, %struct.context** %4, align 8
  %52 = call i32 @policydb_context_isvalid(%struct.policydb* %50, %struct.context* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %47
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.context*, %struct.context** %4, align 8
  %57 = call i32 @context_destroy(%struct.context* %56)
  br label %59

58:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %58, %54, %44, %14
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local i32 @next_entry(i32*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @mls_read_range_helper(i32*, i8*) #1

declare dso_local i32 @policydb_context_isvalid(%struct.policydb*, %struct.context*) #1

declare dso_local i32 @context_destroy(%struct.context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
