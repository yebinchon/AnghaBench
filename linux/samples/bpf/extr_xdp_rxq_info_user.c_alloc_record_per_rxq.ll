; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_rxq_info_user.c_alloc_record_per_rxq.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_rxq_info_user.c_alloc_record_per_rxq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record = type { i32 }
%struct.TYPE_2__ = type { i32 }

@rx_queue_index_map = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Mem alloc error (nr_rxqs:%u)\0A\00", align 1
@EXIT_FAIL_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.record* ()* @alloc_record_per_rxq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.record* @alloc_record_per_rxq() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.record*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @rx_queue_index_map, align 4
  %5 = call %struct.TYPE_2__* @bpf_map__def(i32 %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = zext i32 %8 to i64
  %10 = mul i64 4, %9
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call %struct.record* @malloc(i64 %11)
  store %struct.record* %12, %struct.record** %2, align 8
  %13 = load %struct.record*, %struct.record** %2, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @memset(%struct.record* %13, i32 0, i64 %14)
  %16 = load %struct.record*, %struct.record** %2, align 8
  %17 = icmp ne %struct.record* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %0
  %19 = load i32, i32* @stderr, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EXIT_FAIL_MEM, align 4
  %23 = call i32 @exit(i32 %22) #3
  unreachable

24:                                               ; preds = %0
  %25 = load %struct.record*, %struct.record** %2, align 8
  ret %struct.record* %25
}

declare dso_local %struct.TYPE_2__* @bpf_map__def(i32) #1

declare dso_local %struct.record* @malloc(i64) #1

declare dso_local i32 @memset(%struct.record*, i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
