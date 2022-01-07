; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_main.c_ima_post_read_file.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_main.c_ima_post_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@READING_FIRMWARE = common dso_local global i32 0, align 4
@ima_appraise = common dso_local global i32 0, align 4
@IMA_APPRAISE_FIRMWARE = common dso_local global i32 0, align 4
@IMA_APPRAISE_ENFORCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Prevent firmware loading_store.\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@READING_X509_CERTIFICATE = common dso_local global i32 0, align 4
@read_idmap = common dso_local global i64* null, align 8
@FILE_CHECK = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ima_post_read_file(%struct.file* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.file*, %struct.file** %6, align 8
  %13 = icmp ne %struct.file* %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @READING_FIRMWARE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load i32, i32* @ima_appraise, align 4
  %20 = load i32, i32* @IMA_APPRAISE_FIRMWARE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load i32, i32* @ima_appraise, align 4
  %25 = load i32, i32* @IMA_APPRAISE_ENFORCE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EACCES, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %83

32:                                               ; preds = %23, %18
  store i32 0, i32* %5, align 4
  br label %83

33:                                               ; preds = %14, %4
  %34 = load %struct.file*, %struct.file** %6, align 8
  %35 = icmp ne %struct.file* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @READING_X509_CERTIFICATE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %83

41:                                               ; preds = %36, %33
  %42 = load %struct.file*, %struct.file** %6, align 8
  %43 = icmp ne %struct.file* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47, %44, %41
  %51 = load i32, i32* @ima_appraise, align 4
  %52 = load i32, i32* @IMA_APPRAISE_ENFORCE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EACCES, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %83

58:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %83

59:                                               ; preds = %47
  %60 = load i64*, i64** @read_idmap, align 8
  %61 = load i32, i32* %9, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %70

67:                                               ; preds = %59
  %68 = load i32, i32* @FILE_CHECK, align 4
  %69 = sext i32 %68 to i64
  br label %70

70:                                               ; preds = %67, %66
  %71 = phi i64 [ %64, %66 ], [ %69, %67 ]
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* @current, align 4
  %74 = call i32 @security_task_getsecid(i32 %73, i32* %11)
  %75 = load %struct.file*, %struct.file** %6, align 8
  %76 = call i32 (...) @current_cred()
  %77 = load i32, i32* %11, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @MAY_READ, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @process_measurement(%struct.file* %75, i32 %76, i32 %77, i8* %78, i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %70, %58, %55, %40, %32, %28
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @security_task_getsecid(i32, i32*) #1

declare dso_local i32 @process_measurement(%struct.file*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @current_cred(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
