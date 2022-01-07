; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_gdlm_unmount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_gdlm_unmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, %struct.lm_lockstruct }
%struct.lm_lockstruct = type { i32*, i32, i32 }

@DFL_NO_DLM_OPS = common dso_local global i32 0, align 4
@DFL_UNMOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_sbd*)* @gdlm_unmount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdlm_unmount(%struct.gfs2_sbd* %0) #0 {
  %2 = alloca %struct.gfs2_sbd*, align 8
  %3 = alloca %struct.lm_lockstruct*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %2, align 8
  %4 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %5 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %4, i32 0, i32 1
  store %struct.lm_lockstruct* %5, %struct.lm_lockstruct** %3, align 8
  %6 = load i32, i32* @DFL_NO_DLM_OPS, align 4
  %7 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %3, align 8
  %8 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %7, i32 0, i32 2
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %3, align 8
  %14 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %13, i32 0, i32 1
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load i32, i32* @DFL_UNMOUNT, align 4
  %17 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %3, align 8
  %18 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %17, i32 0, i32 2
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  %20 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %3, align 8
  %21 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %20, i32 0, i32 1
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %24 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %23, i32 0, i32 0
  %25 = call i32 @flush_delayed_work(i32* %24)
  br label %26

26:                                               ; preds = %12, %11
  %27 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %3, align 8
  %28 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %3, align 8
  %33 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @dlm_release_lockspace(i32* %34, i32 2)
  %36 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %3, align 8
  %37 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %31, %26
  %39 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %3, align 8
  %40 = call i32 @free_recover_size(%struct.lm_lockstruct* %39)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @flush_delayed_work(i32*) #1

declare dso_local i32 @dlm_release_lockspace(i32*, i32) #1

declare dso_local i32 @free_recover_size(%struct.lm_lockstruct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
