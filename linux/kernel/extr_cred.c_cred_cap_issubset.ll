; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_cred.c_cred_cap_issubset.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_cred.c_cred_cap_issubset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type { i32, %struct.user_namespace* }
%struct.cred = type { i32, i32, %struct.user_namespace* }

@init_user_ns = common dso_local global %struct.user_namespace zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*, %struct.cred*)* @cred_cap_issubset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cred_cap_issubset(%struct.cred* %0, %struct.cred* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cred*, align 8
  %5 = alloca %struct.cred*, align 8
  %6 = alloca %struct.user_namespace*, align 8
  %7 = alloca %struct.user_namespace*, align 8
  store %struct.cred* %0, %struct.cred** %4, align 8
  store %struct.cred* %1, %struct.cred** %5, align 8
  %8 = load %struct.cred*, %struct.cred** %4, align 8
  %9 = getelementptr inbounds %struct.cred, %struct.cred* %8, i32 0, i32 2
  %10 = load %struct.user_namespace*, %struct.user_namespace** %9, align 8
  store %struct.user_namespace* %10, %struct.user_namespace** %6, align 8
  %11 = load %struct.cred*, %struct.cred** %5, align 8
  %12 = getelementptr inbounds %struct.cred, %struct.cred* %11, i32 0, i32 2
  %13 = load %struct.user_namespace*, %struct.user_namespace** %12, align 8
  store %struct.user_namespace* %13, %struct.user_namespace** %7, align 8
  %14 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %15 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %16 = icmp eq %struct.user_namespace* %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.cred*, %struct.cred** %5, align 8
  %19 = getelementptr inbounds %struct.cred, %struct.cred* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cred*, %struct.cred** %4, align 8
  %22 = getelementptr inbounds %struct.cred, %struct.cred* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cap_issubset(i32 %20, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %51

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %46, %25
  %27 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %28 = icmp ne %struct.user_namespace* %27, @init_user_ns
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %31 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %32 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %31, i32 0, i32 1
  %33 = load %struct.user_namespace*, %struct.user_namespace** %32, align 8
  %34 = icmp eq %struct.user_namespace* %30, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %37 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.cred*, %struct.cred** %4, align 8
  %40 = getelementptr inbounds %struct.cred, %struct.cred* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @uid_eq(i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %51

45:                                               ; preds = %35, %29
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %48 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %47, i32 0, i32 1
  %49 = load %struct.user_namespace*, %struct.user_namespace** %48, align 8
  store %struct.user_namespace* %49, %struct.user_namespace** %7, align 8
  br label %26

50:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %44, %17
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @cap_issubset(i32, i32) #1

declare dso_local i64 @uid_eq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
