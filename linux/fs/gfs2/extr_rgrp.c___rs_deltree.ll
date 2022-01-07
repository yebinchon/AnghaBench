; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c___rs_deltree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c___rs_deltree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_blkreserv = type { i64, %struct.gfs2_rbm, i32 }
%struct.gfs2_rbm = type { %struct.gfs2_rgrpd* }
%struct.gfs2_rgrpd = type { i64, i32, i32 }
%struct.gfs2_bitmap = type { i32 }

@TRACE_RS_TREEDEL = common dso_local global i32 0, align 4
@GBF_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_blkreserv*)* @__rs_deltree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rs_deltree(%struct.gfs2_blkreserv* %0) #0 {
  %2 = alloca %struct.gfs2_blkreserv*, align 8
  %3 = alloca %struct.gfs2_rgrpd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.gfs2_rbm, align 8
  %6 = alloca %struct.gfs2_bitmap*, align 8
  %7 = alloca %struct.gfs2_bitmap*, align 8
  store %struct.gfs2_blkreserv* %0, %struct.gfs2_blkreserv** %2, align 8
  %8 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %9 = call i32 @gfs2_rs_active(%struct.gfs2_blkreserv* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %99

12:                                               ; preds = %1
  %13 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %14 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %14, i32 0, i32 0
  %16 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %15, align 8
  store %struct.gfs2_rgrpd* %16, %struct.gfs2_rgrpd** %3, align 8
  %17 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %18 = load i32, i32* @TRACE_RS_TREEDEL, align 4
  %19 = call i32 @trace_gfs2_rs(%struct.gfs2_blkreserv* %17, i32 %18)
  %20 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %21 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %20, i32 0, i32 2
  %22 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %23 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %22, i32 0, i32 2
  %24 = call i32 @rb_erase(i32* %21, i32* %23)
  %25 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %26 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %25, i32 0, i32 2
  %27 = call i32 @RB_CLEAR_NODE(i32* %26)
  %28 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %29 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %99

32:                                               ; preds = %12
  %33 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %34 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %33, i32 0, i32 1
  %35 = call i64 @gfs2_rbm_to_block(%struct.gfs2_rbm* %34)
  %36 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %37 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = sub nsw i64 %39, 1
  store i64 %40, i64* %4, align 8
  %41 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %5, i32 0, i32 0
  %42 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %43 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %43, i32 0, i32 0
  %45 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %44, align 8
  store %struct.gfs2_rgrpd* %45, %struct.gfs2_rgrpd** %41, align 8
  %46 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %47 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %47, i32 0, i32 0
  %49 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %48, align 8
  %50 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %53 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUG_ON(i32 %56)
  %58 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %59 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %62 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %62, i32 0, i32 0
  %64 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %63, align 8
  %65 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %66, %60
  store i64 %67, i64* %65, align 8
  %68 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %69 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %72 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %70
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 8
  %77 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %78 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load i64, i64* %4, align 8
  %80 = call i64 @gfs2_rbm_from_block(%struct.gfs2_rbm* %5, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %32
  br label %99

83:                                               ; preds = %32
  %84 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %85 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %84, i32 0, i32 1
  %86 = call %struct.gfs2_bitmap* @rbm_bi(%struct.gfs2_rbm* %85)
  store %struct.gfs2_bitmap* %86, %struct.gfs2_bitmap** %6, align 8
  %87 = call %struct.gfs2_bitmap* @rbm_bi(%struct.gfs2_rbm* %5)
  store %struct.gfs2_bitmap* %87, %struct.gfs2_bitmap** %7, align 8
  br label %88

88:                                               ; preds = %93, %83
  %89 = load i32, i32* @GBF_FULL, align 4
  %90 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %6, align 8
  %91 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %90, i32 0, i32 0
  %92 = call i32 @clear_bit(i32 %89, i32* %91)
  br label %93

93:                                               ; preds = %88
  %94 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %6, align 8
  %95 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %94, i32 1
  store %struct.gfs2_bitmap* %95, %struct.gfs2_bitmap** %6, align 8
  %96 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %7, align 8
  %97 = icmp ne %struct.gfs2_bitmap* %94, %96
  br i1 %97, label %88, label %98

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %11, %82, %98, %12
  ret void
}

declare dso_local i32 @gfs2_rs_active(%struct.gfs2_blkreserv*) #1

declare dso_local i32 @trace_gfs2_rs(%struct.gfs2_blkreserv*, i32) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i64 @gfs2_rbm_to_block(%struct.gfs2_rbm*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @gfs2_rbm_from_block(%struct.gfs2_rbm*, i64) #1

declare dso_local %struct.gfs2_bitmap* @rbm_bi(%struct.gfs2_rbm*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
