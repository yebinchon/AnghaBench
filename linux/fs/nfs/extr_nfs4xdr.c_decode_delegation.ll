; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_delegation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_delegation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_openres = type { i64 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfs_openres*)* @decode_delegation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_delegation(%struct.xdr_stream* %0, %struct.nfs_openres* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs_openres*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs_openres* %1, %struct.nfs_openres** %5, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = call i32* @xdr_inline_decode(%struct.xdr_stream* %8, i32 4)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %38

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @be32_to_cpup(i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.nfs_openres*, %struct.nfs_openres** %5, align 8
  %23 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %35 [
    i32 131, label %25
    i32 129, label %26
    i32 128, label %26
    i32 130, label %31
  ]

25:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %38

26:                                               ; preds = %19, %19
  %27 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.nfs_openres*, %struct.nfs_openres** %5, align 8
  %30 = call i32 @decode_rw_delegation(%struct.xdr_stream* %27, i32 %28, %struct.nfs_openres* %29)
  store i32 %30, i32* %3, align 4
  br label %38

31:                                               ; preds = %19
  %32 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %33 = load %struct.nfs_openres*, %struct.nfs_openres** %5, align 8
  %34 = call i32 @decode_no_delegation(%struct.xdr_stream* %32, %struct.nfs_openres* %33)
  store i32 %34, i32* %3, align 4
  br label %38

35:                                               ; preds = %19
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %31, %26, %25, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @decode_rw_delegation(%struct.xdr_stream*, i32, %struct.nfs_openres*) #1

declare dso_local i32 @decode_no_delegation(%struct.xdr_stream*, %struct.nfs_openres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
