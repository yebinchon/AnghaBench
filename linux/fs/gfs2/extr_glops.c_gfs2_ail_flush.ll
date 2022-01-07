; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_glops.c_gfs2_ail_flush.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_glops.c_gfs2_ail_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GFS2_LOG_HEAD_FLUSH_NORMAL = common dso_local global i32 0, align 4
@GFS2_LFC_AIL_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_ail_flush(%struct.gfs2_glock* %0, i32 %1) #0 {
  %3 = alloca %struct.gfs2_glock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %10 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  store %struct.gfs2_sbd* %12, %struct.gfs2_sbd** %5, align 8
  %13 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %14 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %13, i32 0, i32 0
  %15 = call i32 @atomic_read(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %17 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = sub i64 %20, 4
  %22 = udiv i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %63

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %32, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %34 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 %37, 4
  %39 = udiv i64 %38, 4
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = add i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %7, align 4
  br label %28

44:                                               ; preds = %28
  %45 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %45, i32 0, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %63

51:                                               ; preds = %44
  %52 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @__gfs2_ail_flush(%struct.gfs2_glock* %52, i32 %53, i32 %54)
  %56 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %57 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %56)
  %58 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %59 = load i32, i32* @GFS2_LOG_HEAD_FLUSH_NORMAL, align 4
  %60 = load i32, i32* @GFS2_LFC_AIL_FLUSH, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @gfs2_log_flush(%struct.gfs2_sbd* %58, i32* null, i32 %61)
  br label %63

63:                                               ; preds = %51, %50, %26
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @__gfs2_ail_flush(%struct.gfs2_glock*, i32, i32) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_log_flush(%struct.gfs2_sbd*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
