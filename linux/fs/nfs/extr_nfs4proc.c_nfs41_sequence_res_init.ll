; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs41_sequence_res_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs41_sequence_res_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_sequence_res = type { i32, i64, i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_sequence_res*)* @nfs41_sequence_res_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs41_sequence_res_init(%struct.nfs4_sequence_res* %0) #0 {
  %2 = alloca %struct.nfs4_sequence_res*, align 8
  store %struct.nfs4_sequence_res* %0, %struct.nfs4_sequence_res** %2, align 8
  %3 = load i32, i32* @jiffies, align 4
  %4 = load %struct.nfs4_sequence_res*, %struct.nfs4_sequence_res** %2, align 8
  %5 = getelementptr inbounds %struct.nfs4_sequence_res, %struct.nfs4_sequence_res* %4, i32 0, i32 2
  store i32 %3, i32* %5, align 8
  %6 = load %struct.nfs4_sequence_res*, %struct.nfs4_sequence_res** %2, align 8
  %7 = getelementptr inbounds %struct.nfs4_sequence_res, %struct.nfs4_sequence_res* %6, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = load %struct.nfs4_sequence_res*, %struct.nfs4_sequence_res** %2, align 8
  %9 = getelementptr inbounds %struct.nfs4_sequence_res, %struct.nfs4_sequence_res* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
