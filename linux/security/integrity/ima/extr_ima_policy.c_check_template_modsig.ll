; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_policy.c_check_template_modsig.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_policy.c_check_template_modsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ima_template_desc = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@check_template_modsig.checked = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"modsig\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"d-modsig\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"template with 'modsig' field also needs 'd-modsig' field\0A\00", align 1
@MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ima_template_desc*)* @check_template_modsig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_template_modsig(%struct.ima_template_desc* %0) #0 {
  %2 = alloca %struct.ima_template_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ima_template_desc* %0, %struct.ima_template_desc** %2, align 8
  %6 = load i32, i32* @check_template_modsig.checked, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %56

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %44, %9
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.ima_template_desc*, %struct.ima_template_desc** %2, align 8
  %13 = getelementptr inbounds %struct.ima_template_desc, %struct.ima_template_desc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %10
  %17 = load %struct.ima_template_desc*, %struct.ima_template_desc** %2, align 8
  %18 = getelementptr inbounds %struct.ima_template_desc, %struct.ima_template_desc* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strcmp(i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %43

29:                                               ; preds = %16
  %30 = load %struct.ima_template_desc*, %struct.ima_template_desc** %2, align 8
  %31 = getelementptr inbounds %struct.ima_template_desc, %struct.ima_template_desc* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @strcmp(i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %29
  br label %43

43:                                               ; preds = %42, %28
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %10

47:                                               ; preds = %10
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = call i32 @pr_notice(i32 ptrtoint ([58 x i8]* @.str.2 to i32))
  br label %55

55:                                               ; preds = %53, %50, %47
  store i32 1, i32* @check_template_modsig.checked, align 4
  br label %56

56:                                               ; preds = %55, %8
  ret void
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @pr_notice(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
