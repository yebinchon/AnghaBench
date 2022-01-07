; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_locate_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_locate_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*, %struct.sk_buff*, i32*, i32*)* @rxkad_locate_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxkad_locate_data(%struct.rxrpc_call* %0, %struct.sk_buff* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.rxrpc_call*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %10 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %27 [
    i32 129, label %15
    i32 128, label %21
  ]

15:                                               ; preds = %4
  %16 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @rxkad_locate_data_1(%struct.rxrpc_call* %16, %struct.sk_buff* %17, i32* %18, i32* %19)
  br label %28

21:                                               ; preds = %4
  %22 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @rxkad_locate_data_2(%struct.rxrpc_call* %22, %struct.sk_buff* %23, i32* %24, i32* %25)
  br label %28

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %27, %21, %15
  ret void
}

declare dso_local i32 @rxkad_locate_data_1(%struct.rxrpc_call*, %struct.sk_buff*, i32*, i32*) #1

declare dso_local i32 @rxkad_locate_data_2(%struct.rxrpc_call*, %struct.sk_buff*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
