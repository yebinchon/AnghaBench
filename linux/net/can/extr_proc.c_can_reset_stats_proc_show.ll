; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_proc.c_can_reset_stats_proc_show.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_proc.c_can_reset_stats_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.net* }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.can_pkg_stats*, %struct.can_rcv_lists_stats* }
%struct.TYPE_3__ = type { i64 }
%struct.can_pkg_stats = type { i64 }
%struct.can_rcv_lists_stats = type { i64 }

@user_reset = common dso_local global i32 0, align 4
@can_stat_update = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Scheduled statistic reset #%ld.\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Performed statistic reset #%ld.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @can_reset_stats_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_reset_stats_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.can_rcv_lists_stats*, align 8
  %7 = alloca %struct.can_pkg_stats*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.net*, %struct.net** %9, align 8
  store %struct.net* %10, %struct.net** %5, align 8
  %11 = load %struct.net*, %struct.net** %5, align 8
  %12 = getelementptr inbounds %struct.net, %struct.net* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load %struct.can_rcv_lists_stats*, %struct.can_rcv_lists_stats** %13, align 8
  store %struct.can_rcv_lists_stats* %14, %struct.can_rcv_lists_stats** %6, align 8
  %15 = load %struct.net*, %struct.net** %5, align 8
  %16 = getelementptr inbounds %struct.net, %struct.net* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %17, align 8
  store %struct.can_pkg_stats* %18, %struct.can_pkg_stats** %7, align 8
  store i32 1, i32* @user_reset, align 4
  %19 = load %struct.net*, %struct.net** %5, align 8
  %20 = getelementptr inbounds %struct.net, %struct.net* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @can_stat_update, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = load %struct.can_rcv_lists_stats*, %struct.can_rcv_lists_stats** %6, align 8
  %29 = getelementptr inbounds %struct.can_rcv_lists_stats, %struct.can_rcv_lists_stats* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  %32 = call i32 @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %31)
  br label %48

33:                                               ; preds = %2
  %34 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %7, align 8
  %35 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @jiffies, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.net*, %struct.net** %5, align 8
  %41 = call i32 @can_init_stats(%struct.net* %40)
  br label %42

42:                                               ; preds = %39, %33
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = load %struct.can_rcv_lists_stats*, %struct.can_rcv_lists_stats** %6, align 8
  %45 = getelementptr inbounds %struct.can_rcv_lists_stats, %struct.can_rcv_lists_stats* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  br label %48

48:                                               ; preds = %42, %26
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

declare dso_local i32 @can_init_stats(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
