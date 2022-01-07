; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_msgutil.c_free_msg.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_msgutil.c_free_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_msg = type { %struct.msg_msg* }
%struct.msg_msgseg = type { %struct.msg_msgseg* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_msg(%struct.msg_msg* %0) #0 {
  %2 = alloca %struct.msg_msg*, align 8
  %3 = alloca %struct.msg_msgseg*, align 8
  %4 = alloca %struct.msg_msgseg*, align 8
  store %struct.msg_msg* %0, %struct.msg_msg** %2, align 8
  %5 = load %struct.msg_msg*, %struct.msg_msg** %2, align 8
  %6 = bitcast %struct.msg_msg* %5 to %struct.msg_msgseg*
  %7 = call i32 @security_msg_msg_free(%struct.msg_msgseg* %6)
  %8 = load %struct.msg_msg*, %struct.msg_msg** %2, align 8
  %9 = getelementptr inbounds %struct.msg_msg, %struct.msg_msg* %8, i32 0, i32 0
  %10 = load %struct.msg_msg*, %struct.msg_msg** %9, align 8
  %11 = bitcast %struct.msg_msg* %10 to %struct.msg_msgseg*
  store %struct.msg_msgseg* %11, %struct.msg_msgseg** %3, align 8
  %12 = load %struct.msg_msg*, %struct.msg_msg** %2, align 8
  %13 = bitcast %struct.msg_msg* %12 to %struct.msg_msgseg*
  %14 = call i32 @kfree(%struct.msg_msgseg* %13)
  br label %15

15:                                               ; preds = %18, %1
  %16 = load %struct.msg_msgseg*, %struct.msg_msgseg** %3, align 8
  %17 = icmp ne %struct.msg_msgseg* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load %struct.msg_msgseg*, %struct.msg_msgseg** %3, align 8
  %20 = getelementptr inbounds %struct.msg_msgseg, %struct.msg_msgseg* %19, i32 0, i32 0
  %21 = load %struct.msg_msgseg*, %struct.msg_msgseg** %20, align 8
  store %struct.msg_msgseg* %21, %struct.msg_msgseg** %4, align 8
  %22 = call i32 (...) @cond_resched()
  %23 = load %struct.msg_msgseg*, %struct.msg_msgseg** %3, align 8
  %24 = call i32 @kfree(%struct.msg_msgseg* %23)
  %25 = load %struct.msg_msgseg*, %struct.msg_msgseg** %4, align 8
  store %struct.msg_msgseg* %25, %struct.msg_msgseg** %3, align 8
  br label %15

26:                                               ; preds = %15
  ret void
}

declare dso_local i32 @security_msg_msg_free(%struct.msg_msgseg*) #1

declare dso_local i32 @kfree(%struct.msg_msgseg*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
