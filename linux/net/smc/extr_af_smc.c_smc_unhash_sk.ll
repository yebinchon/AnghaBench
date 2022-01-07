; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_unhash_sk.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_unhash_sk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.smc_hashinfo* }
%struct.smc_hashinfo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smc_unhash_sk(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.smc_hashinfo*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = getelementptr inbounds %struct.sock, %struct.sock* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.smc_hashinfo*, %struct.smc_hashinfo** %8, align 8
  store %struct.smc_hashinfo* %9, %struct.smc_hashinfo** %3, align 8
  %10 = load %struct.smc_hashinfo*, %struct.smc_hashinfo** %3, align 8
  %11 = getelementptr inbounds %struct.smc_hashinfo, %struct.smc_hashinfo* %10, i32 0, i32 0
  %12 = call i32 @write_lock_bh(i32* %11)
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = call i64 @sk_del_node_init(%struct.sock* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.sock*, %struct.sock** %2, align 8
  %18 = call i32 @sock_net(%struct.sock* %17)
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = call i32 @sock_prot_inuse_add(i32 %18, %struct.TYPE_4__* %21, i32 -1)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.smc_hashinfo*, %struct.smc_hashinfo** %3, align 8
  %25 = getelementptr inbounds %struct.smc_hashinfo, %struct.smc_hashinfo* %24, i32 0, i32 0
  %26 = call i32 @write_unlock_bh(i32* %25)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @sk_del_node_init(%struct.sock*) #1

declare dso_local i32 @sock_prot_inuse_add(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
