; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_set_rcvlowat.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_set_rcvlowat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i32 }

@SOCK_RCVBUF_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_set_rcvlowat(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SOCK_RCVBUF_LOCK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 1
  store i32 %17, i32* %6, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = call %struct.TYPE_6__* @sock_net(%struct.sock* %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %18, %13
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @min(i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %38

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %36
  %39 = phi i32 [ %34, %36 ], [ 1, %37 ]
  %40 = call i32 @WRITE_ONCE(i32 %33, i32 %39)
  %41 = load %struct.sock*, %struct.sock** %4, align 8
  %42 = call i32 @tcp_data_ready(%struct.sock* %41)
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SOCK_RCVBUF_LOCK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %71

50:                                               ; preds = %38
  %51 = load i32, i32* %5, align 4
  %52 = shl i32 %51, 1
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.sock*, %struct.sock** %4, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %53, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %50
  %59 = load %struct.sock*, %struct.sock** %4, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @WRITE_ONCE(i32 %61, i32 %62)
  %64 = load %struct.sock*, %struct.sock** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @tcp_win_from_space(%struct.sock* %64, i32 %65)
  %67 = load %struct.sock*, %struct.sock** %4, align 8
  %68 = call %struct.TYPE_5__* @tcp_sk(%struct.sock* %67)
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  br label %70

70:                                               ; preds = %58, %50
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %49
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_6__* @sock_net(%struct.sock*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @tcp_data_ready(%struct.sock*) #1

declare dso_local i32 @tcp_win_from_space(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_5__* @tcp_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
