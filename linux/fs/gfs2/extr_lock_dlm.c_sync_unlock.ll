; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_sync_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_sync_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.lm_lockstruct }
%struct.lm_lockstruct = type { i32, i32 }
%struct.dlm_lksb = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"%s lkid %x error %d\0A\00", align 1
@DLM_EUNLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%s lkid %x status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, %struct.dlm_lksb*, i8*)* @sync_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_unlock(%struct.gfs2_sbd* %0, %struct.dlm_lksb* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca %struct.dlm_lksb*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lm_lockstruct*, align 8
  %9 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %5, align 8
  store %struct.dlm_lksb* %1, %struct.dlm_lksb** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %11 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %10, i32 0, i32 0
  store %struct.lm_lockstruct* %11, %struct.lm_lockstruct** %8, align 8
  %12 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %8, align 8
  %13 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dlm_lksb*, %struct.dlm_lksb** %6, align 8
  %16 = getelementptr inbounds %struct.dlm_lksb, %struct.dlm_lksb* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dlm_lksb*, %struct.dlm_lksb** %6, align 8
  %19 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %8, align 8
  %20 = call i32 @dlm_unlock(i32 %14, i32 %17, i32 0, %struct.dlm_lksb* %18, %struct.lm_lockstruct* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.dlm_lksb*, %struct.dlm_lksb** %6, align 8
  %27 = getelementptr inbounds %struct.dlm_lksb, %struct.dlm_lksb* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @fs_err(%struct.gfs2_sbd* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %28, i32 %29)
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %53

32:                                               ; preds = %3
  %33 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %8, align 8
  %34 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %33, i32 0, i32 0
  %35 = call i32 @wait_for_completion(i32* %34)
  %36 = load %struct.dlm_lksb*, %struct.dlm_lksb** %6, align 8
  %37 = getelementptr inbounds %struct.dlm_lksb, %struct.dlm_lksb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DLM_EUNLOCK, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %32
  %43 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.dlm_lksb*, %struct.dlm_lksb** %6, align 8
  %46 = getelementptr inbounds %struct.dlm_lksb, %struct.dlm_lksb* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dlm_lksb*, %struct.dlm_lksb** %6, align 8
  %49 = getelementptr inbounds %struct.dlm_lksb, %struct.dlm_lksb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @fs_err(%struct.gfs2_sbd* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 %47, i32 %50)
  store i32 -1, i32* %4, align 4
  br label %53

52:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %42, %23
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @dlm_unlock(i32, i32, i32, %struct.dlm_lksb*, %struct.lm_lockstruct*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i8*, i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
