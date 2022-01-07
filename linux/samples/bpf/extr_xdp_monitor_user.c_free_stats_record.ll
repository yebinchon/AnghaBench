; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_monitor_user.c_free_stats_record.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_monitor_user.c_free_stats_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats_record = type { %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.stats_record* }
%struct.TYPE_8__ = type { %struct.stats_record* }
%struct.TYPE_7__ = type { %struct.stats_record* }
%struct.TYPE_6__ = type { %struct.stats_record* }
%struct.TYPE_10__ = type { %struct.stats_record* }

@REDIR_RES_MAX = common dso_local global i32 0, align 4
@XDP_ACTION_MAX = common dso_local global i32 0, align 4
@MAX_CPUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stats_record*)* @free_stats_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_stats_record(%struct.stats_record* %0) #0 {
  %2 = alloca %struct.stats_record*, align 8
  %3 = alloca i32, align 4
  store %struct.stats_record* %0, %struct.stats_record** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @REDIR_RES_MAX, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %10 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %9, i32 0, i32 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.stats_record*, %struct.stats_record** %15, align 8
  %17 = call i32 @free(%struct.stats_record* %16)
  br label %18

18:                                               ; preds = %8
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %4

21:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %36, %21
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @XDP_ACTION_MAX, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %28 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %27, i32 0, i32 3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.stats_record*, %struct.stats_record** %33, align 8
  %35 = call i32 @free(%struct.stats_record* %34)
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %22

39:                                               ; preds = %22
  %40 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %41 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.stats_record*, %struct.stats_record** %42, align 8
  %44 = call i32 @free(%struct.stats_record* %43)
  %45 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %46 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.stats_record*, %struct.stats_record** %47, align 8
  %49 = call i32 @free(%struct.stats_record* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %64, %39
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @MAX_CPUS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %56 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.stats_record*, %struct.stats_record** %61, align 8
  %63 = call i32 @free(%struct.stats_record* %62)
  br label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %50

67:                                               ; preds = %50
  %68 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %69 = call i32 @free(%struct.stats_record* %68)
  ret void
}

declare dso_local i32 @free(%struct.stats_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
