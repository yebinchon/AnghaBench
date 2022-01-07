; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rindex_print.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rindex_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rgrpd = type { i64, i64, i64, i64, i64, %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"ri_addr = %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"ri_length = %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ri_data0 = %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"ri_data = %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"ri_bitbytes = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_rgrpd*)* @gfs2_rindex_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_rindex_print(%struct.gfs2_rgrpd* %0) #0 {
  %2 = alloca %struct.gfs2_rgrpd*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  store %struct.gfs2_rgrpd* %0, %struct.gfs2_rgrpd** %2, align 8
  %4 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %5 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %4, i32 0, i32 5
  %6 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  store %struct.gfs2_sbd* %6, %struct.gfs2_sbd** %3, align 8
  %7 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %8 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %9 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @fs_info(%struct.gfs2_sbd* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %13 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %14 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @fs_info(%struct.gfs2_sbd* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %15)
  %17 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %18 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %19 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @fs_info(%struct.gfs2_sbd* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %20)
  %22 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %23 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %24 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @fs_info(%struct.gfs2_sbd* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %25)
  %27 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %28 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %29 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @fs_info(%struct.gfs2_sbd* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i64 %30)
  ret void
}

declare dso_local i32 @fs_info(%struct.gfs2_sbd*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
