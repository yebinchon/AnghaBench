; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_control_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_control_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.lm_lockstruct }
%struct.lm_lockstruct = type { i32 }

@GFS2_CONTROL_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"control_lock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i32, i32)* @control_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control_lock(%struct.gfs2_sbd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lm_lockstruct*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %9 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %8, i32 0, i32 0
  store %struct.lm_lockstruct* %9, %struct.lm_lockstruct** %7, align 8
  %10 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @GFS2_CONTROL_LOCK, align 4
  %14 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %7, align 8
  %15 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %14, i32 0, i32 0
  %16 = call i32 @sync_lock(%struct.gfs2_sbd* %10, i32 %11, i32 %12, i32 %13, i32* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  ret i32 %16
}

declare dso_local i32 @sync_lock(%struct.gfs2_sbd*, i32, i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
