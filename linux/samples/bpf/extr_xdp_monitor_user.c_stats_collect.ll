; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_monitor_user.c_stats_collect.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_monitor_user.c_stats_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.stats_record = type { i32, i32, i32*, i32*, i32* }

@map_data = common dso_local global %struct.TYPE_2__* null, align 8
@REDIR_RES_MAX = common dso_local global i32 0, align 4
@XDP_ACTION_MAX = common dso_local global i32 0, align 4
@MAX_CPUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stats_record*)* @stats_collect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stats_collect(%struct.stats_record* %0) #0 {
  %2 = alloca %struct.stats_record*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.stats_record* %0, %struct.stats_record** %2, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @map_data, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @REDIR_RES_MAX, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %17 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i32 @map_collect_record_u64(i32 %14, i32 %15, i32* %21)
  br label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %9

26:                                               ; preds = %9
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @map_data, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %45, %26
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @XDP_ACTION_MAX, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %39 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i32 @map_collect_record_u64(i32 %36, i32 %37, i32* %43)
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %31

48:                                               ; preds = %31
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @map_data, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %67, %48
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @MAX_CPUS, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %61 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = call i32 @map_collect_record(i32 %58, i32 %59, i32* %65)
  br label %67

67:                                               ; preds = %57
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %53

70:                                               ; preds = %53
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @map_data, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 3
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %77 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %76, i32 0, i32 1
  %78 = call i32 @map_collect_record(i32 %75, i32 0, i32* %77)
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @map_data, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 4
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* %3, align 4
  %84 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %85 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %84, i32 0, i32 0
  %86 = call i32 @map_collect_record(i32 %83, i32 0, i32* %85)
  ret i32 1
}

declare dso_local i32 @map_collect_record_u64(i32, i32, i32*) #1

declare dso_local i32 @map_collect_record(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
