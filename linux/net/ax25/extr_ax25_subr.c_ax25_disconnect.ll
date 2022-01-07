; ModuleID = '/home/carl/AnghaBench/linux/net/ax25/extr_ax25_subr.c_ax25_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/net/ax25/extr_ax25_subr.c_ax25_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i32 (%struct.TYPE_16__*)*, i32, i32 }

@SOCK_DESTROY = common dso_local global i32 0, align 4
@AX25_STATE_0 = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ax25_disconnect(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %6 = call i32 @ax25_clear_queues(%struct.TYPE_15__* %5)
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %10 = icmp ne %struct.TYPE_16__* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %15 = load i32, i32* @SOCK_DESTROY, align 4
  %16 = call i32 @sock_flag(%struct.TYPE_16__* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %11, %2
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = call i32 @ax25_stop_heartbeat(%struct.TYPE_15__* %19)
  br label %21

21:                                               ; preds = %18, %11
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %23 = call i32 @ax25_stop_t1timer(%struct.TYPE_15__* %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = call i32 @ax25_stop_t2timer(%struct.TYPE_15__* %24)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = call i32 @ax25_stop_t3timer(%struct.TYPE_15__* %26)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %29 = call i32 @ax25_stop_idletimer(%struct.TYPE_15__* %28)
  %30 = load i32, i32* @AX25_STATE_0, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @ax25_link_failed(%struct.TYPE_15__* %33, i32 %34)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = icmp ne %struct.TYPE_16__* %38, null
  br i1 %39, label %40, label %90

40:                                               ; preds = %21
  %41 = call i32 (...) @local_bh_disable()
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = call i32 @bh_lock_sock(%struct.TYPE_16__* %44)
  %46 = load i32, i32* @TCP_CLOSE, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 3
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 8
  %56 = load i32, i32* @SEND_SHUTDOWN, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %56
  store i32 %62, i32* %60, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = load i32, i32* @SOCK_DEAD, align 4
  %67 = call i32 @sock_flag(%struct.TYPE_16__* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %40
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %73, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = call i32 %74(%struct.TYPE_16__* %77)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = load i32, i32* @SOCK_DEAD, align 4
  %83 = call i32 @sock_set_flag(%struct.TYPE_16__* %81, i32 %82)
  br label %84

84:                                               ; preds = %69, %40
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = call i32 @bh_unlock_sock(%struct.TYPE_16__* %87)
  %89 = call i32 (...) @local_bh_enable()
  br label %90

90:                                               ; preds = %84, %21
  ret void
}

declare dso_local i32 @ax25_clear_queues(%struct.TYPE_15__*) #1

declare dso_local i32 @sock_flag(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ax25_stop_heartbeat(%struct.TYPE_15__*) #1

declare dso_local i32 @ax25_stop_t1timer(%struct.TYPE_15__*) #1

declare dso_local i32 @ax25_stop_t2timer(%struct.TYPE_15__*) #1

declare dso_local i32 @ax25_stop_t3timer(%struct.TYPE_15__*) #1

declare dso_local i32 @ax25_stop_idletimer(%struct.TYPE_15__*) #1

declare dso_local i32 @ax25_link_failed(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @bh_lock_sock(%struct.TYPE_16__*) #1

declare dso_local i32 @sock_set_flag(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.TYPE_16__*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
