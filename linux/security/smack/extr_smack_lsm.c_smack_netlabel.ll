; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_netlabel.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_netlabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smack_known = type { i32 }
%struct.sock = type { i32, %struct.socket_smack* }
%struct.socket_smack = type { %struct.smack_known* }

@smack_net_ambient = common dso_local global %struct.smack_known* null, align 8
@SMACK_UNLABELED_SOCKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32)* @smack_netlabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smack_netlabel(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smack_known*, align 8
  %6 = alloca %struct.socket_smack*, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 1
  %10 = load %struct.socket_smack*, %struct.socket_smack** %9, align 8
  store %struct.socket_smack* %10, %struct.socket_smack** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = call i32 (...) @local_bh_disable()
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call i32 @bh_lock_sock_nested(%struct.sock* %12)
  %14 = load %struct.socket_smack*, %struct.socket_smack** %6, align 8
  %15 = getelementptr inbounds %struct.socket_smack, %struct.socket_smack* %14, i32 0, i32 0
  %16 = load %struct.smack_known*, %struct.smack_known** %15, align 8
  %17 = load %struct.smack_known*, %struct.smack_known** @smack_net_ambient, align 8
  %18 = icmp eq %struct.smack_known* %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SMACK_UNLABELED_SOCKET, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %2
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = call i32 @netlbl_sock_delattr(%struct.sock* %24)
  br label %37

26:                                               ; preds = %19
  %27 = load %struct.socket_smack*, %struct.socket_smack** %6, align 8
  %28 = getelementptr inbounds %struct.socket_smack, %struct.socket_smack* %27, i32 0, i32 0
  %29 = load %struct.smack_known*, %struct.smack_known** %28, align 8
  store %struct.smack_known* %29, %struct.smack_known** %5, align 8
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.smack_known*, %struct.smack_known** %5, align 8
  %35 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %34, i32 0, i32 0
  %36 = call i32 @netlbl_sock_setattr(%struct.sock* %30, i32 %33, i32* %35)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %26, %23
  %38 = load %struct.sock*, %struct.sock** %3, align 8
  %39 = call i32 @bh_unlock_sock(%struct.sock* %38)
  %40 = call i32 (...) @local_bh_enable()
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @bh_lock_sock_nested(%struct.sock*) #1

declare dso_local i32 @netlbl_sock_delattr(%struct.sock*) #1

declare dso_local i32 @netlbl_sock_setattr(%struct.sock*, i32, i32*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
