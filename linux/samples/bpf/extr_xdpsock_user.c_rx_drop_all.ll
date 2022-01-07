; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_rx_drop_all.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_rx_drop_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.pollfd = type { i32, i32 }

@MAX_SOCKS = common dso_local global i32 0, align 4
@num_socks = common dso_local global i32 0, align 4
@xsks = common dso_local global %struct.TYPE_3__** null, align 8
@POLLIN = common dso_local global i32 0, align 4
@opt_poll = common dso_local global i64 0, align 8
@opt_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rx_drop_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_drop_all() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @MAX_SOCKS, align 4
  %6 = add nsw i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %1, align 8
  %9 = alloca %struct.pollfd, i64 %7, align 16
  store i64 %7, i64* %2, align 8
  %10 = mul nuw i64 8, %7
  %11 = trunc i64 %10 to i32
  %12 = call i32 @memset(%struct.pollfd* %9, i32 0, i32 %11)
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %35, %0
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @num_socks, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @xsks, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %18, i64 %20
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @xsk_socket__fd(i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i64 %27
  %29 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* @POLLIN, align 4
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i64 %32
  %34 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 8
  br label %35

35:                                               ; preds = %17
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %13

38:                                               ; preds = %13
  br label %39

39:                                               ; preds = %65, %48, %38
  %40 = load i64, i64* @opt_poll, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i32, i32* @num_socks, align 4
  %44 = load i32, i32* @opt_timeout, align 4
  %45 = call i32 @poll(%struct.pollfd* %9, i32 %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %39

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %39
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %62, %50
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @num_socks, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @xsks, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %56, i64 %58
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = call i32 @rx_drop(%struct.TYPE_3__* %60, %struct.pollfd* %9)
  br label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %51

65:                                               ; preds = %51
  br label %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.pollfd*, i32, i32) #2

declare dso_local i32 @xsk_socket__fd(i32) #2

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #2

declare dso_local i32 @rx_drop(%struct.TYPE_3__*, %struct.pollfd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
