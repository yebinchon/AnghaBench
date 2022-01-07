; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_napi_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_napi_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32, i32 (%struct.napi_struct*, i32)*, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.list_head = type { i32 }

@NAPI_STATE_SCHED = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s: Budget exhausted after napi rescheduled\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"backlog\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, %struct.list_head*)* @napi_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @napi_poll(%struct.napi_struct* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.napi_struct*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %8 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %9 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %8, i32 0, i32 2
  %10 = call i32 @list_del_init(i32* %9)
  %11 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %12 = call i8* @netpoll_poll_lock(%struct.napi_struct* %11)
  store i8* %12, i8** %5, align 8
  %13 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %14 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %16 = load i32, i32* @NAPI_STATE_SCHED, align 4
  %17 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %18 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %17, i32 0, i32 5
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %23 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %22, i32 0, i32 1
  %24 = load i32 (%struct.napi_struct*, i32)*, i32 (%struct.napi_struct*, i32)** %23, align 8
  %25 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 %24(%struct.napi_struct* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @trace_napi_poll(%struct.napi_struct* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %21, %2
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @WARN_ON_ONCE(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @likely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %95

45:                                               ; preds = %32
  %46 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %47 = call i32 @napi_disable_pending(%struct.napi_struct* %46)
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %52 = call i32 @napi_complete(%struct.napi_struct* %51)
  br label %95

53:                                               ; preds = %45
  %54 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %55 = call i32 @gro_normal_list(%struct.napi_struct* %54)
  %56 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %57 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %62 = load i32, i32* @HZ, align 4
  %63 = icmp sge i32 %62, 1000
  %64 = zext i1 %63 to i32
  %65 = call i32 @napi_gro_flush(%struct.napi_struct* %61, i32 %64)
  br label %66

66:                                               ; preds = %60, %53
  %67 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %68 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %67, i32 0, i32 2
  %69 = call i32 @list_empty(i32* %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %66
  %76 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %77 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %76, i32 0, i32 3
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = icmp ne %struct.TYPE_2__* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %82 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  br label %87

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %80
  %88 = phi i8* [ %85, %80 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %86 ]
  %89 = call i32 @pr_warn_once(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %88)
  br label %95

90:                                               ; preds = %66
  %91 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %92 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %91, i32 0, i32 2
  %93 = load %struct.list_head*, %struct.list_head** %4, align 8
  %94 = call i32 @list_add_tail(i32* %92, %struct.list_head* %93)
  br label %95

95:                                               ; preds = %90, %87, %50, %44
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @netpoll_poll_unlock(i8* %96)
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i8* @netpoll_poll_lock(%struct.napi_struct*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @trace_napi_poll(%struct.napi_struct*, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @napi_disable_pending(%struct.napi_struct*) #1

declare dso_local i32 @napi_complete(%struct.napi_struct*) #1

declare dso_local i32 @gro_normal_list(%struct.napi_struct*) #1

declare dso_local i32 @napi_gro_flush(%struct.napi_struct*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @pr_warn_once(i8*, i8*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @netpoll_poll_unlock(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
