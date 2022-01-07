; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_rawsock.c_rawsock_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_rawsock.c_rawsock_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"sock=%p sk=%p\0A\00", align 1
@SOCK_RAW = common dso_local global i64 0, align 8
@raw_sk_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @rawsock_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rawsock_release(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %5 = load %struct.socket*, %struct.socket** %3, align 8
  %6 = getelementptr inbounds %struct.socket, %struct.socket* %5, i32 0, i32 1
  %7 = load %struct.sock*, %struct.sock** %6, align 8
  store %struct.sock* %7, %struct.sock** %4, align 8
  %8 = load %struct.socket*, %struct.socket** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.socket* %8, %struct.sock* %9)
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = icmp ne %struct.sock* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

14:                                               ; preds = %1
  %15 = load %struct.socket*, %struct.socket** %3, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SOCK_RAW, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = call i32 @nfc_sock_unlink(i32* @raw_sk_list, %struct.sock* %21)
  br label %23

23:                                               ; preds = %20, %14
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = call i32 @sock_orphan(%struct.sock* %24)
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = call i32 @sock_put(%struct.sock* %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %23, %13
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @pr_debug(i8*, %struct.socket*, %struct.sock*) #1

declare dso_local i32 @nfc_sock_unlink(i32*, %struct.sock*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
