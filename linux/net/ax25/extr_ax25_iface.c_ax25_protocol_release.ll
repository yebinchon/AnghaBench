; ModuleID = '/home/carl/AnghaBench/linux/net/ax25/extr_ax25_iface.c_ax25_protocol_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/ax25/extr_ax25_iface.c_ax25_protocol_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ax25_protocol = type { i32, %struct.ax25_protocol* }

@protocol_list_lock = common dso_local global i32 0, align 4
@protocol_list = common dso_local global %struct.ax25_protocol* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ax25_protocol_release(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ax25_protocol*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @write_lock_bh(i32* @protocol_list_lock)
  %5 = load %struct.ax25_protocol*, %struct.ax25_protocol** @protocol_list, align 8
  store %struct.ax25_protocol* %5, %struct.ax25_protocol** %3, align 8
  %6 = load %struct.ax25_protocol*, %struct.ax25_protocol** %3, align 8
  %7 = icmp eq %struct.ax25_protocol* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %51

9:                                                ; preds = %1
  %10 = load %struct.ax25_protocol*, %struct.ax25_protocol** %3, align 8
  %11 = getelementptr inbounds %struct.ax25_protocol, %struct.ax25_protocol* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load %struct.ax25_protocol*, %struct.ax25_protocol** %3, align 8
  %17 = getelementptr inbounds %struct.ax25_protocol, %struct.ax25_protocol* %16, i32 0, i32 1
  %18 = load %struct.ax25_protocol*, %struct.ax25_protocol** %17, align 8
  store %struct.ax25_protocol* %18, %struct.ax25_protocol** @protocol_list, align 8
  br label %51

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %46, %19
  %21 = load %struct.ax25_protocol*, %struct.ax25_protocol** %3, align 8
  %22 = icmp ne %struct.ax25_protocol* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.ax25_protocol*, %struct.ax25_protocol** %3, align 8
  %25 = getelementptr inbounds %struct.ax25_protocol, %struct.ax25_protocol* %24, i32 0, i32 1
  %26 = load %struct.ax25_protocol*, %struct.ax25_protocol** %25, align 8
  %27 = icmp ne %struct.ax25_protocol* %26, null
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi i1 [ false, %20 ], [ %27, %23 ]
  br i1 %29, label %30, label %50

30:                                               ; preds = %28
  %31 = load %struct.ax25_protocol*, %struct.ax25_protocol** %3, align 8
  %32 = getelementptr inbounds %struct.ax25_protocol, %struct.ax25_protocol* %31, i32 0, i32 1
  %33 = load %struct.ax25_protocol*, %struct.ax25_protocol** %32, align 8
  %34 = getelementptr inbounds %struct.ax25_protocol, %struct.ax25_protocol* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load %struct.ax25_protocol*, %struct.ax25_protocol** %3, align 8
  %40 = getelementptr inbounds %struct.ax25_protocol, %struct.ax25_protocol* %39, i32 0, i32 1
  %41 = load %struct.ax25_protocol*, %struct.ax25_protocol** %40, align 8
  %42 = getelementptr inbounds %struct.ax25_protocol, %struct.ax25_protocol* %41, i32 0, i32 1
  %43 = load %struct.ax25_protocol*, %struct.ax25_protocol** %42, align 8
  %44 = load %struct.ax25_protocol*, %struct.ax25_protocol** %3, align 8
  %45 = getelementptr inbounds %struct.ax25_protocol, %struct.ax25_protocol* %44, i32 0, i32 1
  store %struct.ax25_protocol* %43, %struct.ax25_protocol** %45, align 8
  br label %51

46:                                               ; preds = %30
  %47 = load %struct.ax25_protocol*, %struct.ax25_protocol** %3, align 8
  %48 = getelementptr inbounds %struct.ax25_protocol, %struct.ax25_protocol* %47, i32 0, i32 1
  %49 = load %struct.ax25_protocol*, %struct.ax25_protocol** %48, align 8
  store %struct.ax25_protocol* %49, %struct.ax25_protocol** %3, align 8
  br label %20

50:                                               ; preds = %28
  br label %51

51:                                               ; preds = %50, %38, %15, %8
  %52 = call i32 @write_unlock_bh(i32* @protocol_list_lock)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
