; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_task.c_aa_replace_current_label.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_task.c_aa_replace_current_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.aa_task_ctx = type { %struct.aa_label* }
%struct.cred = type { i32 }

@current = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_replace_current_label(%struct.aa_label* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aa_label*, align 8
  %4 = alloca %struct.aa_label*, align 8
  %5 = alloca %struct.aa_task_ctx*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca %struct.aa_label*, align 8
  store %struct.aa_label* %0, %struct.aa_label** %3, align 8
  %8 = call %struct.aa_label* (...) @aa_current_raw_label()
  store %struct.aa_label* %8, %struct.aa_label** %4, align 8
  %9 = load i32, i32* @current, align 4
  %10 = call %struct.aa_task_ctx* @task_ctx(i32 %9)
  store %struct.aa_task_ctx* %10, %struct.aa_task_ctx** %5, align 8
  %11 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %12 = icmp ne %struct.aa_label* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @AA_BUG(i32 %14)
  %16 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %17 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %18 = icmp eq %struct.aa_label* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %80

20:                                               ; preds = %1
  %21 = call i64 (...) @current_cred()
  %22 = call i64 (...) @current_real_cred()
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %80

27:                                               ; preds = %20
  %28 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %28, %struct.cred** %6, align 8
  %29 = load %struct.cred*, %struct.cred** %6, align 8
  %30 = icmp ne %struct.cred* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %80

34:                                               ; preds = %27
  %35 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %35, i32 0, i32 0
  %37 = load %struct.aa_label*, %struct.aa_label** %36, align 8
  %38 = icmp ne %struct.aa_label* %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %40, i32 0, i32 0
  %42 = load %struct.aa_label*, %struct.aa_label** %41, align 8
  %43 = call i64 @label_is_stale(%struct.aa_label* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %46, i32 0, i32 0
  %48 = load %struct.aa_label*, %struct.aa_label** %47, align 8
  store %struct.aa_label* %48, %struct.aa_label** %7, align 8
  %49 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %50 = call %struct.aa_label* @aa_get_newest_label(%struct.aa_label* %49)
  %51 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %5, align 8
  %52 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %51, i32 0, i32 0
  store %struct.aa_label* %50, %struct.aa_label** %52, align 8
  %53 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %54 = call i32 @aa_put_label(%struct.aa_label* %53)
  br label %55

55:                                               ; preds = %45, %39, %34
  %56 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %57 = call i64 @unconfined(%struct.aa_label* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %61 = call i64 @labels_ns(%struct.aa_label* %60)
  %62 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %63 = call i64 @labels_ns(%struct.aa_label* %62)
  %64 = icmp ne i64 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59, %55
  %66 = load i32, i32* @current, align 4
  %67 = call %struct.aa_task_ctx* @task_ctx(i32 %66)
  %68 = call i32 @aa_clear_task_ctx_trans(%struct.aa_task_ctx* %67)
  br label %69

69:                                               ; preds = %65, %59
  %70 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %71 = call i32 @aa_get_label(%struct.aa_label* %70)
  %72 = load %struct.cred*, %struct.cred** %6, align 8
  %73 = call %struct.aa_label* @cred_label(%struct.cred* %72)
  %74 = call i32 @aa_put_label(%struct.aa_label* %73)
  %75 = load %struct.cred*, %struct.cred** %6, align 8
  %76 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %77 = call i32 @set_cred_label(%struct.cred* %75, %struct.aa_label* %76)
  %78 = load %struct.cred*, %struct.cred** %6, align 8
  %79 = call i32 @commit_creds(%struct.cred* %78)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %69, %31, %24, %19
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.aa_label* @aa_current_raw_label(...) #1

declare dso_local %struct.aa_task_ctx* @task_ctx(i32) #1

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i64 @current_cred(...) #1

declare dso_local i64 @current_real_cred(...) #1

declare dso_local %struct.cred* @prepare_creds(...) #1

declare dso_local i64 @label_is_stale(%struct.aa_label*) #1

declare dso_local %struct.aa_label* @aa_get_newest_label(%struct.aa_label*) #1

declare dso_local i32 @aa_put_label(%struct.aa_label*) #1

declare dso_local i64 @unconfined(%struct.aa_label*) #1

declare dso_local i64 @labels_ns(%struct.aa_label*) #1

declare dso_local i32 @aa_clear_task_ctx_trans(%struct.aa_task_ctx*) #1

declare dso_local i32 @aa_get_label(%struct.aa_label*) #1

declare dso_local %struct.aa_label* @cred_label(%struct.cred*) #1

declare dso_local i32 @set_cred_label(%struct.cred*, %struct.aa_label*) #1

declare dso_local i32 @commit_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
