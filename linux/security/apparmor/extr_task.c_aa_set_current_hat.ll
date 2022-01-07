; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_task.c_aa_set_current_hat.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_task.c_aa_set_current_hat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.aa_task_ctx = type { i64, i32*, i32* }
%struct.cred = type { i32 }

@current = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_set_current_hat(%struct.aa_label* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aa_label*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.aa_task_ctx*, align 8
  %7 = alloca %struct.cred*, align 8
  store %struct.aa_label* %0, %struct.aa_label** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @current, align 4
  %9 = call %struct.aa_task_ctx* @task_ctx(i32 %8)
  store %struct.aa_task_ctx* %9, %struct.aa_task_ctx** %6, align 8
  %10 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %10, %struct.cred** %7, align 8
  %11 = load %struct.cred*, %struct.cred** %7, align 8
  %12 = icmp ne %struct.cred* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %63

16:                                               ; preds = %2
  %17 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %18 = icmp ne %struct.aa_label* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @AA_BUG(i32 %20)
  %22 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %6, align 8
  %23 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %16
  %27 = load %struct.cred*, %struct.cred** %7, align 8
  %28 = call i32* @cred_label(%struct.cred* %27)
  %29 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %50

34:                                               ; preds = %16
  %35 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %6, align 8
  %36 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.cred*, %struct.cred** %7, align 8
  %42 = call i32* @cred_label(%struct.cred* %41)
  %43 = call i32 @aa_put_label(i32* %42)
  br label %49

44:                                               ; preds = %34
  %45 = load %struct.cred*, %struct.cred** %7, align 8
  %46 = call i32 @abort_creds(%struct.cred* %45)
  %47 = load i32, i32* @EACCES, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %63

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %26
  %51 = load %struct.cred*, %struct.cred** %7, align 8
  %52 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %53 = call i32 @aa_get_newest_label(%struct.aa_label* %52)
  %54 = call i32 @set_cred_label(%struct.cred* %51, i32 %53)
  %55 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %6, align 8
  %56 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @aa_put_label(i32* %57)
  %59 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %6, align 8
  %60 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  %61 = load %struct.cred*, %struct.cred** %7, align 8
  %62 = call i32 @commit_creds(%struct.cred* %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %50, %44, %13
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.aa_task_ctx* @task_ctx(i32) #1

declare dso_local %struct.cred* @prepare_creds(...) #1

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32* @cred_label(%struct.cred*) #1

declare dso_local i32 @aa_put_label(i32*) #1

declare dso_local i32 @abort_creds(%struct.cred*) #1

declare dso_local i32 @set_cred_label(%struct.cred*, i32) #1

declare dso_local i32 @aa_get_newest_label(%struct.aa_label*) #1

declare dso_local i32 @commit_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
