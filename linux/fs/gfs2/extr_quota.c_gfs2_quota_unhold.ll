; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_quota_unhold.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_quota_unhold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32** }
%struct.gfs2_sbd = type { i32 }

@GIF_QD_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_quota_unhold(%struct.gfs2_inode* %0) #0 {
  %2 = alloca %struct.gfs2_inode*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca i64, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %2, align 8
  %5 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %6 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %5, i32 0, i32 2
  %7 = call %struct.gfs2_sbd* @GFS2_SB(i32* %6)
  store %struct.gfs2_sbd* %7, %struct.gfs2_sbd** %3, align 8
  %8 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %9 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp eq %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %56

13:                                               ; preds = %1
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %15 = load i32, i32* @GIF_QD_LOCKED, align 4
  %16 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %17 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %16, i32 0, i32 1
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @gfs2_assert_warn(%struct.gfs2_sbd* %14, i32 %21)
  store i64 0, i64* %4, align 8
  br label %23

23:                                               ; preds = %48, %13
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %26 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %24, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %23
  %32 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %33 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32**, i32*** %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds i32*, i32** %36, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @qdsb_put(i32* %39)
  %41 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %42 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds i32*, i32** %45, i64 %46
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %31
  %49 = load i64, i64* %4, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %4, align 8
  br label %23

51:                                               ; preds = %23
  %52 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %53 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %51, %12
  ret void
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @gfs2_assert_warn(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @qdsb_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
