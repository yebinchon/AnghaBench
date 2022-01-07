; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_pktgen_thread_worker.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_pktgen_thread_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktgen_thread = type { i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.pktgen_dev = type { i32 }

@wait = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"starting pktgen/%d:  pid=%d\0A\00", align 1
@current = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@T_STOP = common dso_local global i32 0, align 4
@T_RUN = common dso_local global i32 0, align 4
@T_REMDEVALL = common dso_local global i32 0, align 4
@T_REMDEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s stopping all device\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%s removing all device\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%s removing thread\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pktgen_thread_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pktgen_thread_worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pktgen_thread*, align 8
  %4 = alloca %struct.pktgen_dev*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @wait, align 4
  %7 = call i32 @DEFINE_WAIT(i32 %6)
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.pktgen_thread*
  store %struct.pktgen_thread* %9, %struct.pktgen_thread** %3, align 8
  store %struct.pktgen_dev* null, %struct.pktgen_dev** %4, align 8
  %10 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %11 = getelementptr inbounds %struct.pktgen_thread, %struct.pktgen_thread* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = call i32 (...) @smp_processor_id()
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %19 = getelementptr inbounds %struct.pktgen_thread, %struct.pktgen_thread* %18, i32 0, i32 3
  %20 = call i32 @init_waitqueue_head(i32* %19)
  %21 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %22 = getelementptr inbounds %struct.pktgen_thread, %struct.pktgen_thread* %21, i32 0, i32 5
  %23 = call i32 @complete(i32* %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @current, align 4
  %26 = call i32 @task_pid_nr(i32 %25)
  %27 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26)
  %28 = call i32 (...) @set_freezable()
  br label %29

29:                                               ; preds = %148, %56, %1
  %30 = call i32 (...) @kthread_should_stop()
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %150

33:                                               ; preds = %29
  %34 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %35 = call %struct.pktgen_dev* @next_to_run(%struct.pktgen_thread* %34)
  store %struct.pktgen_dev* %35, %struct.pktgen_dev** %4, align 8
  %36 = load %struct.pktgen_dev*, %struct.pktgen_dev** %4, align 8
  %37 = icmp ne %struct.pktgen_dev* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %40 = getelementptr inbounds %struct.pktgen_thread, %struct.pktgen_thread* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i1 [ false, %33 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %43
  %49 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %50 = getelementptr inbounds %struct.pktgen_thread, %struct.pktgen_thread* %49, i32 0, i32 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %150

56:                                               ; preds = %48
  %57 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %58 = getelementptr inbounds %struct.pktgen_thread, %struct.pktgen_thread* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %61 = getelementptr inbounds %struct.pktgen_thread, %struct.pktgen_thread* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* @HZ, align 4
  %66 = sdiv i32 %65, 10
  %67 = call i32 @wait_event_interruptible_timeout(i32 %59, i32 %64, i32 %66)
  %68 = call i32 (...) @try_to_freeze()
  br label %29

69:                                               ; preds = %43
  %70 = load %struct.pktgen_dev*, %struct.pktgen_dev** %4, align 8
  %71 = call i64 @likely(%struct.pktgen_dev* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = load %struct.pktgen_dev*, %struct.pktgen_dev** %4, align 8
  %75 = call i32 @pktgen_xmit(%struct.pktgen_dev* %74)
  %76 = call i64 (...) @need_resched()
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.pktgen_dev*, %struct.pktgen_dev** %4, align 8
  %80 = call i32 @pktgen_resched(%struct.pktgen_dev* %79)
  br label %83

81:                                               ; preds = %73
  %82 = call i32 (...) @cpu_relax()
  br label %83

83:                                               ; preds = %81, %78
  br label %84

84:                                               ; preds = %83, %69
  %85 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %86 = getelementptr inbounds %struct.pktgen_thread, %struct.pktgen_thread* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @T_STOP, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %84
  %92 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %93 = call i32 @pktgen_stop(%struct.pktgen_thread* %92)
  %94 = load i32, i32* @T_STOP, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %97 = getelementptr inbounds %struct.pktgen_thread, %struct.pktgen_thread* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %91, %84
  %101 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %102 = getelementptr inbounds %struct.pktgen_thread, %struct.pktgen_thread* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @T_RUN, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %100
  %108 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %109 = call i32 @pktgen_run(%struct.pktgen_thread* %108)
  %110 = load i32, i32* @T_RUN, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %113 = getelementptr inbounds %struct.pktgen_thread, %struct.pktgen_thread* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %107, %100
  %117 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %118 = getelementptr inbounds %struct.pktgen_thread, %struct.pktgen_thread* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @T_REMDEVALL, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %116
  %124 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %125 = call i32 @pktgen_rem_all_ifs(%struct.pktgen_thread* %124)
  %126 = load i32, i32* @T_REMDEVALL, align 4
  %127 = xor i32 %126, -1
  %128 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %129 = getelementptr inbounds %struct.pktgen_thread, %struct.pktgen_thread* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %123, %116
  %133 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %134 = getelementptr inbounds %struct.pktgen_thread, %struct.pktgen_thread* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @T_REMDEV, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %132
  %140 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %141 = call i32 @pktgen_rem_one_if(%struct.pktgen_thread* %140)
  %142 = load i32, i32* @T_REMDEV, align 4
  %143 = xor i32 %142, -1
  %144 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %145 = getelementptr inbounds %struct.pktgen_thread, %struct.pktgen_thread* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %139, %132
  %149 = call i32 (...) @try_to_freeze()
  br label %29

150:                                              ; preds = %55, %29
  %151 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %152 = getelementptr inbounds %struct.pktgen_thread, %struct.pktgen_thread* %151, i32 0, i32 2
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %155)
  %157 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %158 = call i32 @pktgen_stop(%struct.pktgen_thread* %157)
  %159 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %160 = getelementptr inbounds %struct.pktgen_thread, %struct.pktgen_thread* %159, i32 0, i32 2
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  %165 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %166 = call i32 @pktgen_rem_all_ifs(%struct.pktgen_thread* %165)
  %167 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %168 = getelementptr inbounds %struct.pktgen_thread, %struct.pktgen_thread* %167, i32 0, i32 2
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %171)
  %173 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %174 = call i32 @pktgen_rem_thread(%struct.pktgen_thread* %173)
  ret i32 0
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local %struct.pktgen_dev* @next_to_run(%struct.pktgen_thread*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i64 @likely(%struct.pktgen_dev*) #1

declare dso_local i32 @pktgen_xmit(%struct.pktgen_dev*) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i32 @pktgen_resched(%struct.pktgen_dev*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @pktgen_stop(%struct.pktgen_thread*) #1

declare dso_local i32 @pktgen_run(%struct.pktgen_thread*) #1

declare dso_local i32 @pktgen_rem_all_ifs(%struct.pktgen_thread*) #1

declare dso_local i32 @pktgen_rem_one_if(%struct.pktgen_thread*) #1

declare dso_local i32 @pktgen_rem_thread(%struct.pktgen_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
