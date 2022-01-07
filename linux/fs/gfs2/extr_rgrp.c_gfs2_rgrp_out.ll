; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rgrp_out.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rgrp_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rgrpd = type { i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.gfs2_rgrp = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@GFS2_RDF_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_rgrpd*, i8*)* @gfs2_rgrp_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_rgrp_out(%struct.gfs2_rgrpd* %0, i8* %1) #0 {
  %3 = alloca %struct.gfs2_rgrpd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gfs2_rgrpd*, align 8
  %6 = alloca %struct.gfs2_rgrp*, align 8
  %7 = alloca i32, align 4
  store %struct.gfs2_rgrpd* %0, %struct.gfs2_rgrpd** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %9 = call %struct.gfs2_rgrpd* @gfs2_rgrpd_get_next(%struct.gfs2_rgrpd* %8)
  store %struct.gfs2_rgrpd* %9, %struct.gfs2_rgrpd** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.gfs2_rgrp*
  store %struct.gfs2_rgrp* %11, %struct.gfs2_rgrp** %6, align 8
  %12 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %13 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @GFS2_RDF_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = call i8* @cpu_to_be32(i32 %17)
  %19 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %6, align 8
  %20 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %19, i32 0, i32 9
  store i8* %18, i8** %20, align 8
  %21 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %22 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @cpu_to_be32(i32 %23)
  %25 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %6, align 8
  %26 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %25, i32 0, i32 8
  store i8* %24, i8** %26, align 8
  %27 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %28 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @cpu_to_be32(i32 %29)
  %31 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %6, align 8
  %32 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %31, i32 0, i32 7
  store i8* %30, i8** %32, align 8
  %33 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %34 = icmp eq %struct.gfs2_rgrpd* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %6, align 8
  %37 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %36, i32 0, i32 6
  store i8* null, i8** %37, align 8
  br label %59

38:                                               ; preds = %2
  %39 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %40 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %43 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %38
  %47 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %48 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %51 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %49, %52
  %54 = trunc i64 %53 to i32
  %55 = call i8* @cpu_to_be32(i32 %54)
  %56 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %6, align 8
  %57 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %56, i32 0, i32 6
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %46, %38
  br label %59

59:                                               ; preds = %58, %35
  %60 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %61 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @cpu_to_be64(i32 %62)
  %64 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %6, align 8
  %65 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  %66 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %67 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @cpu_to_be64(i32 %68)
  %70 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %6, align 8
  %71 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  %72 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %73 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @cpu_to_be32(i32 %74)
  %76 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %6, align 8
  %77 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %79 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @cpu_to_be32(i32 %80)
  %82 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %6, align 8
  %83 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %6, align 8
  %85 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %84, i32 0, i32 1
  store i8* null, i8** %85, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @gfs2_disk_hash(i8* %86, i32 80)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i8* @cpu_to_be32(i32 %88)
  %90 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %6, align 8
  %91 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %6, align 8
  %93 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %92, i32 0, i32 0
  %94 = call i32 @memset(i32* %93, i32 0, i32 4)
  %95 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %96 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 @gfs2_rgrp_ondisk2lvb(i32 %97, i8* %98)
  ret void
}

declare dso_local %struct.gfs2_rgrpd* @gfs2_rgrpd_get_next(%struct.gfs2_rgrpd*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @gfs2_disk_hash(i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @gfs2_rgrp_ondisk2lvb(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
