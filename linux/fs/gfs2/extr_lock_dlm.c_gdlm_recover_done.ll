; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_gdlm_recover_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_gdlm_recover_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_slot = type { i32 }
%struct.gfs2_sbd = type { i32, %struct.lm_lockstruct }
%struct.lm_lockstruct = type { i32, i32, i32, i8*, i8* }

@DFL_UNMOUNT = common dso_local global i32 0, align 4
@gfs2_control_wq = common dso_local global i32 0, align 4
@DFL_DLM_RECOVERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dlm_slot*, i32, i32, i8*)* @gdlm_recover_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdlm_recover_done(i8* %0, %struct.dlm_slot* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dlm_slot*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.gfs2_sbd*, align 8
  %12 = alloca %struct.lm_lockstruct*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.dlm_slot* %1, %struct.dlm_slot** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.gfs2_sbd*
  store %struct.gfs2_sbd* %14, %struct.gfs2_sbd** %11, align 8
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %16 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %15, i32 0, i32 1
  store %struct.lm_lockstruct* %16, %struct.lm_lockstruct** %12, align 8
  %17 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %18 = load %struct.dlm_slot*, %struct.dlm_slot** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @set_recover_size(%struct.gfs2_sbd* %17, %struct.dlm_slot* %18, i32 %19)
  %21 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %12, align 8
  %22 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %21, i32 0, i32 1
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load i8*, i8** %10, align 8
  %25 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %12, align 8
  %26 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %12, align 8
  %28 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %5
  %32 = load i8*, i8** %10, align 8
  %33 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %12, align 8
  %34 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %12, align 8
  %38 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %31, %5
  %40 = load i32, i32* @DFL_UNMOUNT, align 4
  %41 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %12, align 8
  %42 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %41, i32 0, i32 2
  %43 = call i32 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @gfs2_control_wq, align 4
  %47 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %48 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %47, i32 0, i32 0
  %49 = call i32 @queue_delayed_work(i32 %46, i32* %48, i32 0)
  br label %50

50:                                               ; preds = %45, %39
  %51 = load i32, i32* @DFL_DLM_RECOVERY, align 4
  %52 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %12, align 8
  %53 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %52, i32 0, i32 2
  %54 = call i32 @clear_bit(i32 %51, i32* %53)
  %55 = call i32 (...) @smp_mb__after_atomic()
  %56 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %12, align 8
  %57 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %56, i32 0, i32 2
  %58 = load i32, i32* @DFL_DLM_RECOVERY, align 4
  %59 = call i32 @wake_up_bit(i32* %57, i32 %58)
  %60 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %12, align 8
  %61 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %60, i32 0, i32 1
  %62 = call i32 @spin_unlock(i32* %61)
  ret void
}

declare dso_local i32 @set_recover_size(%struct.gfs2_sbd*, %struct.dlm_slot*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
