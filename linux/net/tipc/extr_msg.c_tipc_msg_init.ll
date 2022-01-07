; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_msg.c_tipc_msg_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_msg.c_tipc_msg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_msg = type { i32 }

@SHORT_H_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_msg_init(i32 %0, %struct.tipc_msg* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tipc_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.tipc_msg* %1, %struct.tipc_msg** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %14 = load i32, i32* %11, align 4
  %15 = call i32 @memset(%struct.tipc_msg* %13, i32 0, i32 %14)
  %16 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %17 = call i32 @msg_set_version(%struct.tipc_msg* %16)
  %18 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @msg_set_user(%struct.tipc_msg* %18, i32 %19)
  %21 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @msg_set_hdr_sz(%struct.tipc_msg* %21, i32 %22)
  %24 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @msg_set_size(%struct.tipc_msg* %24, i32 %25)
  %27 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @msg_set_prevnode(%struct.tipc_msg* %27, i32 %28)
  %30 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @msg_set_type(%struct.tipc_msg* %30, i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @SHORT_H_SIZE, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %6
  %37 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @msg_set_orignode(%struct.tipc_msg* %37, i32 %38)
  %40 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @msg_set_destnode(%struct.tipc_msg* %40, i32 %41)
  br label %43

43:                                               ; preds = %36, %6
  ret void
}

declare dso_local i32 @memset(%struct.tipc_msg*, i32, i32) #1

declare dso_local i32 @msg_set_version(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_user(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_hdr_sz(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_size(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_prevnode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_type(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_orignode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_destnode(%struct.tipc_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
