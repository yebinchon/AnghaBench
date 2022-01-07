; ModuleID = '/home/carl/AnghaBench/linux/security/loadpin/extr_loadpin.c_loadpin_read_file.c'
source_filename = "/home/carl/AnghaBench/linux/security/loadpin/extr_loadpin.c_loadpin_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.super_block* }

@ignore_read_file_id = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"pinning-excluded\00", align 1
@enforce = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"old-api-pinning-ignored\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"old-api-denied\00", align 1
@EPERM = common dso_local global i32 0, align 4
@pinned_root_spinlock = common dso_local global i32 0, align 4
@pinned_root = common dso_local global %struct.super_block* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"pinned\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"pinning-ignored\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"denied\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32)* @loadpin_read_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loadpin_read_file(%struct.file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i8*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i8* @kernel_read_file_id_str(i32 %8)
  store i8* %9, i8** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i64*, i64** @ignore_read_file_id, align 8
  %12 = call i32 @ARRAY_SIZE(i64* %11)
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load i64*, i64** @ignore_read_file_id, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = call i32 @report_load(i8* %22, %struct.file* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %85

25:                                               ; preds = %14, %2
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = icmp ne %struct.file* %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @enforce, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @report_load(i8* %32, %struct.file* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %85

34:                                               ; preds = %28
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @report_load(i8* %35, %struct.file* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %85

39:                                               ; preds = %25
  %40 = load %struct.file*, %struct.file** %4, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.super_block*, %struct.super_block** %44, align 8
  store %struct.super_block* %45, %struct.super_block** %6, align 8
  %46 = call i32 @spin_lock(i32* @pinned_root_spinlock)
  %47 = load %struct.super_block*, %struct.super_block** @pinned_root, align 8
  %48 = icmp ne %struct.super_block* %47, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %39
  %50 = load %struct.super_block*, %struct.super_block** %6, align 8
  store %struct.super_block* %50, %struct.super_block** @pinned_root, align 8
  %51 = call i32 @spin_unlock(i32* @pinned_root_spinlock)
  %52 = load %struct.super_block*, %struct.super_block** @pinned_root, align 8
  %53 = call i32 @check_pinning_enforcement(%struct.super_block* %52)
  %54 = load i8*, i8** %7, align 8
  %55 = load %struct.file*, %struct.file** %4, align 8
  %56 = call i32 @report_load(i8* %54, %struct.file* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %59

57:                                               ; preds = %39
  %58 = call i32 @spin_unlock(i32* @pinned_root_spinlock)
  br label %59

59:                                               ; preds = %57, %49
  %60 = load %struct.super_block*, %struct.super_block** @pinned_root, align 8
  %61 = call i64 @IS_ERR_OR_NULL(%struct.super_block* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load %struct.super_block*, %struct.super_block** %6, align 8
  %65 = load %struct.super_block*, %struct.super_block** @pinned_root, align 8
  %66 = icmp ne %struct.super_block* %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %63, %59
  %68 = load i32, i32* @enforce, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i8*, i8** %7, align 8
  %76 = load %struct.file*, %struct.file** %4, align 8
  %77 = call i32 @report_load(i8* %75, %struct.file* %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %85

78:                                               ; preds = %67
  %79 = load i8*, i8** %7, align 8
  %80 = load %struct.file*, %struct.file** %4, align 8
  %81 = call i32 @report_load(i8* %79, %struct.file* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %82 = load i32, i32* @EPERM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %85

84:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %78, %74, %34, %31, %21
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i8* @kernel_read_file_id_str(i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @report_load(i8*, %struct.file*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @check_pinning_enforcement(%struct.super_block*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.super_block*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
