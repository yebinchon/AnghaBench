; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_psock_drop.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_psock_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_psock = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SK_PSOCK_TX_ENABLED = common dso_local global i32 0, align 4
@sk_psock_destroy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sk_psock_drop(%struct.sock* %0, %struct.sk_psock* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_psock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_psock* %1, %struct.sk_psock** %4, align 8
  %5 = load %struct.sk_psock*, %struct.sk_psock** %4, align 8
  %6 = call i32 @sk_psock_cork_free(%struct.sk_psock* %5)
  %7 = load %struct.sk_psock*, %struct.sk_psock** %4, align 8
  %8 = call i32 @sk_psock_zap_ingress(%struct.sk_psock* %7)
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = call i32 @write_lock_bh(i32* %10)
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = load %struct.sk_psock*, %struct.sk_psock** %4, align 8
  %14 = call i32 @sk_psock_restore_proto(%struct.sock* %12, %struct.sk_psock* %13)
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = call i32 @rcu_assign_sk_user_data(%struct.sock* %15, i32* null)
  %17 = load %struct.sk_psock*, %struct.sk_psock** %4, align 8
  %18 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = load %struct.sk_psock*, %struct.sk_psock** %4, align 8
  %25 = call i32 @sk_psock_stop_strp(%struct.sock* %23, %struct.sk_psock* %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = call i32 @write_unlock_bh(i32* %28)
  %30 = load %struct.sk_psock*, %struct.sk_psock** %4, align 8
  %31 = load i32, i32* @SK_PSOCK_TX_ENABLED, align 4
  %32 = call i32 @sk_psock_clear_state(%struct.sk_psock* %30, i32 %31)
  %33 = load %struct.sk_psock*, %struct.sk_psock** %4, align 8
  %34 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %33, i32 0, i32 0
  %35 = load i32, i32* @sk_psock_destroy, align 4
  %36 = call i32 @call_rcu(i32* %34, i32 %35)
  ret void
}

declare dso_local i32 @sk_psock_cork_free(%struct.sk_psock*) #1

declare dso_local i32 @sk_psock_zap_ingress(%struct.sk_psock*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @sk_psock_restore_proto(%struct.sock*, %struct.sk_psock*) #1

declare dso_local i32 @rcu_assign_sk_user_data(%struct.sock*, i32*) #1

declare dso_local i32 @sk_psock_stop_strp(%struct.sock*, %struct.sk_psock*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @sk_psock_clear_state(%struct.sk_psock*, i32) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
