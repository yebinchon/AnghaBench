; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_sock.c_cmtp_init_sockets.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_sock.c_cmtp_init_sockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmtp_proto = common dso_local global i32 0, align 4
@BTPROTO_CMTP = common dso_local global i32 0, align 4
@cmtp_sock_family_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Can't register CMTP socket\00", align 1
@init_net = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"cmtp\00", align 1
@cmtp_sk_list = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to create CMTP proc file\00", align 1
@BTPROTO_HIDP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"CMTP socket layer initialized\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmtp_init_sockets() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @proto_register(i32* @cmtp_proto, i32 0)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* %1, align 4
  br label %28

8:                                                ; preds = %0
  %9 = load i32, i32* @BTPROTO_CMTP, align 4
  %10 = call i32 @bt_sock_register(i32 %9, i32* @cmtp_sock_family_ops)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 @BT_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %25

15:                                               ; preds = %8
  %16 = call i32 @bt_procfs_init(i32* @init_net, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* @cmtp_sk_list, i32* null)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = call i32 @BT_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32, i32* @BTPROTO_HIDP, align 4
  %22 = call i32 @bt_sock_unregister(i32 %21)
  br label %25

23:                                               ; preds = %15
  %24 = call i32 @BT_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %28

25:                                               ; preds = %19, %13
  %26 = call i32 @proto_unregister(i32* @cmtp_proto)
  %27 = load i32, i32* %2, align 4
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %25, %23, %6
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @proto_register(i32*, i32) #1

declare dso_local i32 @bt_sock_register(i32, i32*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @bt_procfs_init(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @bt_sock_unregister(i32) #1

declare dso_local i32 @BT_INFO(i8*) #1

declare dso_local i32 @proto_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
