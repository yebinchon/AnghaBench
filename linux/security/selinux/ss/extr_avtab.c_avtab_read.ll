; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_avtab.c_avtab_read.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_avtab.c_avtab_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avtab = type { i32 }
%struct.policydb = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"SELinux: avtab: truncated table\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"SELinux: avtab: table is empty\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@avtab_insertf = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"SELinux: avtab: out of memory\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"SELinux: avtab: duplicate entry\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avtab_read(%struct.avtab* %0, i8* %1, %struct.policydb* %2) #0 {
  %4 = alloca %struct.avtab*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.policydb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1 x i32], align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.avtab* %0, %struct.avtab** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.policydb* %2, %struct.policydb** %6, align 8
  %11 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @next_entry(i32* %11, i8* %12, i32 8)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %71

18:                                               ; preds = %3
  %19 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @le32_to_cpu(i32 %20)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %71

28:                                               ; preds = %18
  %29 = load %struct.avtab*, %struct.avtab** %4, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @avtab_alloc(%struct.avtab* %29, i64 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %71

35:                                               ; preds = %28
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %65, %35
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %36
  %41 = load %struct.avtab*, %struct.avtab** %4, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.policydb*, %struct.policydb** %6, align 8
  %44 = load i32, i32* @avtab_insertf, align 4
  %45 = call i32 @avtab_read_item(%struct.avtab* %41, i8* %42, %struct.policydb* %43, i32 %44, i32* null)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %63

55:                                               ; preds = %48
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @EEXIST, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %55
  br label %63

63:                                               ; preds = %62, %53
  br label %71

64:                                               ; preds = %40
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %10, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %10, align 8
  br label %36

68:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %71, %68
  %70 = load i32, i32* %7, align 4
  ret i32 %70

71:                                               ; preds = %63, %34, %24, %16
  %72 = load %struct.avtab*, %struct.avtab** %4, align 8
  %73 = call i32 @avtab_destroy(%struct.avtab* %72)
  br label %69
}

declare dso_local i32 @next_entry(i32*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @avtab_alloc(%struct.avtab*, i64) #1

declare dso_local i32 @avtab_read_item(%struct.avtab*, i8*, %struct.policydb*, i32, i32*) #1

declare dso_local i32 @avtab_destroy(%struct.avtab*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
