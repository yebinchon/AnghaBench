; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_gfs2_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_gfs2_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_lkstats = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_lkstats*, i32, i32)* @gfs2_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_update_stats(%struct.gfs2_lkstats* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gfs2_lkstats*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gfs2_lkstats* %0, %struct.gfs2_lkstats** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.gfs2_lkstats*, %struct.gfs2_lkstats** %4, align 8
  %10 = getelementptr inbounds %struct.gfs2_lkstats, %struct.gfs2_lkstats* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %8, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = ashr i32 %17, 3
  %19 = load %struct.gfs2_lkstats*, %struct.gfs2_lkstats** %4, align 8
  %20 = getelementptr inbounds %struct.gfs2_lkstats, %struct.gfs2_lkstats* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, %18
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %5, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @abs(i32 %29) #2
  %31 = load %struct.gfs2_lkstats*, %struct.gfs2_lkstats** %4, align 8
  %32 = getelementptr inbounds %struct.gfs2_lkstats, %struct.gfs2_lkstats* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %30, %37
  %39 = ashr i32 %38, 2
  %40 = load %struct.gfs2_lkstats*, %struct.gfs2_lkstats** %4, align 8
  %41 = getelementptr inbounds %struct.gfs2_lkstats, %struct.gfs2_lkstats* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, %39
  store i32 %47, i32* %45, align 4
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
