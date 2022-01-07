; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_fast_to_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_fast_to_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rgrpd = type { i32, %struct.gfs2_glock* }
%struct.gfs2_glock = type { i64, i32, i32 }

@LM_ST_UNLOCKED = common dso_local global i64 0, align 8
@GLF_DEMOTE_IN_PROGRESS = common dso_local global i32 0, align 4
@GLF_DEMOTE = common dso_local global i32 0, align 4
@GFS2_RDF_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_rgrpd*)* @fast_to_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fast_to_acquire(%struct.gfs2_rgrpd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_rgrpd*, align 8
  %4 = alloca %struct.gfs2_glock*, align 8
  store %struct.gfs2_rgrpd* %0, %struct.gfs2_rgrpd** %3, align 8
  %5 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %6 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %5, i32 0, i32 1
  %7 = load %struct.gfs2_glock*, %struct.gfs2_glock** %6, align 8
  store %struct.gfs2_glock* %7, %struct.gfs2_glock** %4, align 8
  %8 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %9 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LM_ST_UNLOCKED, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %15 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %14, i32 0, i32 2
  %16 = call i64 @list_empty(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load i32, i32* @GLF_DEMOTE_IN_PROGRESS, align 4
  %20 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %21 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %20, i32 0, i32 1
  %22 = call i32 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @GLF_DEMOTE, align 4
  %26 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %27 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %26, i32 0, i32 1
  %28 = call i32 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %40

31:                                               ; preds = %24, %18, %13, %1
  %32 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %33 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @GFS2_RDF_PREFERRED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %40

39:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %38, %30
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
