; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_replay.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_replay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfsd4_op = type { i32, %struct.nfs4_replay* }
%struct.nfs4_replay = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd4_encode_replay(%struct.xdr_stream* %0, %struct.nfsd4_op* %1) #0 {
  %3 = alloca %struct.xdr_stream*, align 8
  %4 = alloca %struct.nfsd4_op*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs4_replay*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %3, align 8
  store %struct.nfsd4_op* %1, %struct.nfsd4_op** %4, align 8
  %7 = load %struct.nfsd4_op*, %struct.nfsd4_op** %4, align 8
  %8 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %7, i32 0, i32 1
  %9 = load %struct.nfs4_replay*, %struct.nfs4_replay** %8, align 8
  store %struct.nfs4_replay* %9, %struct.nfs4_replay** %6, align 8
  %10 = load %struct.nfs4_replay*, %struct.nfs4_replay** %6, align 8
  %11 = icmp ne %struct.nfs4_replay* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %16 = load %struct.nfs4_replay*, %struct.nfs4_replay** %6, align 8
  %17 = getelementptr inbounds %struct.nfs4_replay, %struct.nfs4_replay* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 8, %18
  %20 = call i32* @xdr_reserve_space(%struct.xdr_stream* %15, i64 %19)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = call i32 @WARN_ON_ONCE(i32 1)
  br label %45

25:                                               ; preds = %2
  %26 = load %struct.nfsd4_op*, %struct.nfsd4_op** %4, align 8
  %27 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @cpu_to_be32(i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  %32 = load %struct.nfs4_replay*, %struct.nfs4_replay** %6, align 8
  %33 = getelementptr inbounds %struct.nfs4_replay, %struct.nfs4_replay* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.nfs4_replay*, %struct.nfs4_replay** %6, align 8
  %39 = getelementptr inbounds %struct.nfs4_replay, %struct.nfs4_replay* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.nfs4_replay*, %struct.nfs4_replay** %6, align 8
  %42 = getelementptr inbounds %struct.nfs4_replay, %struct.nfs4_replay* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32* @xdr_encode_opaque_fixed(i32* %37, i32 %40, i64 %43)
  store i32* %44, i32** %5, align 8
  br label %45

45:                                               ; preds = %25, %23
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32* @xdr_encode_opaque_fixed(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
