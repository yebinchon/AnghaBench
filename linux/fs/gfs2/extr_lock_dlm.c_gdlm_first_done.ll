; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_gdlm_first_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_gdlm_first_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.lm_lockstruct }
%struct.lm_lockstruct = type { i32 }

@DFL_NO_DLM_OPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"mount first_done error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_sbd*)* @gdlm_first_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdlm_first_done(%struct.gfs2_sbd* %0) #0 {
  %2 = alloca %struct.gfs2_sbd*, align 8
  %3 = alloca %struct.lm_lockstruct*, align 8
  %4 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %2, align 8
  %5 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %6 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %5, i32 0, i32 0
  store %struct.lm_lockstruct* %6, %struct.lm_lockstruct** %3, align 8
  %7 = load i32, i32* @DFL_NO_DLM_OPS, align 4
  %8 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %3, align 8
  %9 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %8, i32 0, i32 0
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %22

13:                                               ; preds = %1
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %15 = call i32 @control_first_done(%struct.gfs2_sbd* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @fs_err(%struct.gfs2_sbd* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %12, %18, %13
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @control_first_done(%struct.gfs2_sbd*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
