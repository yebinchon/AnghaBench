; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c___nci_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c___nci_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32, i32, i32 }

@NCI_REQ_PEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"wait_for_completion return %ld\0A\00", align 1
@ETIMEDOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"wait_for_completion_interruptible_timeout failed %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_dev*, void (%struct.nci_dev*, i64)*, i64, i32)* @__nci_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nci_request(%struct.nci_dev* %0, void (%struct.nci_dev*, i64)* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.nci_dev*, align 8
  %6 = alloca void (%struct.nci_dev*, i64)*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %5, align 8
  store void (%struct.nci_dev*, i64)* %1, void (%struct.nci_dev*, i64)** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @NCI_REQ_PEND, align 4
  %12 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %13 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %15 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %14, i32 0, i32 2
  %16 = call i32 @reinit_completion(i32* %15)
  %17 = load void (%struct.nci_dev*, i64)*, void (%struct.nci_dev*, i64)** %6, align 8
  %18 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %19 = load i64, i64* %7, align 8
  call void %17(%struct.nci_dev* %18, i64 %19)
  %20 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %21 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %20, i32 0, i32 2
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @wait_for_completion_interruptible_timeout(i32* %21, i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i64, i64* %10, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %4
  %29 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %30 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %42 [
    i32 128, label %32
    i32 129, label %37
  ]

32:                                               ; preds = %28
  %33 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %34 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @nci_to_errno(i32 %35)
  store i32 %36, i32* %9, align 4
  br label %46

37:                                               ; preds = %28
  %38 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %39 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %46

42:                                               ; preds = %28
  %43 = load i64, i64* @ETIMEDOUT, align 8
  %44 = sub nsw i64 0, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %42, %37, %32
  br label %60

47:                                               ; preds = %4
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  %50 = load i64, i64* %10, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i64, i64* @ETIMEDOUT, align 8
  %54 = sub nsw i64 0, %53
  br label %57

55:                                               ; preds = %47
  %56 = load i64, i64* %10, align 8
  br label %57

57:                                               ; preds = %55, %52
  %58 = phi i64 [ %54, %52 ], [ %56, %55 ]
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %57, %46
  %61 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %62 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  %63 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %64 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* %9, align 4
  ret i32 %65
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @nci_to_errno(i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
