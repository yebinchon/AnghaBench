; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_rgblk_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_rgblk_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }
%struct.gfs2_rgrpd = type { i32 }
%struct.gfs2_rbm = type { %struct.gfs2_rgrpd* }
%struct.gfs2_bitmap = type { %struct.TYPE_2__*, i32, i64, i64 }
%struct.TYPE_2__ = type { i64, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_sbd*, %struct.gfs2_rgrpd*, i32, i32, i8)* @rgblk_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgblk_free(%struct.gfs2_sbd* %0, %struct.gfs2_rgrpd* %1, i32 %2, i32 %3, i8 zeroext %4) #0 {
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca %struct.gfs2_rgrpd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca %struct.gfs2_rbm, align 8
  %12 = alloca %struct.gfs2_bitmap*, align 8
  %13 = alloca %struct.gfs2_bitmap*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %6, align 8
  store %struct.gfs2_rgrpd* %1, %struct.gfs2_rgrpd** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8 %4, i8* %10, align 1
  store %struct.gfs2_bitmap* null, %struct.gfs2_bitmap** %13, align 8
  %14 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %7, align 8
  %15 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %11, i32 0, i32 0
  store %struct.gfs2_rgrpd* %14, %struct.gfs2_rgrpd** %15, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @gfs2_rbm_from_block(%struct.gfs2_rbm* %11, i32 %16)
  %18 = call i64 @WARN_ON_ONCE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %82

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %78, %21
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %9, align 4
  %25 = icmp ne i32 %23, 0
  br i1 %25, label %26, label %82

26:                                               ; preds = %22
  %27 = call %struct.gfs2_bitmap* @rbm_bi(%struct.gfs2_rbm* %11)
  store %struct.gfs2_bitmap* %27, %struct.gfs2_bitmap** %12, align 8
  %28 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %12, align 8
  %29 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %13, align 8
  %30 = icmp ne %struct.gfs2_bitmap* %28, %29
  br i1 %30, label %31, label %78

31:                                               ; preds = %26
  %32 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %12, align 8
  %33 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %68, label %36

36:                                               ; preds = %31
  %37 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %12, align 8
  %38 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @GFP_NOFS, align 4
  %43 = load i32, i32* @__GFP_NOFAIL, align 4
  %44 = or i32 %42, %43
  %45 = call i64 @kmalloc(i32 %41, i32 %44)
  %46 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %12, align 8
  %47 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  %48 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %12, align 8
  %49 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %12, align 8
  %52 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %12, align 8
  %56 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %12, align 8
  %61 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %12, align 8
  %65 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @memcpy(i64 %54, i64 %63, i32 %66)
  br label %68

68:                                               ; preds = %36, %31
  %69 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %11, i32 0, i32 0
  %70 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %69, align 8
  %71 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %12, align 8
  %74 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = call i32 @gfs2_trans_add_meta(i32 %72, %struct.TYPE_2__* %75)
  %77 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %12, align 8
  store %struct.gfs2_bitmap* %77, %struct.gfs2_bitmap** %13, align 8
  br label %78

78:                                               ; preds = %68, %26
  %79 = load i8, i8* %10, align 1
  %80 = call i32 @gfs2_setbit(%struct.gfs2_rbm* %11, i32 0, i8 zeroext %79)
  %81 = call i32 @gfs2_rbm_incr(%struct.gfs2_rbm* %11)
  br label %22

82:                                               ; preds = %20, %22
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @gfs2_rbm_from_block(%struct.gfs2_rbm*, i32) #1

declare dso_local %struct.gfs2_bitmap* @rbm_bi(%struct.gfs2_rbm*) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @gfs2_setbit(%struct.gfs2_rbm*, i32, i8 zeroext) #1

declare dso_local i32 @gfs2_rbm_incr(%struct.gfs2_rbm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
