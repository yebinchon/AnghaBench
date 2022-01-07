; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_sync_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_sync_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.lm_lockstruct }
%struct.lm_lockstruct = type { i32, i32 }
%struct.dlm_lksb = type { i32, i32 }

@GDLM_STRNAME_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%8x%16x\00", align 1
@LM_TYPE_NONDISK = common dso_local global i32 0, align 4
@sync_wait_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%s lkid %x flags %x mode %d error %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"%s lkid %x flags %x mode %d status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i32, i32, i32, %struct.dlm_lksb*, i8*)* @sync_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_lock(%struct.gfs2_sbd* %0, i32 %1, i32 %2, i32 %3, %struct.dlm_lksb* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dlm_lksb*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.lm_lockstruct*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.dlm_lksb* %4, %struct.dlm_lksb** %12, align 8
  store i8* %5, i8** %13, align 8
  %20 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %21 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %20, i32 0, i32 0
  store %struct.lm_lockstruct* %21, %struct.lm_lockstruct** %14, align 8
  %22 = load i32, i32* @GDLM_STRNAME_BYTES, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %15, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %16, align 8
  %26 = load i32, i32* @GDLM_STRNAME_BYTES, align 4
  %27 = call i32 @memset(i8* %25, i32 0, i32 %26)
  %28 = load i32, i32* @GDLM_STRNAME_BYTES, align 4
  %29 = load i32, i32* @LM_TYPE_NONDISK, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @snprintf(i8* %25, i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %14, align 8
  %33 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.dlm_lksb*, %struct.dlm_lksb** %12, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @GDLM_STRNAME_BYTES, align 4
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* @sync_wait_cb, align 4
  %41 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %14, align 8
  %42 = call i32 @dlm_lock(i32 %34, i32 %35, %struct.dlm_lksb* %36, i32 %37, i8* %25, i32 %39, i32 0, i32 %40, %struct.lm_lockstruct* %41, i32* null)
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %6
  %46 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load %struct.dlm_lksb*, %struct.dlm_lksb** %12, align 8
  %49 = getelementptr inbounds %struct.dlm_lksb, %struct.dlm_lksb* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %17, align 4
  %54 = call i32 @fs_err(%struct.gfs2_sbd* %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %47, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* %17, align 4
  store i32 %55, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %82

56:                                               ; preds = %6
  %57 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %14, align 8
  %58 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %57, i32 0, i32 0
  %59 = call i32 @wait_for_completion(i32* %58)
  %60 = load %struct.dlm_lksb*, %struct.dlm_lksb** %12, align 8
  %61 = getelementptr inbounds %struct.dlm_lksb, %struct.dlm_lksb* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %18, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %56
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* @EAGAIN, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = load %struct.dlm_lksb*, %struct.dlm_lksb** %12, align 8
  %74 = getelementptr inbounds %struct.dlm_lksb, %struct.dlm_lksb* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %18, align 4
  %79 = call i32 @fs_err(%struct.gfs2_sbd* %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %72, i32 %75, i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %70, %65, %56
  %81 = load i32, i32* %18, align 4
  store i32 %81, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %82

82:                                               ; preds = %80, %45
  %83 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @dlm_lock(i32, i32, %struct.dlm_lksb*, i32, i8*, i32, i32, i32, %struct.lm_lockstruct*, i32*) #2

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @wait_for_completion(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
