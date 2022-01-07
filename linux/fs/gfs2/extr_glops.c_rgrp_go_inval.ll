; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_glops.c_rgrp_go_inval.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_glops.c_rgrp_go_inval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { %struct.TYPE_3__, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { %struct.address_space }
%struct.address_space = type { i32 }
%struct.gfs2_rgrpd = type { i32 }

@DIO_METADATA = common dso_local global i32 0, align 4
@GFS2_RDF_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_glock*, i32)* @rgrp_go_inval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgrp_go_inval(%struct.gfs2_glock* %0, i32 %1) #0 {
  %3 = alloca %struct.gfs2_glock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.gfs2_rgrpd*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %9 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  store %struct.gfs2_sbd* %11, %struct.gfs2_sbd** %5, align 8
  %12 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %13 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %12, i32 0, i32 0
  store %struct.address_space* %13, %struct.address_space** %6, align 8
  %14 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %15 = call %struct.gfs2_rgrpd* @gfs2_glock2rgrp(%struct.gfs2_glock* %14)
  store %struct.gfs2_rgrpd* %15, %struct.gfs2_rgrpd** %7, align 8
  %16 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %7, align 8
  %17 = icmp ne %struct.gfs2_rgrpd* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %7, align 8
  %20 = call i32 @gfs2_rgrp_brelse(%struct.gfs2_rgrpd* %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @DIO_METADATA, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON_ONCE(i32 %27)
  %29 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %30 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %31 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %30, i32 0, i32 1
  %32 = call i32 @atomic_read(i32* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @gfs2_assert_withdraw(%struct.gfs2_sbd* %29, i32 %35)
  %37 = load %struct.address_space*, %struct.address_space** %6, align 8
  %38 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %39 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %43 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @truncate_inode_pages_range(%struct.address_space* %37, i32 %41, i32 %45)
  %47 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %7, align 8
  %48 = icmp ne %struct.gfs2_rgrpd* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %21
  %50 = load i32, i32* @GFS2_RDF_UPTODATE, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %7, align 8
  %53 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %49, %21
  ret void
}

declare dso_local %struct.gfs2_rgrpd* @gfs2_glock2rgrp(%struct.gfs2_glock*) #1

declare dso_local i32 @gfs2_rgrp_brelse(%struct.gfs2_rgrpd*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @gfs2_assert_withdraw(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @truncate_inode_pages_range(%struct.address_space*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
