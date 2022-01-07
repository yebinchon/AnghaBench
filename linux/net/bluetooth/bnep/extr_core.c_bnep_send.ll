; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/bnep/extr_core.c_bnep_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/bnep/extr_core.c_bnep_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnep_session = type { i32, %struct.socket* }
%struct.socket = type { i32 }
%struct.kvec = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnep_session*, i8*, i64)* @bnep_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnep_send(%struct.bnep_session* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.bnep_session*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.kvec, align 8
  store %struct.bnep_session* %0, %struct.bnep_session** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.bnep_session*, %struct.bnep_session** %4, align 8
  %10 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %9, i32 0, i32 1
  %11 = load %struct.socket*, %struct.socket** %10, align 8
  store %struct.socket* %11, %struct.socket** %7, align 8
  %12 = getelementptr inbounds %struct.kvec, %struct.kvec* %8, i32 0, i32 0
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds %struct.kvec, %struct.kvec* %8, i32 0, i32 1
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %14, align 8
  %16 = load %struct.socket*, %struct.socket** %7, align 8
  %17 = load %struct.bnep_session*, %struct.bnep_session** %4, align 8
  %18 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %17, i32 0, i32 0
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @kernel_sendmsg(%struct.socket* %16, i32* %18, %struct.kvec* %8, i32 1, i64 %19)
  ret i32 %20
}

declare dso_local i32 @kernel_sendmsg(%struct.socket*, i32*, %struct.kvec*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
