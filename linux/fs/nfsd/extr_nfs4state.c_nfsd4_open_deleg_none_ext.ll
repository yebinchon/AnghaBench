; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_open_deleg_none_ext.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_open_deleg_none_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_open = type { i32, i32, i32 }

@NFS4_OPEN_DELEGATE_NONE_EXT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@WND4_CONTENTION = common dso_local global i32 0, align 4
@WND4_RESOURCE = common dso_local global i32 0, align 4
@WND4_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsd4_open*, i32)* @nfsd4_open_deleg_none_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd4_open_deleg_none_ext(%struct.nfsd4_open* %0, i32 %1) #0 {
  %3 = alloca %struct.nfsd4_open*, align 8
  %4 = alloca i32, align 4
  store %struct.nfsd4_open* %0, %struct.nfsd4_open** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @NFS4_OPEN_DELEGATE_NONE_EXT, align 4
  %6 = load %struct.nfsd4_open*, %struct.nfsd4_open** %3, align 8
  %7 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %6, i32 0, i32 2
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @EAGAIN, align 4
  %10 = sub nsw i32 0, %9
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @WND4_CONTENTION, align 4
  %14 = load %struct.nfsd4_open*, %struct.nfsd4_open** %3, align 8
  %15 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  br label %31

16:                                               ; preds = %2
  %17 = load i32, i32* @WND4_RESOURCE, align 4
  %18 = load %struct.nfsd4_open*, %struct.nfsd4_open** %3, align 8
  %19 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.nfsd4_open*, %struct.nfsd4_open** %3, align 8
  %21 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %30 [
    i32 129, label %23
    i32 128, label %23
    i32 132, label %23
    i32 131, label %24
    i32 130, label %28
  ]

23:                                               ; preds = %16, %16, %16
  br label %30

24:                                               ; preds = %16
  %25 = load i32, i32* @WND4_CANCELLED, align 4
  %26 = load %struct.nfsd4_open*, %struct.nfsd4_open** %3, align 8
  %27 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %30

28:                                               ; preds = %16
  %29 = call i32 @WARN_ON_ONCE(i32 1)
  br label %30

30:                                               ; preds = %28, %16, %24, %23
  br label %31

31:                                               ; preds = %30, %12
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
