; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_signal.c_do_notify_parent.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_signal.c_do_notify_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i32, %struct.TYPE_11__*, i32, %struct.TYPE_8__*, %struct.task_struct* }
%struct.TYPE_11__ = type { i64, %struct.sighand_struct* }
%struct.sighand_struct = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.kernel_siginfo = type { i32, i32, i32, i8*, i8*, i32, i32, i64 }

@SIGCHLD = common dso_local global i32 0, align 4
@user_ns = common dso_local global i32 0, align 4
@CLD_DUMPED = common dso_local global i32 0, align 4
@CLD_KILLED = common dso_local global i32 0, align 4
@CLD_EXITED = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i64 0, align 8
@SA_NOCLDWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_notify_parent(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kernel_siginfo, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sighand_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, -1
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = call i32 @task_is_stopped_or_traced(%struct.task_struct* %15)
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %2
  %23 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 5
  %25 = load %struct.task_struct*, %struct.task_struct** %24, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %27 = icmp ne %struct.task_struct* %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %30 = call i32 @thread_group_empty(%struct.task_struct* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %28, %22
  %34 = phi i1 [ true, %22 ], [ %32, %28 ]
  br label %35

35:                                               ; preds = %33, %2
  %36 = phi i1 [ false, %2 ], [ %34, %33 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %40 = call i32 @do_notify_pidfd(%struct.task_struct* %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @SIGCHLD, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %35
  %45 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %46 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %49 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %48, i32 0, i32 2
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %47, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* @SIGCHLD, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %44
  br label %57

57:                                               ; preds = %56, %35
  %58 = call i32 @clear_siginfo(%struct.kernel_siginfo* %5)
  %59 = load i32, i32* %4, align 4
  %60 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %5, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %5, i32 0, i32 7
  store i64 0, i64* %61, align 8
  %62 = call i32 (...) @rcu_read_lock()
  %63 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %64 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %65 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %64, i32 0, i32 2
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = call i32 @task_active_pid_ns(%struct.TYPE_11__* %66)
  %68 = call i32 @task_pid_nr_ns(%struct.task_struct* %63, i32 %67)
  %69 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %5, i32 0, i32 6
  store i32 %68, i32* %69, align 4
  %70 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %71 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %70, i32 0, i32 2
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = load i32, i32* @user_ns, align 4
  %74 = call i32 @task_cred_xxx(%struct.TYPE_11__* %72, i32 %73)
  %75 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %76 = call i32 @task_uid(%struct.task_struct* %75)
  %77 = call i32 @from_kuid_munged(i32 %74, i32 %76)
  %78 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %5, i32 0, i32 5
  store i32 %77, i32* %78, align 8
  %79 = call i32 (...) @rcu_read_unlock()
  %80 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %81 = call i32 @task_cputime(%struct.task_struct* %80, i64* %9, i64* %10)
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %84 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %83, i32 0, i32 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %82, %87
  %89 = call i8* @nsec_to_clock_t(i64 %88)
  %90 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %5, i32 0, i32 4
  store i8* %89, i8** %90, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %93 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %92, i32 0, i32 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %91, %96
  %98 = call i8* @nsec_to_clock_t(i64 %97)
  %99 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %5, i32 0, i32 3
  store i8* %98, i8** %99, align 8
  %100 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %101 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, 127
  %104 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %5, i32 0, i32 1
  store i32 %103, i32* %104, align 4
  %105 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %106 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, 128
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %57
  %111 = load i32, i32* @CLD_DUMPED, align 4
  %112 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %5, i32 0, i32 2
  store i32 %111, i32* %112, align 8
  br label %131

113:                                              ; preds = %57
  %114 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %115 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %116, 127
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load i32, i32* @CLD_KILLED, align 4
  %121 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %5, i32 0, i32 2
  store i32 %120, i32* %121, align 8
  br label %130

122:                                              ; preds = %113
  %123 = load i32, i32* @CLD_EXITED, align 4
  %124 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %5, i32 0, i32 2
  store i32 %123, i32* %124, align 8
  %125 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %126 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = ashr i32 %127, 8
  %129 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %5, i32 0, i32 1
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %122, %119
  br label %131

131:                                              ; preds = %130, %110
  %132 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %133 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %132, i32 0, i32 2
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load %struct.sighand_struct*, %struct.sighand_struct** %135, align 8
  store %struct.sighand_struct* %136, %struct.sighand_struct** %7, align 8
  %137 = load %struct.sighand_struct*, %struct.sighand_struct** %7, align 8
  %138 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %137, i32 0, i32 0
  %139 = load i64, i64* %6, align 8
  %140 = call i32 @spin_lock_irqsave(i32* %138, i64 %139)
  %141 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %142 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %191, label %145

145:                                              ; preds = %131
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* @SIGCHLD, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %191

149:                                              ; preds = %145
  %150 = load %struct.sighand_struct*, %struct.sighand_struct** %7, align 8
  %151 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %150, i32 0, i32 1
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = load i32, i32* @SIGCHLD, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @SIG_IGN, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %176, label %162

162:                                              ; preds = %149
  %163 = load %struct.sighand_struct*, %struct.sighand_struct** %7, align 8
  %164 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %163, i32 0, i32 1
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = load i32, i32* @SIGCHLD, align 4
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @SA_NOCLDWAIT, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %191

176:                                              ; preds = %162, %149
  store i32 1, i32* %8, align 4
  %177 = load %struct.sighand_struct*, %struct.sighand_struct** %7, align 8
  %178 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %177, i32 0, i32 1
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %178, align 8
  %180 = load i32, i32* @SIGCHLD, align 4
  %181 = sub nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @SIG_IGN, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %176
  store i32 0, i32* %4, align 4
  br label %190

190:                                              ; preds = %189, %176
  br label %191

191:                                              ; preds = %190, %162, %145, %131
  %192 = load i32, i32* %4, align 4
  %193 = call i64 @valid_signal(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %191
  %196 = load i32, i32* %4, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %195
  %199 = load i32, i32* %4, align 4
  %200 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %201 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %200, i32 0, i32 2
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %201, align 8
  %203 = call i32 @__group_send_sig_info(i32 %199, %struct.kernel_siginfo* %5, %struct.TYPE_11__* %202)
  br label %204

204:                                              ; preds = %198, %195, %191
  %205 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %206 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %207 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %206, i32 0, i32 2
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %207, align 8
  %209 = call i32 @__wake_up_parent(%struct.task_struct* %205, %struct.TYPE_11__* %208)
  %210 = load %struct.sighand_struct*, %struct.sighand_struct** %7, align 8
  %211 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %210, i32 0, i32 0
  %212 = load i64, i64* %6, align 8
  %213 = call i32 @spin_unlock_irqrestore(i32* %211, i64 %212)
  %214 = load i32, i32* %8, align 4
  ret i32 %214
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @task_is_stopped_or_traced(%struct.task_struct*) #1

declare dso_local i32 @thread_group_empty(%struct.task_struct*) #1

declare dso_local i32 @do_notify_pidfd(%struct.task_struct*) #1

declare dso_local i32 @clear_siginfo(%struct.kernel_siginfo*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @task_pid_nr_ns(%struct.task_struct*, i32) #1

declare dso_local i32 @task_active_pid_ns(%struct.TYPE_11__*) #1

declare dso_local i32 @from_kuid_munged(i32, i32) #1

declare dso_local i32 @task_cred_xxx(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @task_uid(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @task_cputime(%struct.task_struct*, i64*, i64*) #1

declare dso_local i8* @nsec_to_clock_t(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @valid_signal(i32) #1

declare dso_local i32 @__group_send_sig_info(i32, %struct.kernel_siginfo*, %struct.TYPE_11__*) #1

declare dso_local i32 @__wake_up_parent(%struct.task_struct*, %struct.TYPE_11__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
