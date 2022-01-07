; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_recovery.c_gfs2_recovery_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_recovery.c_gfs2_recovery_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.lm_lockstruct, i32 }
%struct.lm_lockstruct = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.gfs2_sbd*, i32, i32)* }

@.str = private unnamed_addr constant [7 x i8] c"JID=%u\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"RECOVERY=%s\00", align 1
@LM_RD_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Done\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Failed\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_sbd*, i32, i32)* @gfs2_recovery_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_recovery_done(%struct.gfs2_sbd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [20 x i8], align 16
  %8 = alloca [20 x i8], align 16
  %9 = alloca [3 x i8*], align 16
  %10 = alloca %struct.lm_lockstruct*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 0
  %12 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  store i8* %12, i8** %11, align 8
  %13 = getelementptr inbounds i8*, i8** %11, i64 1
  %14 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 1
  store i8* null, i8** %15, align 8
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %17 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %16, i32 0, i32 0
  store %struct.lm_lockstruct* %17, %struct.lm_lockstruct** %10, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %10, align 8
  %20 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %10, align 8
  %23 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i8*, i8*, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @LM_RD_SUCCESS, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %33 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %35 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %34, i32 0, i32 1
  %36 = load i32, i32* @KOBJ_CHANGE, align 4
  %37 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 0
  %38 = call i32 @kobject_uevent_env(i32* %35, i32 %36, i8** %37)
  %39 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %40 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.gfs2_sbd*, i32, i32)*, i32 (%struct.gfs2_sbd*, i32, i32)** %43, align 8
  %45 = icmp ne i32 (%struct.gfs2_sbd*, i32, i32)* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %3
  %47 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %48 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.gfs2_sbd*, i32, i32)*, i32 (%struct.gfs2_sbd*, i32, i32)** %51, align 8
  %53 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 %52(%struct.gfs2_sbd* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %46, %3
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
