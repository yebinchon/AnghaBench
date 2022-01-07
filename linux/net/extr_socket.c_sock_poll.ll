; ModuleID = '/home/carl/AnghaBench/linux/net/extr_socket.c_sock_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/extr_socket.c_sock_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.socket* }
%struct.socket = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.file*, %struct.socket*, i32*)* }

@POLL_BUSY_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @sock_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sock_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.socket*, %struct.socket** %10, align 8
  store %struct.socket* %11, %struct.socket** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @poll_requested_events(i32* %12)
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.socket*, %struct.socket** %6, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.file*, %struct.socket*, i32*)*, i32 (%struct.file*, %struct.socket*, i32*)** %17, align 8
  %19 = icmp ne i32 (%struct.file*, %struct.socket*, i32*)* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

21:                                               ; preds = %2
  %22 = load %struct.socket*, %struct.socket** %6, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @sk_can_busy_loop(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @POLL_BUSY_LOOP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.socket*, %struct.socket** %6, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @sk_busy_loop(i32 %35, i32 1)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i32, i32* @POLL_BUSY_LOOP, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %37, %21
  %40 = load %struct.socket*, %struct.socket** %6, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.file*, %struct.socket*, i32*)*, i32 (%struct.file*, %struct.socket*, i32*)** %43, align 8
  %45 = load %struct.file*, %struct.file** %4, align 8
  %46 = load %struct.socket*, %struct.socket** %6, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 %44(%struct.file* %45, %struct.socket* %46, i32* %47)
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %39, %20
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @poll_requested_events(i32*) #1

declare dso_local i64 @sk_can_busy_loop(i32) #1

declare dso_local i32 @sk_busy_loop(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
