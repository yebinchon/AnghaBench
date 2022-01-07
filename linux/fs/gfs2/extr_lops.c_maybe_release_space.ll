; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.c_maybe_release_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.c_maybe_release_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_bufdata = type { %struct.TYPE_6__*, %struct.gfs2_glock* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.gfs2_glock = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.gfs2_rgrpd = type { i32, i32, i32, i32, %struct.gfs2_bitmap* }
%struct.gfs2_bitmap = type { i32, i32, i32, i32* }

@GBF_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_bufdata*)* @maybe_release_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_release_space(%struct.gfs2_bufdata* %0) #0 {
  %2 = alloca %struct.gfs2_bufdata*, align 8
  %3 = alloca %struct.gfs2_glock*, align 8
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.gfs2_rgrpd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_bitmap*, align 8
  store %struct.gfs2_bufdata* %0, %struct.gfs2_bufdata** %2, align 8
  %8 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %2, align 8
  %9 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %8, i32 0, i32 1
  %10 = load %struct.gfs2_glock*, %struct.gfs2_glock** %9, align 8
  store %struct.gfs2_glock* %10, %struct.gfs2_glock** %3, align 8
  %11 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %12 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  store %struct.gfs2_sbd* %14, %struct.gfs2_sbd** %4, align 8
  %15 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %16 = call %struct.gfs2_rgrpd* @gfs2_glock2rgrp(%struct.gfs2_glock* %15)
  store %struct.gfs2_rgrpd* %16, %struct.gfs2_rgrpd** %5, align 8
  %17 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %2, align 8
  %18 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %23 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub i32 %21, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %28 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %27, i32 0, i32 4
  %29 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %29, i64 %31
  store %struct.gfs2_bitmap* %32, %struct.gfs2_bitmap** %7, align 8
  %33 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %7, align 8
  %34 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %1
  br label %90

38:                                               ; preds = %1
  %39 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %40 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %46 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %47 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %2, align 8
  %50 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %7, align 8
  %53 = call i32 @gfs2_rgrp_send_discards(%struct.gfs2_sbd* %45, i32 %48, %struct.TYPE_6__* %51, %struct.gfs2_bitmap* %52, i32 1, i32* null)
  br label %54

54:                                               ; preds = %44, %38
  %55 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %7, align 8
  %56 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %7, align 8
  %59 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %2, align 8
  %64 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %7, align 8
  %69 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %67, %70
  %72 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %7, align 8
  %73 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @memcpy(i32* %62, i32 %71, i32 %74)
  %76 = load i32, i32* @GBF_FULL, align 4
  %77 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %7, align 8
  %78 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %77, i32 0, i32 1
  %79 = call i32 @clear_bit(i32 %76, i32* %78)
  %80 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %81 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %84 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %86 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %89 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %54, %37
  ret void
}

declare dso_local %struct.gfs2_rgrpd* @gfs2_glock2rgrp(%struct.gfs2_glock*) #1

declare dso_local i32 @gfs2_rgrp_send_discards(%struct.gfs2_sbd*, i32, %struct.TYPE_6__*, %struct.gfs2_bitmap*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
