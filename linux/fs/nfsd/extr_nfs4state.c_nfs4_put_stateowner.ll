; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_put_stateowner.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_put_stateowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_stateowner = type { %struct.TYPE_2__*, i32, %struct.nfs4_client* }
%struct.TYPE_2__ = type { i32 (%struct.nfs4_stateowner*)* }
%struct.nfs4_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_stateowner*)* @nfs4_put_stateowner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_put_stateowner(%struct.nfs4_stateowner* %0) #0 {
  %2 = alloca %struct.nfs4_stateowner*, align 8
  %3 = alloca %struct.nfs4_client*, align 8
  store %struct.nfs4_stateowner* %0, %struct.nfs4_stateowner** %2, align 8
  %4 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %2, align 8
  %5 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %4, i32 0, i32 2
  %6 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  store %struct.nfs4_client* %6, %struct.nfs4_client** %3, align 8
  %7 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %8 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %7, i32 0, i32 0
  %9 = call i32 @might_lock(i32* %8)
  %10 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %2, align 8
  %11 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %10, i32 0, i32 1
  %12 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %13 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %12, i32 0, i32 0
  %14 = call i32 @atomic_dec_and_lock(i32* %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %30

17:                                               ; preds = %1
  %18 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %2, align 8
  %19 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.nfs4_stateowner*)*, i32 (%struct.nfs4_stateowner*)** %21, align 8
  %23 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %2, align 8
  %24 = call i32 %22(%struct.nfs4_stateowner* %23)
  %25 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %26 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %2, align 8
  %29 = call i32 @nfs4_free_stateowner(%struct.nfs4_stateowner* %28)
  br label %30

30:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @might_lock(i32*) #1

declare dso_local i32 @atomic_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfs4_free_stateowner(%struct.nfs4_stateowner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
