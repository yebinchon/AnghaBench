; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.crypto_sync_skcipher = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"pcbc(fcrypt)\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@rxkad_ci_req = common dso_local global %struct.skcipher_request* null, align 8
@rxkad_ci = common dso_local global %struct.crypto_sync_skcipher* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rxkad_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxkad_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.crypto_sync_skcipher*, align 8
  %3 = alloca %struct.skcipher_request*, align 8
  %4 = call %struct.crypto_sync_skcipher* @crypto_alloc_sync_skcipher(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store %struct.crypto_sync_skcipher* %4, %struct.crypto_sync_skcipher** %2, align 8
  %5 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %2, align 8
  %6 = call i64 @IS_ERR(%struct.crypto_sync_skcipher* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %2, align 8
  %10 = call i32 @PTR_ERR(%struct.crypto_sync_skcipher* %9)
  store i32 %10, i32* %1, align 4
  br label %27

11:                                               ; preds = %0
  %12 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %2, align 8
  %13 = getelementptr inbounds %struct.crypto_sync_skcipher, %struct.crypto_sync_skcipher* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.skcipher_request* @skcipher_request_alloc(i32* %13, i32 %14)
  store %struct.skcipher_request* %15, %struct.skcipher_request** %3, align 8
  %16 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %17 = icmp ne %struct.skcipher_request* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %22

19:                                               ; preds = %11
  %20 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  store %struct.skcipher_request* %20, %struct.skcipher_request** @rxkad_ci_req, align 8
  %21 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %2, align 8
  store %struct.crypto_sync_skcipher* %21, %struct.crypto_sync_skcipher** @rxkad_ci, align 8
  store i32 0, i32* %1, align 4
  br label %27

22:                                               ; preds = %18
  %23 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %2, align 8
  %24 = call i32 @crypto_free_sync_skcipher(%struct.crypto_sync_skcipher* %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %22, %19, %8
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local %struct.crypto_sync_skcipher* @crypto_alloc_sync_skcipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_sync_skcipher*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_sync_skcipher*) #1

declare dso_local %struct.skcipher_request* @skcipher_request_alloc(i32*, i32) #1

declare dso_local i32 @crypto_free_sync_skcipher(%struct.crypto_sync_skcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
