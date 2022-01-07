; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_cpu_user.c_free_stats_record.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_cpu_user.c_free_stats_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats_record = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { %struct.stats_record* }
%struct.TYPE_9__ = type { %struct.stats_record* }
%struct.TYPE_8__ = type { %struct.stats_record* }
%struct.TYPE_7__ = type { %struct.stats_record* }
%struct.TYPE_6__ = type { %struct.stats_record* }

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
  %6 = load i32, i32* @MAX_CPUS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %10 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %9, i32 0, i32 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.stats_record*, %struct.stats_record** %15, align 8
  %17 = call i32 @free(%struct.stats_record* %16)
  br label %18

18:                                               ; preds = %8
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %4

21:                                               ; preds = %4
  %22 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %23 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.stats_record*, %struct.stats_record** %24, align 8
  %26 = call i32 @free(%struct.stats_record* %25)
  %27 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %28 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.stats_record*, %struct.stats_record** %29, align 8
  %31 = call i32 @free(%struct.stats_record* %30)
  %32 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %33 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.stats_record*, %struct.stats_record** %34, align 8
  %36 = call i32 @free(%struct.stats_record* %35)
  %37 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %38 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load %struct.stats_record*, %struct.stats_record** %39, align 8
  %41 = call i32 @free(%struct.stats_record* %40)
  %42 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %43 = call i32 @free(%struct.stats_record* %42)
  ret void
}

declare dso_local i32 @free(%struct.stats_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
