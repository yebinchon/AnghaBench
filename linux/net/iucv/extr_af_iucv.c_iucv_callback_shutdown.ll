; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_iucv_callback_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_iucv_callback_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_path = type { %struct.sock* }
%struct.sock = type { i64, i32 (%struct.sock*)*, i32 }

@IUCV_CLOSED = common dso_local global i64 0, align 8
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iucv_path*, i32*)* @iucv_callback_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iucv_callback_shutdown(%struct.iucv_path* %0, i32* %1) #0 {
  %3 = alloca %struct.iucv_path*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sock*, align 8
  store %struct.iucv_path* %0, %struct.iucv_path** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %7 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %6, i32 0, i32 0
  %8 = load %struct.sock*, %struct.sock** %7, align 8
  store %struct.sock* %8, %struct.sock** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %5, align 8
  %10 = call i32 @bh_lock_sock(%struct.sock* %9)
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IUCV_CLOSED, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load i32, i32* @SEND_SHUTDOWN, align 4
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 1
  %24 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %23, align 8
  %25 = load %struct.sock*, %struct.sock** %5, align 8
  %26 = call i32 %24(%struct.sock* %25)
  br label %27

27:                                               ; preds = %16, %2
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = call i32 @bh_unlock_sock(%struct.sock* %28)
  ret void
}

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
