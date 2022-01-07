; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_encode_mknoddata3.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_encode_mknoddata3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs3_mknodargs = type { i32, i32 }
%struct.user_namespace = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs3_mknodargs*, %struct.user_namespace*)* @encode_mknoddata3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_mknoddata3(%struct.xdr_stream* %0, %struct.nfs3_mknodargs* %1, %struct.user_namespace* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs3_mknodargs*, align 8
  %6 = alloca %struct.user_namespace*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs3_mknodargs* %1, %struct.nfs3_mknodargs** %5, align 8
  store %struct.user_namespace* %2, %struct.user_namespace** %6, align 8
  %7 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %8 = load %struct.nfs3_mknodargs*, %struct.nfs3_mknodargs** %5, align 8
  %9 = getelementptr inbounds %struct.nfs3_mknodargs, %struct.nfs3_mknodargs* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @encode_ftype3(%struct.xdr_stream* %7, i32 %10)
  %12 = load %struct.nfs3_mknodargs*, %struct.nfs3_mknodargs** %5, align 8
  %13 = getelementptr inbounds %struct.nfs3_mknodargs, %struct.nfs3_mknodargs* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %28 [
    i32 132, label %15
    i32 133, label %15
    i32 128, label %20
    i32 130, label %20
    i32 129, label %27
    i32 131, label %27
  ]

15:                                               ; preds = %3, %3
  %16 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %17 = load %struct.nfs3_mknodargs*, %struct.nfs3_mknodargs** %5, align 8
  %18 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %19 = call i32 @encode_devicedata3(%struct.xdr_stream* %16, %struct.nfs3_mknodargs* %17, %struct.user_namespace* %18)
  br label %30

20:                                               ; preds = %3, %3
  %21 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %22 = load %struct.nfs3_mknodargs*, %struct.nfs3_mknodargs** %5, align 8
  %23 = getelementptr inbounds %struct.nfs3_mknodargs, %struct.nfs3_mknodargs* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %26 = call i32 @encode_sattr3(%struct.xdr_stream* %21, i32 %24, %struct.user_namespace* %25)
  br label %30

27:                                               ; preds = %3, %3
  br label %30

28:                                               ; preds = %3
  %29 = call i32 (...) @BUG()
  br label %30

30:                                               ; preds = %28, %27, %20, %15
  ret void
}

declare dso_local i32 @encode_ftype3(%struct.xdr_stream*, i32) #1

declare dso_local i32 @encode_devicedata3(%struct.xdr_stream*, %struct.nfs3_mknodargs*, %struct.user_namespace*) #1

declare dso_local i32 @encode_sattr3(%struct.xdr_stream*, i32, %struct.user_namespace*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
