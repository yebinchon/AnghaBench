; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_select.c_do_poll.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_select.c_do_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poll_list = type { i32, %struct.pollfd*, %struct.poll_list* }
%struct.pollfd = type { i32 }
%struct.poll_wqueues = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.timespec64 = type { i32, i32 }

@POLL_BUSY_LOOP = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@ERESTARTNOHAND = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.poll_list*, %struct.poll_wqueues*, %struct.timespec64*)* @do_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_poll(%struct.poll_list* %0, %struct.poll_wqueues* %1, %struct.timespec64* %2) #0 {
  %4 = alloca %struct.poll_list*, align 8
  %5 = alloca %struct.poll_wqueues*, align 8
  %6 = alloca %struct.timespec64*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.poll_list*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.pollfd*, align 8
  %18 = alloca %struct.pollfd*, align 8
  store %struct.poll_list* %0, %struct.poll_list** %4, align 8
  store %struct.poll_wqueues* %1, %struct.poll_wqueues** %5, align 8
  store %struct.timespec64* %2, %struct.timespec64** %6, align 8
  %19 = load %struct.poll_wqueues*, %struct.poll_wqueues** %5, align 8
  %20 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %19, i32 0, i32 1
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %7, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = call i64 (...) @net_busy_loop_on()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i64, i64* @POLL_BUSY_LOOP, align 8
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i64 [ %24, %23 ], [ 0, %25 ]
  store i64 %27, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %28 = load %struct.timespec64*, %struct.timespec64** %6, align 8
  %29 = icmp ne %struct.timespec64* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load %struct.timespec64*, %struct.timespec64** %6, align 8
  %32 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = load %struct.timespec64*, %struct.timespec64** %6, align 8
  %37 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  store i32 1, i32* %10, align 4
  br label %43

43:                                               ; preds = %40, %35, %30, %26
  %44 = load %struct.timespec64*, %struct.timespec64** %6, align 8
  %45 = icmp ne %struct.timespec64* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load %struct.timespec64*, %struct.timespec64** %6, align 8
  %51 = call i32 @select_estimate_accuracy(%struct.timespec64* %50)
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %49, %46, %43
  br label %53

53:                                               ; preds = %151, %130, %124, %52
  store i32 0, i32* %16, align 4
  %54 = load %struct.poll_list*, %struct.poll_list** %4, align 8
  store %struct.poll_list* %54, %struct.poll_list** %15, align 8
  br label %55

55:                                               ; preds = %88, %53
  %56 = load %struct.poll_list*, %struct.poll_list** %15, align 8
  %57 = icmp ne %struct.poll_list* %56, null
  br i1 %57, label %58, label %92

58:                                               ; preds = %55
  %59 = load %struct.poll_list*, %struct.poll_list** %15, align 8
  %60 = getelementptr inbounds %struct.poll_list, %struct.poll_list* %59, i32 0, i32 1
  %61 = load %struct.pollfd*, %struct.pollfd** %60, align 8
  store %struct.pollfd* %61, %struct.pollfd** %17, align 8
  %62 = load %struct.pollfd*, %struct.pollfd** %17, align 8
  %63 = load %struct.poll_list*, %struct.poll_list** %15, align 8
  %64 = getelementptr inbounds %struct.poll_list, %struct.poll_list* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %62, i64 %66
  store %struct.pollfd* %67, %struct.pollfd** %18, align 8
  br label %68

68:                                               ; preds = %84, %58
  %69 = load %struct.pollfd*, %struct.pollfd** %17, align 8
  %70 = load %struct.pollfd*, %struct.pollfd** %18, align 8
  %71 = icmp ne %struct.pollfd* %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  %73 = load %struct.pollfd*, %struct.pollfd** %17, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call i64 @do_pollfd(%struct.pollfd* %73, %struct.TYPE_3__* %74, i32* %16, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i32* null, i32** %82, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %16, align 4
  br label %83

83:                                               ; preds = %78, %72
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.pollfd*, %struct.pollfd** %17, align 8
  %86 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %85, i32 1
  store %struct.pollfd* %86, %struct.pollfd** %17, align 8
  br label %68

87:                                               ; preds = %68
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.poll_list*, %struct.poll_list** %15, align 8
  %90 = getelementptr inbounds %struct.poll_list, %struct.poll_list* %89, i32 0, i32 2
  %91 = load %struct.poll_list*, %struct.poll_list** %90, align 8
  store %struct.poll_list* %91, %struct.poll_list** %15, align 8
  br label %55

92:                                               ; preds = %55
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i32* null, i32** %94, align 8
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %92
  %98 = load %struct.poll_wqueues*, %struct.poll_wqueues** %5, align 8
  %99 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* @current, align 4
  %102 = call i64 @signal_pending(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i32, i32* @ERESTARTNOHAND, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %104, %97
  br label %108

108:                                              ; preds = %107, %92
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111, %108
  br label %152

115:                                              ; preds = %111
  %116 = load i32, i32* %16, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %115
  %119 = call i32 (...) @need_resched()
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %118
  %122 = load i64, i64* %14, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = call i64 (...) @busy_loop_current_time()
  store i64 %125, i64* %14, align 8
  br label %53

126:                                              ; preds = %121
  %127 = load i64, i64* %14, align 8
  %128 = call i32 @busy_loop_timeout(i64 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %126
  br label %53

131:                                              ; preds = %126
  br label %132

132:                                              ; preds = %131, %118, %115
  store i64 0, i64* %13, align 8
  %133 = load %struct.timespec64*, %struct.timespec64** %6, align 8
  %134 = icmp ne %struct.timespec64* %133, null
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = load i32*, i32** %9, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %143, label %138

138:                                              ; preds = %135
  %139 = load %struct.timespec64*, %struct.timespec64** %6, align 8
  %140 = bitcast %struct.timespec64* %139 to i64*
  %141 = load i64, i64* %140, align 4
  %142 = call i32 @timespec64_to_ktime(i64 %141)
  store i32 %142, i32* %8, align 4
  store i32* %8, i32** %9, align 8
  br label %143

143:                                              ; preds = %138, %135, %132
  %144 = load %struct.poll_wqueues*, %struct.poll_wqueues** %5, align 8
  %145 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %146 = load i32*, i32** %9, align 8
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @poll_schedule_timeout(%struct.poll_wqueues* %144, i32 %145, i32* %146, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %143
  store i32 1, i32* %10, align 4
  br label %151

151:                                              ; preds = %150, %143
  br label %53

152:                                              ; preds = %114
  %153 = load i32, i32* %11, align 4
  ret i32 %153
}

declare dso_local i64 @net_busy_loop_on(...) #1

declare dso_local i32 @select_estimate_accuracy(%struct.timespec64*) #1

declare dso_local i64 @do_pollfd(%struct.pollfd*, %struct.TYPE_3__*, i32*, i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @need_resched(...) #1

declare dso_local i64 @busy_loop_current_time(...) #1

declare dso_local i32 @busy_loop_timeout(i64) #1

declare dso_local i32 @timespec64_to_ktime(i64) #1

declare dso_local i32 @poll_schedule_timeout(%struct.poll_wqueues*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
