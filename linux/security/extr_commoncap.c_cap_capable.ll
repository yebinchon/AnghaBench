; ModuleID = '/home/carl/AnghaBench/linux/security/extr_commoncap.c_cap_capable.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_commoncap.c_cap_capable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32, %struct.user_namespace*, i32 }
%struct.user_namespace = type { i64, %struct.user_namespace*, i32 }

@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cap_capable(%struct.cred* %0, %struct.user_namespace* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cred*, align 8
  %7 = alloca %struct.user_namespace*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.user_namespace*, align 8
  store %struct.cred* %0, %struct.cred** %6, align 8
  store %struct.user_namespace* %1, %struct.user_namespace** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  store %struct.user_namespace* %11, %struct.user_namespace** %10, align 8
  br label %12

12:                                               ; preds = %62, %4
  %13 = load %struct.user_namespace*, %struct.user_namespace** %10, align 8
  %14 = load %struct.cred*, %struct.cred** %6, align 8
  %15 = getelementptr inbounds %struct.cred, %struct.cred* %14, i32 0, i32 1
  %16 = load %struct.user_namespace*, %struct.user_namespace** %15, align 8
  %17 = icmp eq %struct.user_namespace* %13, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = load %struct.cred*, %struct.cred** %6, align 8
  %20 = getelementptr inbounds %struct.cred, %struct.cred* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @cap_raised(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @EPERM, align 4
  %28 = sub nsw i32 0, %27
  br label %29

29:                                               ; preds = %26, %25
  %30 = phi i32 [ 0, %25 ], [ %28, %26 ]
  store i32 %30, i32* %5, align 4
  br label %66

31:                                               ; preds = %12
  %32 = load %struct.user_namespace*, %struct.user_namespace** %10, align 8
  %33 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.cred*, %struct.cred** %6, align 8
  %36 = getelementptr inbounds %struct.cred, %struct.cred* %35, i32 0, i32 1
  %37 = load %struct.user_namespace*, %struct.user_namespace** %36, align 8
  %38 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sle i64 %34, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @EPERM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %66

44:                                               ; preds = %31
  %45 = load %struct.user_namespace*, %struct.user_namespace** %10, align 8
  %46 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %45, i32 0, i32 1
  %47 = load %struct.user_namespace*, %struct.user_namespace** %46, align 8
  %48 = load %struct.cred*, %struct.cred** %6, align 8
  %49 = getelementptr inbounds %struct.cred, %struct.cred* %48, i32 0, i32 1
  %50 = load %struct.user_namespace*, %struct.user_namespace** %49, align 8
  %51 = icmp eq %struct.user_namespace* %47, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %44
  %53 = load %struct.user_namespace*, %struct.user_namespace** %10, align 8
  %54 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.cred*, %struct.cred** %6, align 8
  %57 = getelementptr inbounds %struct.cred, %struct.cred* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @uid_eq(i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %66

62:                                               ; preds = %52, %44
  %63 = load %struct.user_namespace*, %struct.user_namespace** %10, align 8
  %64 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %63, i32 0, i32 1
  %65 = load %struct.user_namespace*, %struct.user_namespace** %64, align 8
  store %struct.user_namespace* %65, %struct.user_namespace** %10, align 8
  br label %12

66:                                               ; preds = %61, %41, %29
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i64 @cap_raised(i32, i32) #1

declare dso_local i64 @uid_eq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
