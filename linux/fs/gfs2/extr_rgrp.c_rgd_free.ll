; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_rgd_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_rgd_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rgrpd = type { i64, i64 }
%struct.gfs2_blkreserv = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.gfs2_rgrpd*, %struct.gfs2_blkreserv*)* @rgd_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rgd_free(%struct.gfs2_rgrpd* %0, %struct.gfs2_blkreserv* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.gfs2_rgrpd*, align 8
  %5 = alloca %struct.gfs2_blkreserv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.gfs2_rgrpd* %0, %struct.gfs2_rgrpd** %4, align 8
  store %struct.gfs2_blkreserv* %1, %struct.gfs2_blkreserv** %5, align 8
  %8 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %9 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %5, align 8
  %12 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON_ONCE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %40

19:                                               ; preds = %2
  %20 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %21 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %5, align 8
  %24 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  store i64 %26, i64* %6, align 8
  %27 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %28 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  store i64 0, i64* %6, align 8
  br label %33

33:                                               ; preds = %32, %19
  %34 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %35 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = sub nsw i64 %36, %37
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %33, %18
  %41 = load i64, i64* %3, align 8
  ret i64 %41
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
