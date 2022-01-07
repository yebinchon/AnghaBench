; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4callback.c_nfsd4_init_cb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4callback.c_nfsd4_init_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_callback = type { i32, i32, i32, i64, i32, %struct.nfsd4_callback_ops*, %struct.TYPE_2__, %struct.nfs4_client* }
%struct.TYPE_2__ = type { %struct.nfsd4_callback*, %struct.nfsd4_callback*, i32* }
%struct.nfs4_client = type { i32 }
%struct.nfsd4_callback_ops = type { i32 }

@nfs4_cb_procedures = common dso_local global i32* null, align 8
@nfsd4_run_cb_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd4_init_cb(%struct.nfsd4_callback* %0, %struct.nfs4_client* %1, %struct.nfsd4_callback_ops* %2, i32 %3) #0 {
  %5 = alloca %struct.nfsd4_callback*, align 8
  %6 = alloca %struct.nfs4_client*, align 8
  %7 = alloca %struct.nfsd4_callback_ops*, align 8
  %8 = alloca i32, align 4
  store %struct.nfsd4_callback* %0, %struct.nfsd4_callback** %5, align 8
  store %struct.nfs4_client* %1, %struct.nfs4_client** %6, align 8
  store %struct.nfsd4_callback_ops* %2, %struct.nfsd4_callback_ops** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  %10 = load %struct.nfsd4_callback*, %struct.nfsd4_callback** %5, align 8
  %11 = getelementptr inbounds %struct.nfsd4_callback, %struct.nfsd4_callback* %10, i32 0, i32 7
  store %struct.nfs4_client* %9, %struct.nfs4_client** %11, align 8
  %12 = load i32*, i32** @nfs4_cb_procedures, align 8
  %13 = load i32, i32* %8, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load %struct.nfsd4_callback*, %struct.nfsd4_callback** %5, align 8
  %17 = getelementptr inbounds %struct.nfsd4_callback, %struct.nfsd4_callback* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32* %15, i32** %18, align 8
  %19 = load %struct.nfsd4_callback*, %struct.nfsd4_callback** %5, align 8
  %20 = load %struct.nfsd4_callback*, %struct.nfsd4_callback** %5, align 8
  %21 = getelementptr inbounds %struct.nfsd4_callback, %struct.nfsd4_callback* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store %struct.nfsd4_callback* %19, %struct.nfsd4_callback** %22, align 8
  %23 = load %struct.nfsd4_callback*, %struct.nfsd4_callback** %5, align 8
  %24 = load %struct.nfsd4_callback*, %struct.nfsd4_callback** %5, align 8
  %25 = getelementptr inbounds %struct.nfsd4_callback, %struct.nfsd4_callback* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.nfsd4_callback* %23, %struct.nfsd4_callback** %26, align 8
  %27 = load %struct.nfsd4_callback_ops*, %struct.nfsd4_callback_ops** %7, align 8
  %28 = load %struct.nfsd4_callback*, %struct.nfsd4_callback** %5, align 8
  %29 = getelementptr inbounds %struct.nfsd4_callback, %struct.nfsd4_callback* %28, i32 0, i32 5
  store %struct.nfsd4_callback_ops* %27, %struct.nfsd4_callback_ops** %29, align 8
  %30 = load %struct.nfsd4_callback*, %struct.nfsd4_callback** %5, align 8
  %31 = getelementptr inbounds %struct.nfsd4_callback, %struct.nfsd4_callback* %30, i32 0, i32 4
  %32 = load i32, i32* @nfsd4_run_cb_work, align 4
  %33 = call i32 @INIT_WORK(i32* %31, i32 %32)
  %34 = load %struct.nfsd4_callback*, %struct.nfsd4_callback** %5, align 8
  %35 = getelementptr inbounds %struct.nfsd4_callback, %struct.nfsd4_callback* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.nfsd4_callback*, %struct.nfsd4_callback** %5, align 8
  %37 = getelementptr inbounds %struct.nfsd4_callback, %struct.nfsd4_callback* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.nfsd4_callback*, %struct.nfsd4_callback** %5, align 8
  %39 = getelementptr inbounds %struct.nfsd4_callback, %struct.nfsd4_callback* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.nfsd4_callback*, %struct.nfsd4_callback** %5, align 8
  %41 = getelementptr inbounds %struct.nfsd4_callback, %struct.nfsd4_callback* %40, i32 0, i32 2
  store i32 0, i32* %41, align 8
  ret void
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
