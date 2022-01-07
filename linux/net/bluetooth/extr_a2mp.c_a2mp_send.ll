; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amp_mgr = type { %struct.l2cap_chan* }
%struct.l2cap_chan = type { i32 }
%struct.a2mp_cmd = type { i32 }
%struct.kvec = type { i64, %struct.a2mp_cmd* }
%struct.msghdr = type { i32 }

@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amp_mgr*, i32, i32, i64, i8*)* @a2mp_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a2mp_send(%struct.amp_mgr* %0, i32 %1, i32 %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.amp_mgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.l2cap_chan*, align 8
  %12 = alloca %struct.a2mp_cmd*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.kvec, align 8
  %15 = alloca %struct.msghdr, align 4
  store %struct.amp_mgr* %0, %struct.amp_mgr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %16 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %17 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %16, i32 0, i32 0
  %18 = load %struct.l2cap_chan*, %struct.l2cap_chan** %17, align 8
  store %struct.l2cap_chan* %18, %struct.l2cap_chan** %11, align 8
  %19 = load i64, i64* %9, align 8
  %20 = add i64 %19, 4
  store i64 %20, i64* %13, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i64, i64* %9, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call %struct.a2mp_cmd* @__a2mp_build(i32 %21, i32 %22, i64 %23, i8* %24)
  store %struct.a2mp_cmd* %25, %struct.a2mp_cmd** %12, align 8
  %26 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %12, align 8
  %27 = icmp ne %struct.a2mp_cmd* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %5
  br label %44

29:                                               ; preds = %5
  %30 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %12, align 8
  %31 = getelementptr inbounds %struct.kvec, %struct.kvec* %14, i32 0, i32 1
  store %struct.a2mp_cmd* %30, %struct.a2mp_cmd** %31, align 8
  %32 = load i64, i64* %13, align 8
  %33 = getelementptr inbounds %struct.kvec, %struct.kvec* %14, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = call i32 @memset(%struct.msghdr* %15, i32 0, i32 4)
  %35 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %15, i32 0, i32 0
  %36 = load i32, i32* @WRITE, align 4
  %37 = load i64, i64* %13, align 8
  %38 = call i32 @iov_iter_kvec(i32* %35, i32 %36, %struct.kvec* %14, i32 1, i64 %37)
  %39 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %40 = load i64, i64* %13, align 8
  %41 = call i32 @l2cap_chan_send(%struct.l2cap_chan* %39, %struct.msghdr* %15, i64 %40)
  %42 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %12, align 8
  %43 = call i32 @kfree(%struct.a2mp_cmd* %42)
  br label %44

44:                                               ; preds = %29, %28
  ret void
}

declare dso_local %struct.a2mp_cmd* @__a2mp_build(i32, i32, i64, i8*) #1

declare dso_local i32 @memset(%struct.msghdr*, i32, i32) #1

declare dso_local i32 @iov_iter_kvec(i32*, i32, %struct.kvec*, i32, i64) #1

declare dso_local i32 @l2cap_chan_send(%struct.l2cap_chan*, %struct.msghdr*, i64) #1

declare dso_local i32 @kfree(%struct.a2mp_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
