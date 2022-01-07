; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_monitor_user.c_alloc_stats_record.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_monitor_user.c_alloc_stats_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats_record = type { %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Mem alloc error\0A\00", align 1
@EXIT_FAIL_MEM = common dso_local global i32 0, align 4
@REDIR_RES_MAX = common dso_local global i32 0, align 4
@XDP_ACTION_MAX = common dso_local global i32 0, align 4
@MAX_CPUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stats_record* ()* @alloc_stats_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stats_record* @alloc_stats_record() #0 {
  %1 = alloca %struct.stats_record*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call %struct.stats_record* @malloc(i32 40)
  store %struct.stats_record* %4, %struct.stats_record** %1, align 8
  %5 = load %struct.stats_record*, %struct.stats_record** %1, align 8
  %6 = call i32 @memset(%struct.stats_record* %5, i32 0, i32 40)
  %7 = load %struct.stats_record*, %struct.stats_record** %1, align 8
  %8 = icmp ne %struct.stats_record* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EXIT_FAIL_MEM, align 4
  %13 = call i32 @exit(i32 %12) #3
  unreachable

14:                                               ; preds = %0
  store i32 4, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %29, %14
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @REDIR_RES_MAX, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load i32, i32* %2, align 4
  %21 = call i8* @alloc_rec_per_cpu(i32 %20)
  %22 = load %struct.stats_record*, %struct.stats_record** %1, align 8
  %23 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %22, i32 0, i32 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i8* %21, i8** %28, align 8
  br label %29

29:                                               ; preds = %19
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %15

32:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %47, %32
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @XDP_ACTION_MAX, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i32, i32* %2, align 4
  %39 = call i8* @alloc_rec_per_cpu(i32 %38)
  %40 = load %struct.stats_record*, %struct.stats_record** %1, align 8
  %41 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %40, i32 0, i32 3
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i8* %39, i8** %46, align 8
  br label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %33

50:                                               ; preds = %33
  store i32 4, i32* %2, align 4
  %51 = load i32, i32* %2, align 4
  %52 = call i8* @alloc_rec_per_cpu(i32 %51)
  %53 = load %struct.stats_record*, %struct.stats_record** %1, align 8
  %54 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  %56 = load i32, i32* %2, align 4
  %57 = call i8* @alloc_rec_per_cpu(i32 %56)
  %58 = load %struct.stats_record*, %struct.stats_record** %1, align 8
  %59 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i8* %57, i8** %60, align 8
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %75, %50
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @MAX_CPUS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  %66 = load i32, i32* %2, align 4
  %67 = call i8* @alloc_rec_per_cpu(i32 %66)
  %68 = load %struct.stats_record*, %struct.stats_record** %1, align 8
  %69 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %68, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  store i8* %67, i8** %74, align 8
  br label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %61

78:                                               ; preds = %61
  %79 = load %struct.stats_record*, %struct.stats_record** %1, align 8
  ret %struct.stats_record* %79
}

declare dso_local %struct.stats_record* @malloc(i32) #1

declare dso_local i32 @memset(%struct.stats_record*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @alloc_rec_per_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
