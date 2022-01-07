; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.h_lops_before_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.h_lops_before_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.gfs2_sbd*, %struct.gfs2_trans*)* }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_trans = type { i32 }

@gfs2_log_ops = common dso_local global %struct.TYPE_2__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_sbd*, %struct.gfs2_trans*)* @lops_before_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lops_before_commit(%struct.gfs2_sbd* %0, %struct.gfs2_trans* %1) #0 {
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.gfs2_trans*, align 8
  %5 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %3, align 8
  store %struct.gfs2_trans* %1, %struct.gfs2_trans** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %34, %2
  %7 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @gfs2_log_ops, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %7, i64 %9
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %37

13:                                               ; preds = %6
  %14 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @gfs2_log_ops, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %14, i64 %16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.gfs2_sbd*, %struct.gfs2_trans*)*, i32 (%struct.gfs2_sbd*, %struct.gfs2_trans*)** %19, align 8
  %21 = icmp ne i32 (%struct.gfs2_sbd*, %struct.gfs2_trans*)* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %13
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @gfs2_log_ops, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.gfs2_sbd*, %struct.gfs2_trans*)*, i32 (%struct.gfs2_sbd*, %struct.gfs2_trans*)** %28, align 8
  %30 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %31 = load %struct.gfs2_trans*, %struct.gfs2_trans** %4, align 8
  %32 = call i32 %29(%struct.gfs2_sbd* %30, %struct.gfs2_trans* %31)
  br label %33

33:                                               ; preds = %22, %13
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %6

37:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
