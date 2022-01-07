; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_refresh_lock_old_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_refresh_lock_old_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.nfs4_lock_state = type { %struct.TYPE_9__, %struct.nfs4_state* }
%struct.TYPE_9__ = type { i32 }
%struct.nfs4_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.nfs4_lock_state*)* @nfs4_refresh_lock_old_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_refresh_lock_old_stateid(%struct.TYPE_8__* %0, %struct.nfs4_lock_state* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.nfs4_lock_state*, align 8
  %5 = alloca %struct.nfs4_state*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.nfs4_lock_state* %1, %struct.nfs4_lock_state** %4, align 8
  %7 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %4, align 8
  %8 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %7, i32 0, i32 1
  %9 = load %struct.nfs4_state*, %struct.nfs4_state** %8, align 8
  store %struct.nfs4_state* %9, %struct.nfs4_state** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %11 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %4, align 8
  %15 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %14, i32 0, i32 0
  %16 = call i32 @nfs4_stateid_match_other(%struct.TYPE_8__* %13, %struct.TYPE_9__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %36

19:                                               ; preds = %2
  %20 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %4, align 8
  %21 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = call i32 @nfs4_stateid_is_newer(%struct.TYPE_9__* %21, %struct.TYPE_8__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = call i32 @nfs4_stateid_seqid_inc(%struct.TYPE_8__* %26)
  br label %35

28:                                               ; preds = %19
  %29 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %4, align 8
  %30 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %28, %25
  store i32 1, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %18
  %37 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %38 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @nfs4_stateid_match_other(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @nfs4_stateid_is_newer(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i32 @nfs4_stateid_seqid_inc(%struct.TYPE_8__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
