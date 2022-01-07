; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_rxq_info_user.c_alloc_stats_record.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_rxq_info_user.c_alloc_stats_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats_record = type { %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32 }

@rx_queue_index_map = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Mem alloc error\0A\00", align 1
@EXIT_FAIL_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stats_record* ()* @alloc_stats_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stats_record* @alloc_stats_record() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.stats_record*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @rx_queue_index_map, align 4
  %5 = call %struct.TYPE_5__* @bpf_map__def(i32 %4)
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %1, align 4
  %8 = call %struct.stats_record* @malloc(i32 16)
  store %struct.stats_record* %8, %struct.stats_record** %2, align 8
  %9 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %10 = call i32 @memset(%struct.stats_record* %9, i32 0, i32 16)
  %11 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %12 = icmp ne %struct.stats_record* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %0
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EXIT_FAIL_MEM, align 4
  %17 = call i32 @exit(i32 %16) #3
  unreachable

18:                                               ; preds = %0
  %19 = call %struct.TYPE_6__* (...) @alloc_record_per_rxq()
  %20 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %21 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %20, i32 0, i32 1
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %21, align 8
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %35, %18
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %1, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = call i8* (...) @alloc_record_per_cpu()
  %28 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %29 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i8* %27, i8** %34, align 8
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %22

38:                                               ; preds = %22
  %39 = call i8* (...) @alloc_record_per_cpu()
  %40 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %41 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i8* %39, i8** %42, align 8
  %43 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  ret %struct.stats_record* %43
}

declare dso_local %struct.TYPE_5__* @bpf_map__def(i32) #1

declare dso_local %struct.stats_record* @malloc(i32) #1

declare dso_local i32 @memset(%struct.stats_record*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_6__* @alloc_record_per_rxq(...) #1

declare dso_local i8* @alloc_record_per_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
