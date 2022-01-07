; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c_sco_sock_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c_sco_sock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64, i32*, i32 }
%struct.sock = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"sock %p\00", align 1
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@sco_sock_ops = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @sco_sock_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sco_sock_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.socket*, %struct.socket** %7, align 8
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.socket* %11)
  %13 = load i32, i32* @SS_UNCONNECTED, align 4
  %14 = load %struct.socket*, %struct.socket** %7, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.socket*, %struct.socket** %7, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SOCK_SEQPACKET, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %41

24:                                               ; preds = %4
  %25 = load %struct.socket*, %struct.socket** %7, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 1
  store i32* @sco_sock_ops, i32** %26, align 8
  %27 = load %struct.net*, %struct.net** %6, align 8
  %28 = load %struct.socket*, %struct.socket** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.sock* @sco_sock_alloc(%struct.net* %27, %struct.socket* %28, i32 %29, i32 %30, i32 %31)
  store %struct.sock* %32, %struct.sock** %10, align 8
  %33 = load %struct.sock*, %struct.sock** %10, align 8
  %34 = icmp ne %struct.sock* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %41

38:                                               ; preds = %24
  %39 = load %struct.sock*, %struct.sock** %10, align 8
  %40 = call i32 @sco_sock_init(%struct.sock* %39, i32* null)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %35, %21
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @BT_DBG(i8*, %struct.socket*) #1

declare dso_local %struct.sock* @sco_sock_alloc(%struct.net*, %struct.socket*, i32, i32, i32) #1

declare dso_local i32 @sco_sock_init(%struct.sock*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
