; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_control_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_control_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.lm_lockstruct }
%struct.lm_lockstruct = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"control_lock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*)* @control_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control_unlock(%struct.gfs2_sbd* %0) #0 {
  %2 = alloca %struct.gfs2_sbd*, align 8
  %3 = alloca %struct.lm_lockstruct*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %2, align 8
  %4 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %5 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %4, i32 0, i32 0
  store %struct.lm_lockstruct* %5, %struct.lm_lockstruct** %3, align 8
  %6 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %7 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %3, align 8
  %8 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %7, i32 0, i32 0
  %9 = call i32 @sync_unlock(%struct.gfs2_sbd* %6, i32* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  ret i32 %9
}

declare dso_local i32 @sync_unlock(%struct.gfs2_sbd*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
