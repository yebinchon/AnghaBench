; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.c_gfs2_log_alloc_bio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.c_gfs2_log_alloc_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.gfs2_sbd*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.gfs2_sbd = type { %struct.super_block* }
%struct.super_block = type { i32, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@BIO_MAX_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.gfs2_sbd*, i32, i32*)* @gfs2_log_alloc_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @gfs2_log_alloc_bio(%struct.gfs2_sbd* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.bio*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %10 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %9, i32 0, i32 0
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %7, align 8
  %12 = load i32, i32* @GFP_NOIO, align 4
  %13 = load i32, i32* @BIO_MAX_PAGES, align 4
  %14 = call %struct.bio* @bio_alloc(i32 %12, i32 %13)
  store %struct.bio* %14, %struct.bio** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.super_block*, %struct.super_block** %7, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 9
  %20 = mul nsw i32 %15, %19
  %21 = load %struct.bio*, %struct.bio** %8, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.bio*, %struct.bio** %8, align 8
  %25 = load %struct.super_block*, %struct.super_block** %7, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bio_set_dev(%struct.bio* %24, i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.bio*, %struct.bio** %8, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  %32 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %33 = load %struct.bio*, %struct.bio** %8, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 0
  store %struct.gfs2_sbd* %32, %struct.gfs2_sbd** %34, align 8
  %35 = load %struct.bio*, %struct.bio** %8, align 8
  ret %struct.bio* %35
}

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
