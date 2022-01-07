; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_dlm_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_dlm_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.ocfs2_lock_res = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"0x%x\09\00", align 1
@OCFS2_DLM_DEBUG_STR_VERSION = common dso_local global i32 0, align 4
@OCFS2_LOCK_TYPE_DENTRY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"%.*s%08x\09\00", align 1
@OCFS2_DENTRY_LOCK_INO_START = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"%.*s\09\00", align 1
@OCFS2_LOCK_ID_MAX_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"%d\090x%lx\090x%x\090x%x\09%u\09%u\09%d\09%d\09\00", align 1
@DLM_LVB_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"%u\09%u\09%u\09%u\09%llu\09%llu\09%u\09%u\09%u\09%llu\09%llu\09%llu\09\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @ocfs2_dlm_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dlm_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ocfs2_lock_res*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ocfs2_lock_res*
  store %struct.ocfs2_lock_res* %10, %struct.ocfs2_lock_res** %8, align 8
  %11 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %8, align 8
  %12 = icmp ne %struct.ocfs2_lock_res* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %94

16:                                               ; preds = %2
  %17 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %18 = load i32, i32* @OCFS2_DLM_DEBUG_STR_VERSION, align 4
  %19 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %8, align 8
  %21 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @OCFS2_LOCK_TYPE_DENTRY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %16
  %26 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %27 = load i64, i64* @OCFS2_DENTRY_LOCK_INO_START, align 8
  %28 = sub nsw i64 %27, 1
  %29 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %8, align 8
  %30 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %8, align 8
  %33 = call i64 @ocfs2_get_dentry_lock_ino(%struct.ocfs2_lock_res* %32)
  %34 = trunc i64 %33 to i32
  %35 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %28, i32 %31, i32 %34)
  br label %43

36:                                               ; preds = %16
  %37 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %38 = load i32, i32* @OCFS2_LOCK_ID_MAX_LEN, align 4
  %39 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %8, align 8
  %40 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %36, %25
  %44 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %45 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %8, align 8
  %46 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %8, align 8
  %49 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %8, align 8
  %52 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %8, align 8
  %55 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %8, align 8
  %58 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %8, align 8
  %61 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %8, align 8
  %64 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %8, align 8
  %67 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %47, i32 %50, i32 %53, i32 %56, i32 %59, i32 %62, i32 %65, i32 %68)
  %70 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %8, align 8
  %71 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %70, i32 0, i32 1
  %72 = call i8* @ocfs2_dlm_lvb(i32* %71)
  store i8* %72, i8** %7, align 8
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %86, %43
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @DLM_LVB_LEN, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %77
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %73

89:                                               ; preds = %73
  %90 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %91 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %90, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0, i64 0, i64 0)
  %92 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %93 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %89, %13
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i64 @ocfs2_get_dentry_lock_ino(%struct.ocfs2_lock_res*) #1

declare dso_local i8* @ocfs2_dlm_lvb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
