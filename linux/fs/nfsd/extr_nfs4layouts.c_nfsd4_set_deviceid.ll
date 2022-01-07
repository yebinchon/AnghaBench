; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4layouts.c_nfsd4_set_deviceid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4layouts.c_nfsd4_set_deviceid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_deviceid = type { i64, i32, i32 }
%struct.svc_fh = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd4_set_deviceid(%struct.nfsd4_deviceid* %0, %struct.svc_fh* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsd4_deviceid*, align 8
  %6 = alloca %struct.svc_fh*, align 8
  %7 = alloca i32, align 4
  store %struct.nfsd4_deviceid* %0, %struct.nfsd4_deviceid** %5, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %9 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %3
  %15 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %16 = call i32 @nfsd4_alloc_devid_map(%struct.svc_fh* %15)
  %17 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %18 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %42

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %29 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nfsd4_deviceid*, %struct.nfsd4_deviceid** %5, align 8
  %36 = getelementptr inbounds %struct.nfsd4_deviceid, %struct.nfsd4_deviceid* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.nfsd4_deviceid*, %struct.nfsd4_deviceid** %5, align 8
  %39 = getelementptr inbounds %struct.nfsd4_deviceid, %struct.nfsd4_deviceid* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.nfsd4_deviceid*, %struct.nfsd4_deviceid** %5, align 8
  %41 = getelementptr inbounds %struct.nfsd4_deviceid, %struct.nfsd4_deviceid* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %27, %23
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @nfsd4_alloc_devid_map(%struct.svc_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
