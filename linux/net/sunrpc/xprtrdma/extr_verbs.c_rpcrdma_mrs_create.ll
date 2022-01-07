; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_mrs_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_mrs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_xprt = type { %struct.TYPE_2__, %struct.rpcrdma_ia, %struct.rpcrdma_buffer }
%struct.TYPE_2__ = type { i32 }
%struct.rpcrdma_ia = type { i32 }
%struct.rpcrdma_buffer = type { i32, i32, i32 }
%struct.rpcrdma_mr = type { i32, i32, %struct.rpcrdma_xprt* }

@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpcrdma_xprt*)* @rpcrdma_mrs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpcrdma_mrs_create(%struct.rpcrdma_xprt* %0) #0 {
  %2 = alloca %struct.rpcrdma_xprt*, align 8
  %3 = alloca %struct.rpcrdma_buffer*, align 8
  %4 = alloca %struct.rpcrdma_ia*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpcrdma_mr*, align 8
  %7 = alloca i32, align 4
  store %struct.rpcrdma_xprt* %0, %struct.rpcrdma_xprt** %2, align 8
  %8 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %2, align 8
  %9 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %8, i32 0, i32 2
  store %struct.rpcrdma_buffer* %9, %struct.rpcrdma_buffer** %3, align 8
  %10 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %2, align 8
  %11 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %10, i32 0, i32 1
  store %struct.rpcrdma_ia* %11, %struct.rpcrdma_ia** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %53, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %4, align 8
  %15 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %12
  %19 = load i32, i32* @GFP_NOFS, align 4
  %20 = call %struct.rpcrdma_mr* @kzalloc(i32 16, i32 %19)
  store %struct.rpcrdma_mr* %20, %struct.rpcrdma_mr** %6, align 8
  %21 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %6, align 8
  %22 = icmp ne %struct.rpcrdma_mr* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %56

24:                                               ; preds = %18
  %25 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %4, align 8
  %26 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %6, align 8
  %27 = call i32 @frwr_init_mr(%struct.rpcrdma_ia* %25, %struct.rpcrdma_mr* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %6, align 8
  %32 = call i32 @kfree(%struct.rpcrdma_mr* %31)
  br label %56

33:                                               ; preds = %24
  %34 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %2, align 8
  %35 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %6, align 8
  %36 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %35, i32 0, i32 2
  store %struct.rpcrdma_xprt* %34, %struct.rpcrdma_xprt** %36, align 8
  %37 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %38 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %37, i32 0, i32 0
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %6, align 8
  %41 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %40, i32 0, i32 1
  %42 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %43 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %42, i32 0, i32 2
  %44 = call i32 @list_add(i32* %41, i32* %43)
  %45 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %6, align 8
  %46 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %45, i32 0, i32 0
  %47 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %48 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %47, i32 0, i32 1
  %49 = call i32 @list_add(i32* %46, i32* %48)
  %50 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %51 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  br label %53

53:                                               ; preds = %33
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %12

56:                                               ; preds = %30, %23, %12
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %2, align 8
  %59 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add i32 %61, %57
  store i32 %62, i32* %60, align 4
  %63 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %2, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @trace_xprtrdma_createmrs(%struct.rpcrdma_xprt* %63, i32 %64)
  ret void
}

declare dso_local %struct.rpcrdma_mr* @kzalloc(i32, i32) #1

declare dso_local i32 @frwr_init_mr(%struct.rpcrdma_ia*, %struct.rpcrdma_mr*) #1

declare dso_local i32 @kfree(%struct.rpcrdma_mr*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @trace_xprtrdma_createmrs(%struct.rpcrdma_xprt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
