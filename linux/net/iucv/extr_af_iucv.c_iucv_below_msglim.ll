; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_iucv_below_msglim.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_iucv_below_msglim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.iucv_sock = type { i64, i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@IUCV_CONNECTED = common dso_local global i64 0, align 8
@AF_IUCV_TRANS_IUCV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @iucv_below_msglim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iucv_below_msglim(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.iucv_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %5)
  store %struct.iucv_sock* %6, %struct.iucv_sock** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IUCV_CONNECTED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %46

13:                                               ; preds = %1
  %14 = load %struct.iucv_sock*, %struct.iucv_sock** %4, align 8
  %15 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AF_IUCV_TRANS_IUCV, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load %struct.iucv_sock*, %struct.iucv_sock** %4, align 8
  %21 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %20, i32 0, i32 5
  %22 = call i64 @skb_queue_len(i32* %21)
  %23 = load %struct.iucv_sock*, %struct.iucv_sock** %4, align 8
  %24 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %23, i32 0, i32 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %22, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %2, align 4
  br label %46

30:                                               ; preds = %13
  %31 = load %struct.iucv_sock*, %struct.iucv_sock** %4, align 8
  %32 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %31, i32 0, i32 3
  %33 = call i64 @atomic_read(i32* %32)
  %34 = load %struct.iucv_sock*, %struct.iucv_sock** %4, align 8
  %35 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.iucv_sock*, %struct.iucv_sock** %4, align 8
  %40 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %39, i32 0, i32 2
  %41 = call i64 @atomic_read(i32* %40)
  %42 = icmp sle i64 %41, 0
  br label %43

43:                                               ; preds = %38, %30
  %44 = phi i1 [ false, %30 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %19, %12
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.iucv_sock* @iucv_sk(%struct.sock*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
