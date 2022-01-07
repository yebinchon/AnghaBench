; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.svc_serv = type { %struct.svc_program* }
%struct.svc_program = type { i32, i32, i32, %struct.TYPE_4__**, %struct.svc_program* }
%struct.TYPE_4__ = type { i64 }
%struct.net = type { i32 }

@TIF_SIGPENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"svc: attempting to unregister %sv%u\0A\00", align 1
@current = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_serv*, %struct.net*)* @svc_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_unregister(%struct.svc_serv* %0, %struct.net* %1) #0 {
  %3 = alloca %struct.svc_serv*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.svc_program*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.svc_serv* %0, %struct.svc_serv** %3, align 8
  store %struct.net* %1, %struct.net** %4, align 8
  %8 = load i32, i32* @TIF_SIGPENDING, align 4
  %9 = call i32 @clear_thread_flag(i32 %8)
  %10 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %11 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %10, i32 0, i32 0
  %12 = load %struct.svc_program*, %struct.svc_program** %11, align 8
  store %struct.svc_program* %12, %struct.svc_program** %5, align 8
  br label %13

13:                                               ; preds = %64, %2
  %14 = load %struct.svc_program*, %struct.svc_program** %5, align 8
  %15 = icmp ne %struct.svc_program* %14, null
  br i1 %15, label %16, label %68

16:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %60, %16
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.svc_program*, %struct.svc_program** %5, align 8
  %20 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %17
  %24 = load %struct.svc_program*, %struct.svc_program** %5, align 8
  %25 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 %28
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp eq %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %60

33:                                               ; preds = %23
  %34 = load %struct.svc_program*, %struct.svc_program** %5, align 8
  %35 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %36, i64 %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %60

45:                                               ; preds = %33
  %46 = load %struct.svc_program*, %struct.svc_program** %5, align 8
  %47 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load %struct.net*, %struct.net** %4, align 8
  %52 = load %struct.svc_program*, %struct.svc_program** %5, align 8
  %53 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.svc_program*, %struct.svc_program** %5, align 8
  %57 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @__svc_unregister(%struct.net* %51, i32 %54, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %45, %44, %32
  %61 = load i32, i32* %7, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %17

63:                                               ; preds = %17
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.svc_program*, %struct.svc_program** %5, align 8
  %66 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %65, i32 0, i32 4
  %67 = load %struct.svc_program*, %struct.svc_program** %66, align 8
  store %struct.svc_program* %67, %struct.svc_program** %5, align 8
  br label %13

68:                                               ; preds = %13
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @spin_lock_irqsave(i32* %72, i64 %73)
  %75 = call i32 (...) @recalc_sigpending()
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  ret void
}

declare dso_local i32 @clear_thread_flag(i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @__svc_unregister(%struct.net*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @recalc_sigpending(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
