; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_cpu_user.c_alloc_stats_record.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_cpu_user.c_alloc_stats_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats_record = type { %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_10__ = type { i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Mem alloc error\0A\00", align 1
@EXIT_FAIL_MEM = common dso_local global i32 0, align 4
@MAX_CPUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stats_record* ()* @alloc_stats_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stats_record* @alloc_stats_record() #0 {
  %1 = alloca %struct.stats_record*, align 8
  %2 = alloca i32, align 4
  %3 = call %struct.stats_record* @malloc(i32 40)
  store %struct.stats_record* %3, %struct.stats_record** %1, align 8
  %4 = load %struct.stats_record*, %struct.stats_record** %1, align 8
  %5 = call i32 @memset(%struct.stats_record* %4, i32 0, i32 40)
  %6 = load %struct.stats_record*, %struct.stats_record** %1, align 8
  %7 = icmp ne %struct.stats_record* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @EXIT_FAIL_MEM, align 4
  %12 = call i32 @exit(i32 %11) #3
  unreachable

13:                                               ; preds = %0
  %14 = call i8* (...) @alloc_record_per_cpu()
  %15 = load %struct.stats_record*, %struct.stats_record** %1, align 8
  %16 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i8* %14, i8** %17, align 8
  %18 = call i8* (...) @alloc_record_per_cpu()
  %19 = load %struct.stats_record*, %struct.stats_record** %1, align 8
  %20 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i8* %18, i8** %21, align 8
  %22 = call i8* (...) @alloc_record_per_cpu()
  %23 = load %struct.stats_record*, %struct.stats_record** %1, align 8
  %24 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i8* %22, i8** %25, align 8
  %26 = call i8* (...) @alloc_record_per_cpu()
  %27 = load %struct.stats_record*, %struct.stats_record** %1, align 8
  %28 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i8* %26, i8** %29, align 8
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %43, %13
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @MAX_CPUS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = call i8* (...) @alloc_record_per_cpu()
  %36 = load %struct.stats_record*, %struct.stats_record** %1, align 8
  %37 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i8* %35, i8** %42, align 8
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %30

46:                                               ; preds = %30
  %47 = load %struct.stats_record*, %struct.stats_record** %1, align 8
  ret %struct.stats_record* %47
}

declare dso_local %struct.stats_record* @malloc(i32) #1

declare dso_local i32 @memset(%struct.stats_record*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @alloc_record_per_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
