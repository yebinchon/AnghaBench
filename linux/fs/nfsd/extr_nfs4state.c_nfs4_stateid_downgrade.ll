; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_stateid_downgrade.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_stateid_downgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_ol_stateid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_ol_stateid*, i32)* @nfs4_stateid_downgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_stateid_downgrade(%struct.nfs4_ol_stateid* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs4_ol_stateid*, align 8
  %4 = alloca i32, align 4
  store %struct.nfs4_ol_stateid* %0, %struct.nfs4_ol_stateid** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %17 [
    i32 129, label %6
    i32 128, label %11
    i32 130, label %16
  ]

6:                                                ; preds = %2
  %7 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %8 = call i32 @nfs4_stateid_downgrade_bit(%struct.nfs4_ol_stateid* %7, i32 128)
  %9 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %10 = call i32 @nfs4_stateid_downgrade_bit(%struct.nfs4_ol_stateid* %9, i32 130)
  br label %19

11:                                               ; preds = %2
  %12 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %13 = call i32 @nfs4_stateid_downgrade_bit(%struct.nfs4_ol_stateid* %12, i32 129)
  %14 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %15 = call i32 @nfs4_stateid_downgrade_bit(%struct.nfs4_ol_stateid* %14, i32 130)
  br label %19

16:                                               ; preds = %2
  br label %19

17:                                               ; preds = %2
  %18 = call i32 @WARN_ON_ONCE(i32 1)
  br label %19

19:                                               ; preds = %17, %16, %11, %6
  ret void
}

declare dso_local i32 @nfs4_stateid_downgrade_bit(%struct.nfs4_ol_stateid*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
