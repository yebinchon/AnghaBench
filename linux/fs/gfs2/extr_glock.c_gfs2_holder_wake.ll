; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_glock.c_gfs2_holder_wake.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_glock.c_gfs2_holder_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_holder = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32 }

@HIF_WAIT = common dso_local global i32 0, align 4
@GL_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_holder*)* @gfs2_holder_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_holder_wake(%struct.gfs2_holder* %0) #0 {
  %2 = alloca %struct.gfs2_holder*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  store %struct.gfs2_holder* %0, %struct.gfs2_holder** %2, align 8
  %4 = load i32, i32* @HIF_WAIT, align 4
  %5 = load %struct.gfs2_holder*, %struct.gfs2_holder** %2, align 8
  %6 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %5, i32 0, i32 2
  %7 = call i32 @clear_bit(i32 %4, i32* %6)
  %8 = call i32 (...) @smp_mb__after_atomic()
  %9 = load %struct.gfs2_holder*, %struct.gfs2_holder** %2, align 8
  %10 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %9, i32 0, i32 2
  %11 = load i32, i32* @HIF_WAIT, align 4
  %12 = call i32 @wake_up_bit(i32* %10, i32 %11)
  %13 = load %struct.gfs2_holder*, %struct.gfs2_holder** %2, align 8
  %14 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @GL_ASYNC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.gfs2_holder*, %struct.gfs2_holder** %2, align 8
  %21 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %24, align 8
  store %struct.gfs2_sbd* %25, %struct.gfs2_sbd** %3, align 8
  %26 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %27 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %26, i32 0, i32 0
  %28 = call i32 @wake_up(i32* %27)
  br label %29

29:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
