; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_xprt_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_xprt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.svc_xprt_class = type { i32 }
%struct.svc_xprt = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.svc_serv*, i32, i32, %struct.svc_xprt_class* }
%struct.svc_serv = type { i32 }

@XPT_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"uninitialized\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_xprt_init(%struct.net* %0, %struct.svc_xprt_class* %1, %struct.svc_xprt* %2, %struct.svc_serv* %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.svc_xprt_class*, align 8
  %7 = alloca %struct.svc_xprt*, align 8
  %8 = alloca %struct.svc_serv*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.svc_xprt_class* %1, %struct.svc_xprt_class** %6, align 8
  store %struct.svc_xprt* %2, %struct.svc_xprt** %7, align 8
  store %struct.svc_serv* %3, %struct.svc_serv** %8, align 8
  %9 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %10 = call i32 @memset(%struct.svc_xprt* %9, i32 0, i32 64)
  %11 = load %struct.svc_xprt_class*, %struct.svc_xprt_class** %6, align 8
  %12 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %13 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %12, i32 0, i32 12
  store %struct.svc_xprt_class* %11, %struct.svc_xprt_class** %13, align 8
  %14 = load %struct.svc_xprt_class*, %struct.svc_xprt_class** %6, align 8
  %15 = getelementptr inbounds %struct.svc_xprt_class, %struct.svc_xprt_class* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %18 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %17, i32 0, i32 11
  store i32 %16, i32* %18, align 4
  %19 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %20 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %19, i32 0, i32 10
  %21 = call i32 @kref_init(i32* %20)
  %22 = load %struct.svc_serv*, %struct.svc_serv** %8, align 8
  %23 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %24 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %23, i32 0, i32 9
  store %struct.svc_serv* %22, %struct.svc_serv** %24, align 8
  %25 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %26 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %25, i32 0, i32 8
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %29 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %28, i32 0, i32 7
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %32 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %31, i32 0, i32 6
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %35 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %34, i32 0, i32 5
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %38 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %37, i32 0, i32 4
  %39 = call i32 @mutex_init(i32* %38)
  %40 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %41 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %40, i32 0, i32 3
  %42 = call i32 @spin_lock_init(i32* %41)
  %43 = load i32, i32* @XPT_BUSY, align 4
  %44 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %45 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %44, i32 0, i32 2
  %46 = call i32 @set_bit(i32 %43, i32* %45)
  %47 = load %struct.net*, %struct.net** %5, align 8
  %48 = call i32 @get_net(%struct.net* %47)
  %49 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %50 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %52 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @strcpy(i32 %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @memset(%struct.svc_xprt*, i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @get_net(%struct.net*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
