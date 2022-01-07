; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_glock.h_glock_set_object.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_glock.h_glock_set_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { %struct.TYPE_4__, i32*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_glock*, i8*)* @glock_set_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glock_set_object(%struct.gfs2_glock* %0, i8* %1) #0 {
  %3 = alloca %struct.gfs2_glock*, align 8
  %4 = alloca i8*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %6 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %10 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %14 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i64 @gfs2_assert_warn(i32 %12, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %22 = call i32 @gfs2_dump_glock(i32* null, %struct.gfs2_glock* %21, i32 1)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load i8*, i8** %4, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %27 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %29 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @gfs2_assert_warn(i32, i32) #1

declare dso_local i32 @gfs2_dump_glock(i32*, %struct.gfs2_glock*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
