; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_check_blk_type.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_check_blk_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }
%struct.gfs2_rgrpd = type { i32 }
%struct.gfs2_holder = type { i32 }
%struct.gfs2_rbm = type { %struct.gfs2_rgrpd* }

@EINVAL = common dso_local global i32 0, align 4
@LM_ST_SHARED = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_check_blk_type(%struct.gfs2_sbd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_rgrpd*, align 8
  %8 = alloca %struct.gfs2_holder, align 4
  %9 = alloca %struct.gfs2_rbm, align 8
  %10 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd* %13, i32 %14, i32 1)
  store %struct.gfs2_rgrpd* %15, %struct.gfs2_rgrpd** %7, align 8
  %16 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %7, align 8
  %17 = icmp ne %struct.gfs2_rgrpd* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %46

19:                                               ; preds = %3
  %20 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %7, align 8
  %21 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @LM_ST_SHARED, align 4
  %24 = call i32 @gfs2_glock_nq_init(i32 %22, i32 %23, i32 0, %struct.gfs2_holder* %8)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %46

28:                                               ; preds = %19
  %29 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %7, align 8
  %30 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %9, i32 0, i32 0
  store %struct.gfs2_rgrpd* %29, %struct.gfs2_rgrpd** %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @gfs2_rbm_from_block(%struct.gfs2_rbm* %9, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @WARN_ON_ONCE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %46

37:                                               ; preds = %28
  %38 = call i32 @gfs2_testbit(%struct.gfs2_rbm* %9, i32 0)
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @ESTALE, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %41, %37
  %45 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %8)
  br label %46

46:                                               ; preds = %44, %36, %27, %18
  %47 = load i32, i32* %10, align 4
  ret i32 %47
}

declare dso_local %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_rbm_from_block(%struct.gfs2_rbm*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @gfs2_testbit(%struct.gfs2_rbm*, i32) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
