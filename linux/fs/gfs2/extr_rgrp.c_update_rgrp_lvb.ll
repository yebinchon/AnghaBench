; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_update_rgrp_lvb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_update_rgrp_lvb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rgrpd = type { i32, %struct.TYPE_2__*, i32, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i32, i32 }

@GFS2_RDF_UPTODATE = common dso_local global i32 0, align 4
@GFS2_MAGIC = common dso_local global i32 0, align 4
@GFS2_RDF_MASK = common dso_local global i32 0, align 4
@GFS2_RDF_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_rgrpd*)* @update_rgrp_lvb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_rgrp_lvb(%struct.gfs2_rgrpd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_rgrpd*, align 8
  %4 = alloca i32, align 4
  store %struct.gfs2_rgrpd* %0, %struct.gfs2_rgrpd** %3, align 8
  %5 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %6 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @GFS2_RDF_UPTODATE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %91

12:                                               ; preds = %1
  %13 = load i32, i32* @GFS2_MAGIC, align 4
  %14 = call i64 @cpu_to_be32(i32 %13)
  %15 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %16 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %14, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %23 = call i32 @gfs2_rgrp_bh_get(%struct.gfs2_rgrpd* %22)
  store i32 %23, i32* %2, align 4
  br label %91

24:                                               ; preds = %12
  %25 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %26 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @be32_to_cpu(i32 %29)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @GFS2_RDF_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @GFS2_RDF_MASK, align 4
  %37 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %38 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @GFS2_RDF_CHECK, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %45 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %49 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %24
  %55 = load i32, i32* @GFS2_RDF_CHECK, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %58 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %54, %24
  %62 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %63 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @be32_to_cpu(i32 %66)
  %68 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %69 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %68, i32 0, i32 4
  store i8* %67, i8** %69, align 8
  %70 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %71 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %70, i32 0, i32 4
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %74 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  %75 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %76 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @be32_to_cpu(i32 %79)
  %81 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %82 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %84 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @be64_to_cpu(i32 %87)
  %89 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %90 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %61, %21, %11
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @gfs2_rgrp_bh_get(%struct.gfs2_rgrpd*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
