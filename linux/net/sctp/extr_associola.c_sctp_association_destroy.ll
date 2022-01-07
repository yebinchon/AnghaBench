; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_associola.c_sctp_association_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_associola.c_sctp_association_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Attempt to destroy undead association %p!\0A\00", align 1
@sctp_assocs_id_lock = common dso_local global i32 0, align 4
@sctp_assocs_id = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4
@assoc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_association*)* @sctp_association_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_association_destroy(%struct.sctp_association* %0) #0 {
  %2 = alloca %struct.sctp_association*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %2, align 8
  %3 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %4 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %14 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.sctp_association* %13)
  br label %46

15:                                               ; preds = %1
  %16 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %17 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sctp_endpoint_put(i32 %18)
  %20 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %21 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sock_put(i32 %23)
  %25 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %26 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %15
  %30 = call i32 @spin_lock_bh(i32* @sctp_assocs_id_lock)
  %31 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %32 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @idr_remove(i32* @sctp_assocs_id, i64 %33)
  %35 = call i32 @spin_unlock_bh(i32* @sctp_assocs_id_lock)
  br label %36

36:                                               ; preds = %29, %15
  %37 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %38 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %37, i32 0, i32 1
  %39 = call i32 @atomic_read(i32* %38)
  %40 = call i32 @WARN_ON(i32 %39)
  %41 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %42 = load i32, i32* @rcu, align 4
  %43 = call i32 @kfree_rcu(%struct.sctp_association* %41, i32 %42)
  %44 = load i32, i32* @assoc, align 4
  %45 = call i32 @SCTP_DBG_OBJCNT_DEC(i32 %44)
  br label %46

46:                                               ; preds = %36, %12
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN(i32, i8*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_endpoint_put(i32) #1

declare dso_local i32 @sock_put(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @idr_remove(i32*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.sctp_association*, i32) #1

declare dso_local i32 @SCTP_DBG_OBJCNT_DEC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
