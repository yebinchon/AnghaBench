; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rgrp_error.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rgrp_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rgrpd = type { i32, i32, i64, %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i8* }

@.str = private unnamed_addr constant [58 x i8] c"rgrp %llu has an error, marking it readonly until umount\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"umount on all nodes and run fsck.gfs2 to fix the error\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"fsid=%s: \00", align 1
@GFS2_RDF_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_rgrpd*)* @gfs2_rgrp_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_rgrp_error(%struct.gfs2_rgrpd* %0) #0 {
  %2 = alloca %struct.gfs2_rgrpd*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca [15 x i8], align 1
  store %struct.gfs2_rgrpd* %0, %struct.gfs2_rgrpd** %2, align 8
  %5 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %6 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %5, i32 0, i32 3
  %7 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  store %struct.gfs2_sbd* %7, %struct.gfs2_sbd** %3, align 8
  %8 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %9 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %10 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_warn(%struct.gfs2_sbd* %8, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %14 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_warn(%struct.gfs2_sbd* %13, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %15 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %17 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  %20 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %21 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %24 = call i32 @gfs2_rgrp_dump(i32* null, i32 %22, i8* %23)
  %25 = load i32, i32* @GFS2_RDF_ERROR, align 4
  %26 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %27 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  ret void
}

declare dso_local i32 @fs_warn(%struct.gfs2_sbd*, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @gfs2_rgrp_dump(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
