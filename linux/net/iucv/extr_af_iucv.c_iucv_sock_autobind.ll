; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_iucv_sock_autobind.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_iucv_sock_autobind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sock = type { i32 }
%struct.iucv_sock = type { i64, i32, i32 }

@pr_iucv = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@iucv_userid = common dso_local global i32 0, align 4
@AF_IUCV_TRANS_IUCV = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@iucv_sk_list = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IUCV_QUEUELEN_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @iucv_sock_autobind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iucv_sock_autobind(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.iucv_sock*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %6)
  store %struct.iucv_sock* %7, %struct.iucv_sock** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @pr_iucv, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EPROTO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %45

17:                                               ; preds = %1
  %18 = load %struct.iucv_sock*, %struct.iucv_sock** %4, align 8
  %19 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @iucv_userid, align 4
  %22 = call i32 @memcpy(i32 %20, i32 %21, i32 8)
  %23 = load i32, i32* @AF_IUCV_TRANS_IUCV, align 4
  %24 = load %struct.iucv_sock*, %struct.iucv_sock** %4, align 8
  %25 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @GFP_DMA, align 4
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = call i32 @write_lock_bh(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iucv_sk_list, i32 0, i32 0))
  %32 = load %struct.iucv_sock*, %struct.iucv_sock** %4, align 8
  %33 = call i32 @__iucv_auto_name(%struct.iucv_sock* %32)
  %34 = call i32 @write_unlock_bh(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iucv_sk_list, i32 0, i32 0))
  %35 = load %struct.iucv_sock*, %struct.iucv_sock** %4, align 8
  %36 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %17
  %40 = load i64, i64* @IUCV_QUEUELEN_DEFAULT, align 8
  %41 = load %struct.iucv_sock*, %struct.iucv_sock** %4, align 8
  %42 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %39, %17
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %14
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.iucv_sock* @iucv_sk(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @__iucv_auto_name(%struct.iucv_sock*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
