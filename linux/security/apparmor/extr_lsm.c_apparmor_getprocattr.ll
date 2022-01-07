; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_getprocattr.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_getprocattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.cred = type { i32 }
%struct.aa_task_ctx = type { i64, i64 }
%struct.aa_label = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"prev\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i8*, i8**)* @apparmor_getprocattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apparmor_getprocattr(%struct.task_struct* %0, i8* %1, i8** %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cred*, align 8
  %9 = alloca %struct.aa_task_ctx*, align 8
  %10 = alloca %struct.aa_label*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %14 = call %struct.cred* @get_task_cred(%struct.task_struct* %13)
  store %struct.cred* %14, %struct.cred** %8, align 8
  %15 = load i32, i32* @current, align 4
  %16 = call %struct.aa_task_ctx* @task_ctx(i32 %15)
  store %struct.aa_task_ctx* %16, %struct.aa_task_ctx** %9, align 8
  store %struct.aa_label* null, %struct.aa_label** %10, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.cred*, %struct.cred** %8, align 8
  %22 = call i64 @cred_label(%struct.cred* %21)
  %23 = call %struct.aa_label* @aa_get_newest_label(i64 %22)
  store %struct.aa_label* %23, %struct.aa_label** %10, align 8
  br label %57

24:                                               ; preds = %3
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %9, align 8
  %30 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %9, align 8
  %35 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call %struct.aa_label* @aa_get_newest_label(i64 %36)
  store %struct.aa_label* %37, %struct.aa_label** %10, align 8
  br label %56

38:                                               ; preds = %28, %24
  %39 = load i8*, i8** %5, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %9, align 8
  %44 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %9, align 8
  %49 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call %struct.aa_label* @aa_get_newest_label(i64 %50)
  store %struct.aa_label* %51, %struct.aa_label** %10, align 8
  br label %55

52:                                               ; preds = %42, %38
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %52, %47
  br label %56

56:                                               ; preds = %55, %33
  br label %57

57:                                               ; preds = %56, %20
  %58 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %59 = icmp ne %struct.aa_label* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %62 = load i8**, i8*** %6, align 8
  %63 = call i32 @aa_getprocattr(%struct.aa_label* %61, i8** %62)
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %60, %57
  %65 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %66 = call i32 @aa_put_label(%struct.aa_label* %65)
  %67 = load %struct.cred*, %struct.cred** %8, align 8
  %68 = call i32 @put_cred(%struct.cred* %67)
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local %struct.cred* @get_task_cred(%struct.task_struct*) #1

declare dso_local %struct.aa_task_ctx* @task_ctx(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.aa_label* @aa_get_newest_label(i64) #1

declare dso_local i64 @cred_label(%struct.cred*) #1

declare dso_local i32 @aa_getprocattr(%struct.aa_label*, i8**) #1

declare dso_local i32 @aa_put_label(%struct.aa_label*) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
