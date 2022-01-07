; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_listen.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i64, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"sk %p backlog %d\00", align 1
@BT_BOUND = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@rfcomm_sk_list = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@BT_LISTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @rfcomm_sock_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_sock_listen(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.socket*, %struct.socket** %3, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 0
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.sock* %12, i32 %13)
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = call i32 @lock_sock(%struct.sock* %15)
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BT_BOUND, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EBADFD, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %79

25:                                               ; preds = %2
  %26 = load %struct.sock*, %struct.sock** %5, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SOCK_STREAM, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %79

34:                                               ; preds = %25
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = call %struct.TYPE_4__* @rfcomm_pi(%struct.sock* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %70, label %40

40:                                               ; preds = %34
  %41 = load %struct.sock*, %struct.sock** %5, align 8
  %42 = call %struct.TYPE_4__* @rfcomm_pi(%struct.sock* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32* %43, i32** %7, align 8
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  %46 = call i32 @write_lock(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rfcomm_sk_list, i32 0, i32 0))
  store i32 1, i32* %8, align 4
  br label %47

47:                                               ; preds = %61, %40
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 31
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @__rfcomm_get_listen_sock_by_addr(i32 %51, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.sock*, %struct.sock** %5, align 8
  %58 = call %struct.TYPE_4__* @rfcomm_pi(%struct.sock* %57)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  store i32 0, i32* %6, align 4
  br label %64

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %47

64:                                               ; preds = %55, %47
  %65 = call i32 @write_unlock(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rfcomm_sk_list, i32 0, i32 0))
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %79

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69, %34
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.sock*, %struct.sock** %5, align 8
  %73 = getelementptr inbounds %struct.sock, %struct.sock* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.sock*, %struct.sock** %5, align 8
  %75 = getelementptr inbounds %struct.sock, %struct.sock* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load i64, i64* @BT_LISTEN, align 8
  %77 = load %struct.sock*, %struct.sock** %5, align 8
  %78 = getelementptr inbounds %struct.sock, %struct.sock* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %70, %68, %31, %22
  %80 = load %struct.sock*, %struct.sock** %5, align 8
  %81 = call i32 @release_sock(%struct.sock* %80)
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @rfcomm_pi(%struct.sock*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @__rfcomm_get_listen_sock_by_addr(i32, i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
