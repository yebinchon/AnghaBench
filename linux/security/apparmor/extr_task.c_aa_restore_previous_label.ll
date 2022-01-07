; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_task.c_aa_restore_previous_label.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_task.c_aa_restore_previous_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_task_ctx = type { i64, i32 }
%struct.cred = type { i32 }

@current = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_restore_previous_label(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.aa_task_ctx*, align 8
  %5 = alloca %struct.cred*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i32, i32* @current, align 4
  %7 = call %struct.aa_task_ctx* @task_ctx(i32 %6)
  store %struct.aa_task_ctx* %7, %struct.aa_task_ctx** %4, align 8
  %8 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EACCES, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %49

16:                                               ; preds = %1
  %17 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %49

22:                                               ; preds = %16
  %23 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %23, %struct.cred** %5, align 8
  %24 = load %struct.cred*, %struct.cred** %5, align 8
  %25 = icmp ne %struct.cred* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %49

29:                                               ; preds = %22
  %30 = load %struct.cred*, %struct.cred** %5, align 8
  %31 = call i32 @cred_label(%struct.cred* %30)
  %32 = call i32 @aa_put_label(i32 %31)
  %33 = load %struct.cred*, %struct.cred** %5, align 8
  %34 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @aa_get_newest_label(i32 %36)
  %38 = call i32 @set_cred_label(%struct.cred* %33, i32 %37)
  %39 = load %struct.cred*, %struct.cred** %5, align 8
  %40 = call i32 @cred_label(%struct.cred* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @AA_BUG(i32 %43)
  %45 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %4, align 8
  %46 = call i32 @aa_clear_task_ctx_trans(%struct.aa_task_ctx* %45)
  %47 = load %struct.cred*, %struct.cred** %5, align 8
  %48 = call i32 @commit_creds(%struct.cred* %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %29, %26, %21, %13
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.aa_task_ctx* @task_ctx(i32) #1

declare dso_local %struct.cred* @prepare_creds(...) #1

declare dso_local i32 @aa_put_label(i32) #1

declare dso_local i32 @cred_label(%struct.cred*) #1

declare dso_local i32 @set_cred_label(%struct.cred*, i32) #1

declare dso_local i32 @aa_get_newest_label(i32) #1

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @aa_clear_task_ctx_trans(%struct.aa_task_ctx*) #1

declare dso_local i32 @commit_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
