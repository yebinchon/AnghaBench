; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rgrp_lvb_valid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rgrp_lvb_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rgrpd = type { i64, %struct.gfs2_sbd*, %struct.TYPE_4__*, %struct.gfs2_rgrp_lvb* }
%struct.gfs2_sbd = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.gfs2_rgrp_lvb = type { i64, i64, i64, i64 }
%struct.gfs2_rgrp = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [40 x i8] c"GFS2: rgd: %llu lvb flag mismatch %u/%u\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"GFS2: rgd: %llu lvb free mismatch %u/%u\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"GFS2: rgd: %llu lvb dinode mismatch %u/%u\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"GFS2: rgd: %llu lvb igen mismatch %llu/%llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_rgrpd*)* @gfs2_rgrp_lvb_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_rgrp_lvb_valid(%struct.gfs2_rgrpd* %0) #0 {
  %2 = alloca %struct.gfs2_rgrpd*, align 8
  %3 = alloca %struct.gfs2_rgrp_lvb*, align 8
  %4 = alloca %struct.gfs2_rgrp*, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca i32, align 4
  store %struct.gfs2_rgrpd* %0, %struct.gfs2_rgrpd** %2, align 8
  %7 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %8 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %7, i32 0, i32 3
  %9 = load %struct.gfs2_rgrp_lvb*, %struct.gfs2_rgrp_lvb** %8, align 8
  store %struct.gfs2_rgrp_lvb* %9, %struct.gfs2_rgrp_lvb** %3, align 8
  %10 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %11 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.gfs2_rgrp*
  store %struct.gfs2_rgrp* %18, %struct.gfs2_rgrp** %4, align 8
  %19 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %20 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %19, i32 0, i32 1
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %20, align 8
  store %struct.gfs2_sbd* %21, %struct.gfs2_sbd** %5, align 8
  store i32 1, i32* %6, align 4
  %22 = load %struct.gfs2_rgrp_lvb*, %struct.gfs2_rgrp_lvb** %3, align 8
  %23 = getelementptr inbounds %struct.gfs2_rgrp_lvb, %struct.gfs2_rgrp_lvb* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %4, align 8
  %26 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %1
  %30 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %31 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %32 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.gfs2_rgrp_lvb*, %struct.gfs2_rgrp_lvb** %3, align 8
  %35 = getelementptr inbounds %struct.gfs2_rgrp_lvb, %struct.gfs2_rgrp_lvb* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @be32_to_cpu(i64 %36)
  %38 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %4, align 8
  %39 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @be32_to_cpu(i64 %40)
  %42 = call i32 @fs_warn(%struct.gfs2_sbd* %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %37, i64 %41)
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %29, %1
  %44 = load %struct.gfs2_rgrp_lvb*, %struct.gfs2_rgrp_lvb** %3, align 8
  %45 = getelementptr inbounds %struct.gfs2_rgrp_lvb, %struct.gfs2_rgrp_lvb* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %4, align 8
  %48 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %43
  %52 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %53 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %54 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.gfs2_rgrp_lvb*, %struct.gfs2_rgrp_lvb** %3, align 8
  %57 = getelementptr inbounds %struct.gfs2_rgrp_lvb, %struct.gfs2_rgrp_lvb* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @be32_to_cpu(i64 %58)
  %60 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %4, align 8
  %61 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @be32_to_cpu(i64 %62)
  %64 = call i32 @fs_warn(%struct.gfs2_sbd* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %55, i64 %59, i64 %63)
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %51, %43
  %66 = load %struct.gfs2_rgrp_lvb*, %struct.gfs2_rgrp_lvb** %3, align 8
  %67 = getelementptr inbounds %struct.gfs2_rgrp_lvb, %struct.gfs2_rgrp_lvb* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %4, align 8
  %70 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %65
  %74 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %75 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %76 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.gfs2_rgrp_lvb*, %struct.gfs2_rgrp_lvb** %3, align 8
  %79 = getelementptr inbounds %struct.gfs2_rgrp_lvb, %struct.gfs2_rgrp_lvb* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @be32_to_cpu(i64 %80)
  %82 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %4, align 8
  %83 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @be32_to_cpu(i64 %84)
  %86 = call i32 @fs_warn(%struct.gfs2_sbd* %74, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %77, i64 %81, i64 %85)
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %73, %65
  %88 = load %struct.gfs2_rgrp_lvb*, %struct.gfs2_rgrp_lvb** %3, align 8
  %89 = getelementptr inbounds %struct.gfs2_rgrp_lvb, %struct.gfs2_rgrp_lvb* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %4, align 8
  %92 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %87
  %96 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %97 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %2, align 8
  %98 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.gfs2_rgrp_lvb*, %struct.gfs2_rgrp_lvb** %3, align 8
  %101 = getelementptr inbounds %struct.gfs2_rgrp_lvb, %struct.gfs2_rgrp_lvb* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @be64_to_cpu(i64 %102)
  %104 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %4, align 8
  %105 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @be64_to_cpu(i64 %106)
  %108 = call i32 @fs_warn(%struct.gfs2_sbd* %96, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %99, i64 %103, i64 %107)
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %95, %87
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32 @fs_warn(%struct.gfs2_sbd*, i8*, i64, i64, i64) #1

declare dso_local i64 @be32_to_cpu(i64) #1

declare dso_local i64 @be64_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
