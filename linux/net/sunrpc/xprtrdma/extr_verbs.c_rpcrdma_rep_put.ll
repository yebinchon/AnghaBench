; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_rep_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_rep_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_buffer = type { i32 }
%struct.rpcrdma_rep = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpcrdma_buffer*, %struct.rpcrdma_rep*)* @rpcrdma_rep_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpcrdma_rep_put(%struct.rpcrdma_buffer* %0, %struct.rpcrdma_rep* %1) #0 {
  %3 = alloca %struct.rpcrdma_buffer*, align 8
  %4 = alloca %struct.rpcrdma_rep*, align 8
  store %struct.rpcrdma_buffer* %0, %struct.rpcrdma_buffer** %3, align 8
  store %struct.rpcrdma_rep* %1, %struct.rpcrdma_rep** %4, align 8
  %5 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %4, align 8
  %6 = getelementptr inbounds %struct.rpcrdma_rep, %struct.rpcrdma_rep* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %4, align 8
  %11 = getelementptr inbounds %struct.rpcrdma_rep, %struct.rpcrdma_rep* %10, i32 0, i32 0
  %12 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %13 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %12, i32 0, i32 0
  %14 = call i32 @llist_add(i32* %11, i32* %13)
  br label %18

15:                                               ; preds = %2
  %16 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %4, align 8
  %17 = call i32 @rpcrdma_rep_destroy(%struct.rpcrdma_rep* %16)
  br label %18

18:                                               ; preds = %15, %9
  ret void
}

declare dso_local i32 @llist_add(i32*, i32*) #1

declare dso_local i32 @rpcrdma_rep_destroy(%struct.rpcrdma_rep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
