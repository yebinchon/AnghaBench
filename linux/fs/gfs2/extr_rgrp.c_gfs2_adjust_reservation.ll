; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_adjust_reservation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_adjust_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, %struct.gfs2_blkreserv }
%struct.gfs2_blkreserv = type { i64, i32 }
%struct.gfs2_rbm = type { %struct.gfs2_rgrpd* }
%struct.gfs2_rgrpd = type { i32, i32 }

@TRACE_RS_CLAIM = common dso_local global i32 0, align 4
@RGRP_RSRV_ADDBLKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_inode*, %struct.gfs2_rbm*, i32)* @gfs2_adjust_reservation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_adjust_reservation(%struct.gfs2_inode* %0, %struct.gfs2_rbm* %1, i32 %2) #0 {
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.gfs2_rbm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_blkreserv*, align 8
  %8 = alloca %struct.gfs2_rgrpd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store %struct.gfs2_rbm* %1, %struct.gfs2_rbm** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %13 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %12, i32 0, i32 1
  store %struct.gfs2_blkreserv* %13, %struct.gfs2_blkreserv** %7, align 8
  %14 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %5, align 8
  %15 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %14, i32 0, i32 0
  %16 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %15, align 8
  store %struct.gfs2_rgrpd* %16, %struct.gfs2_rgrpd** %8, align 8
  %17 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %8, align 8
  %18 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %17, i32 0, i32 1
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %7, align 8
  %21 = call i64 @gfs2_rs_active(%struct.gfs2_blkreserv* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %73

23:                                               ; preds = %3
  %24 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %7, align 8
  %25 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %24, i32 0, i32 1
  %26 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %5, align 8
  %27 = call i64 @gfs2_rbm_eq(i32* %25, %struct.gfs2_rbm* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %70

29:                                               ; preds = %23
  %30 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %5, align 8
  %31 = call i32 @gfs2_rbm_to_block(%struct.gfs2_rbm* %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %7, align 8
  %33 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %32, i32 0, i32 1
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %34, %35
  %37 = call i32 @gfs2_rbm_from_block(i32* %33, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %7, align 8
  %39 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @min(i64 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %7, align 8
  %46 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %8, align 8
  %51 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sub i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %7, align 8
  %55 = load i32, i32* @TRACE_RS_CLAIM, align 4
  %56 = call i32 @trace_gfs2_rs(%struct.gfs2_blkreserv* %54, i32 %55)
  %57 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %7, align 8
  %58 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %29
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  br label %74

65:                                               ; preds = %61, %29
  %66 = load i32, i32* @RGRP_RSRV_ADDBLKS, align 4
  %67 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %68 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %67, i32 0, i32 0
  %69 = call i32 @atomic_add(i32 %66, i32* %68)
  br label %70

70:                                               ; preds = %65, %23
  %71 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %7, align 8
  %72 = call i32 @__rs_deltree(%struct.gfs2_blkreserv* %71)
  br label %73

73:                                               ; preds = %70, %3
  br label %74

74:                                               ; preds = %73, %64
  %75 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %8, align 8
  %76 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %75, i32 0, i32 1
  %77 = call i32 @spin_unlock(i32* %76)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @gfs2_rs_active(%struct.gfs2_blkreserv*) #1

declare dso_local i64 @gfs2_rbm_eq(i32*, %struct.gfs2_rbm*) #1

declare dso_local i32 @gfs2_rbm_to_block(%struct.gfs2_rbm*) #1

declare dso_local i32 @gfs2_rbm_from_block(i32*, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @trace_gfs2_rs(%struct.gfs2_blkreserv*, i32) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @__rs_deltree(%struct.gfs2_blkreserv*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
