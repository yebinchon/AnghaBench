; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_chan_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_chan_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_chan = type { i32, i32, %struct.l2cap_conn*, i32 }
%struct.l2cap_conn = type { i32, %struct.l2cap_chan* }
%struct.l2cap_chan = type { %struct.smp_chan* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cmac(aes)\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to create CMAC crypto context\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ecdh\00", align 1
@CRYPTO_ALG_INTERNAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Unable to create ECDH crypto context\00", align 1
@SMP_CMD_PAIRING_FAIL = common dso_local global i32 0, align 4
@smp_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smp_chan* (%struct.l2cap_conn*)* @smp_chan_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smp_chan* @smp_chan_create(%struct.l2cap_conn* %0) #0 {
  %2 = alloca %struct.smp_chan*, align 8
  %3 = alloca %struct.l2cap_conn*, align 8
  %4 = alloca %struct.l2cap_chan*, align 8
  %5 = alloca %struct.smp_chan*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %3, align 8
  %6 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %7 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %6, i32 0, i32 1
  %8 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  store %struct.l2cap_chan* %8, %struct.l2cap_chan** %4, align 8
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.smp_chan* @kzalloc(i32 24, i32 %9)
  store %struct.smp_chan* %10, %struct.smp_chan** %5, align 8
  %11 = load %struct.smp_chan*, %struct.smp_chan** %5, align 8
  %12 = icmp ne %struct.smp_chan* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.smp_chan* null, %struct.smp_chan** %2, align 8
  br label %64

14:                                               ; preds = %1
  %15 = call i32 @crypto_alloc_shash(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %16 = load %struct.smp_chan*, %struct.smp_chan** %5, align 8
  %17 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.smp_chan*, %struct.smp_chan** %5, align 8
  %19 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @IS_ERR(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = call i32 @BT_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %61

25:                                               ; preds = %14
  %26 = load i32, i32* @CRYPTO_ALG_INTERNAL, align 4
  %27 = call i32 @crypto_alloc_kpp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %26, i32 0)
  %28 = load %struct.smp_chan*, %struct.smp_chan** %5, align 8
  %29 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.smp_chan*, %struct.smp_chan** %5, align 8
  %31 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = call i32 @BT_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %56

37:                                               ; preds = %25
  %38 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %39 = load %struct.smp_chan*, %struct.smp_chan** %5, align 8
  %40 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %39, i32 0, i32 2
  store %struct.l2cap_conn* %38, %struct.l2cap_conn** %40, align 8
  %41 = load %struct.smp_chan*, %struct.smp_chan** %5, align 8
  %42 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %43 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %42, i32 0, i32 0
  store %struct.smp_chan* %41, %struct.smp_chan** %43, align 8
  %44 = load %struct.smp_chan*, %struct.smp_chan** %5, align 8
  %45 = load i32, i32* @SMP_CMD_PAIRING_FAIL, align 4
  %46 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %44, i32 %45)
  %47 = load %struct.smp_chan*, %struct.smp_chan** %5, align 8
  %48 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %47, i32 0, i32 1
  %49 = load i32, i32* @smp_timeout, align 4
  %50 = call i32 @INIT_DELAYED_WORK(i32* %48, i32 %49)
  %51 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %52 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @hci_conn_hold(i32 %53)
  %55 = load %struct.smp_chan*, %struct.smp_chan** %5, align 8
  store %struct.smp_chan* %55, %struct.smp_chan** %2, align 8
  br label %64

56:                                               ; preds = %35
  %57 = load %struct.smp_chan*, %struct.smp_chan** %5, align 8
  %58 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @crypto_free_shash(i32 %59)
  br label %61

61:                                               ; preds = %56, %23
  %62 = load %struct.smp_chan*, %struct.smp_chan** %5, align 8
  %63 = call i32 @kzfree(%struct.smp_chan* %62)
  store %struct.smp_chan* null, %struct.smp_chan** %2, align 8
  br label %64

64:                                               ; preds = %61, %37, %13
  %65 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  ret %struct.smp_chan* %65
}

declare dso_local %struct.smp_chan* @kzalloc(i32, i32) #1

declare dso_local i32 @crypto_alloc_shash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @crypto_alloc_kpp(i8*, i32, i32) #1

declare dso_local i32 @SMP_ALLOW_CMD(%struct.smp_chan*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @hci_conn_hold(i32) #1

declare dso_local i32 @crypto_free_shash(i32) #1

declare dso_local i32 @kzfree(%struct.smp_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
