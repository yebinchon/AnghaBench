; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_cpu_user.c_stats_poll.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_cpu_user.c_stats_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats_record = type { i32 }

@LC_NUMERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"en_US\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32)* @stats_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stats_poll(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stats_record*, align 8
  %10 = alloca %struct.stats_record*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = call %struct.stats_record* (...) @alloc_stats_record()
  store %struct.stats_record* %11, %struct.stats_record** %9, align 8
  %12 = call %struct.stats_record* (...) @alloc_stats_record()
  store %struct.stats_record* %12, %struct.stats_record** %10, align 8
  %13 = load %struct.stats_record*, %struct.stats_record** %9, align 8
  %14 = call i32 @stats_collect(%struct.stats_record* %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @LC_NUMERIC, align 4
  %19 = call i32 @setlocale(i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %4
  br label %21

21:                                               ; preds = %20, %35
  %22 = call i32 @swap(%struct.stats_record** %10, %struct.stats_record** %9)
  %23 = load %struct.stats_record*, %struct.stats_record** %9, align 8
  %24 = call i32 @stats_collect(%struct.stats_record* %23)
  %25 = load %struct.stats_record*, %struct.stats_record** %9, align 8
  %26 = load %struct.stats_record*, %struct.stats_record** %10, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @stats_print(%struct.stats_record* %25, %struct.stats_record* %26, i8* %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @sleep(i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = call i32 (...) @stress_cpumap()
  br label %35

35:                                               ; preds = %33, %21
  br label %21
}

declare dso_local %struct.stats_record* @alloc_stats_record(...) #1

declare dso_local i32 @stats_collect(%struct.stats_record*) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @swap(%struct.stats_record**, %struct.stats_record**) #1

declare dso_local i32 @stats_print(%struct.stats_record*, %struct.stats_record*, i8*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @stress_cpumap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
