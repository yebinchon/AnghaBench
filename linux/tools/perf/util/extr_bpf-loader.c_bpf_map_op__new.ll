; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_bpf_map_op__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_bpf_map_op__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map_op = type { i32 }
%struct.parse_events_term = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to alloc bpf_map_op\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_map_op* (%struct.parse_events_term*)* @bpf_map_op__new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_map_op* @bpf_map_op__new(%struct.parse_events_term* %0) #0 {
  %2 = alloca %struct.bpf_map_op*, align 8
  %3 = alloca %struct.parse_events_term*, align 8
  %4 = alloca %struct.bpf_map_op*, align 8
  %5 = alloca i32, align 4
  store %struct.parse_events_term* %0, %struct.parse_events_term** %3, align 8
  %6 = call %struct.bpf_map_op* @zalloc(i32 4)
  store %struct.bpf_map_op* %6, %struct.bpf_map_op** %4, align 8
  %7 = load %struct.bpf_map_op*, %struct.bpf_map_op** %4, align 8
  %8 = icmp ne %struct.bpf_map_op* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.bpf_map_op* @ERR_PTR(i32 %12)
  store %struct.bpf_map_op* %13, %struct.bpf_map_op** %2, align 8
  br label %30

14:                                               ; preds = %1
  %15 = load %struct.bpf_map_op*, %struct.bpf_map_op** %4, align 8
  %16 = getelementptr inbounds %struct.bpf_map_op, %struct.bpf_map_op* %15, i32 0, i32 0
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.bpf_map_op*, %struct.bpf_map_op** %4, align 8
  %19 = load %struct.parse_events_term*, %struct.parse_events_term** %3, align 8
  %20 = call i32 @bpf_map_op_setkey(%struct.bpf_map_op* %18, %struct.parse_events_term* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load %struct.bpf_map_op*, %struct.bpf_map_op** %4, align 8
  %25 = call i32 @free(%struct.bpf_map_op* %24)
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.bpf_map_op* @ERR_PTR(i32 %26)
  store %struct.bpf_map_op* %27, %struct.bpf_map_op** %2, align 8
  br label %30

28:                                               ; preds = %14
  %29 = load %struct.bpf_map_op*, %struct.bpf_map_op** %4, align 8
  store %struct.bpf_map_op* %29, %struct.bpf_map_op** %2, align 8
  br label %30

30:                                               ; preds = %28, %23, %9
  %31 = load %struct.bpf_map_op*, %struct.bpf_map_op** %2, align 8
  ret %struct.bpf_map_op* %31
}

declare dso_local %struct.bpf_map_op* @zalloc(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.bpf_map_op* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @bpf_map_op_setkey(%struct.bpf_map_op*, %struct.parse_events_term*) #1

declare dso_local i32 @free(%struct.bpf_map_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
