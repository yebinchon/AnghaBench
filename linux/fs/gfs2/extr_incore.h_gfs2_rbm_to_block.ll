; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_incore.h_gfs2_rbm_to_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_incore.h_gfs2_rbm_to_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rbm = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@GFS2_NBBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.gfs2_rbm*)* @gfs2_rbm_to_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gfs2_rbm_to_block(%struct.gfs2_rbm* %0) #0 {
  %2 = alloca %struct.gfs2_rbm*, align 8
  store %struct.gfs2_rbm* %0, %struct.gfs2_rbm** %2, align 8
  %3 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %2, align 8
  %4 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %2, align 8
  %7 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %5, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %2, align 8
  %15 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %2, align 8
  %20 = call %struct.TYPE_4__* @rbm_bi(%struct.gfs2_rbm* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @GFS2_NBBY, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %18, %25
  %27 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %2, align 8
  %28 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  ret i64 %30
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_4__* @rbm_bi(%struct.gfs2_rbm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
