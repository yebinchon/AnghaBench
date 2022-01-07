; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pipe_start_flow_control.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pipe_start_flow_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)* }
%struct.pep_sock = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @pipe_start_flow_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipe_start_flow_control(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.pep_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.pep_sock* @pep_sk(%struct.sock* %4)
  store %struct.pep_sock* %5, %struct.pep_sock** %3, align 8
  %6 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %7 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @pn_flow_safe(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %1
  %12 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %13 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %12, i32 0, i32 0
  %14 = call i32 @atomic_set(i32* %13, i32 1)
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %16, align 8
  %18 = load %struct.sock*, %struct.sock** %2, align 8
  %19 = call i32 %17(%struct.sock* %18)
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.sock*, %struct.sock** %2, align 8
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call i32 @pipe_grant_credits(%struct.sock* %21, i32 %22)
  ret void
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local i32 @pn_flow_safe(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @pipe_grant_credits(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
