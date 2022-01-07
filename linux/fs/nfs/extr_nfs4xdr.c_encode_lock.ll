; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_lock_args = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.compound_hdr = type { i32 }

@OP_LOCK = common dso_local global i32 0, align 4
@decode_lock_maxsz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs_lock_args*, %struct.compound_hdr*)* @encode_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_lock(%struct.xdr_stream* %0, %struct.nfs_lock_args* %1, %struct.compound_hdr* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs_lock_args*, align 8
  %6 = alloca %struct.compound_hdr*, align 8
  %7 = alloca i8**, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs_lock_args* %1, %struct.nfs_lock_args** %5, align 8
  store %struct.compound_hdr* %2, %struct.compound_hdr** %6, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = load i32, i32* @OP_LOCK, align 4
  %10 = load i32, i32* @decode_lock_maxsz, align 4
  %11 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %12 = call i32 @encode_op_hdr(%struct.xdr_stream* %8, i32 %9, i32 %10, %struct.compound_hdr* %11)
  %13 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %14 = call i8** @reserve_space(%struct.xdr_stream* %13, i32 28)
  store i8** %14, i8*** %7, align 8
  %15 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %16 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %15, i32 0, i32 6
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %19 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @nfs4_lock_type(%struct.TYPE_3__* %17, i32 %20)
  %22 = call i8* @cpu_to_be32(i64 %21)
  %23 = load i8**, i8*** %7, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i32 1
  store i8** %24, i8*** %7, align 8
  store i8* %22, i8** %23, align 8
  %25 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %26 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %25, i32 0, i32 7
  %27 = load i64, i64* %26, align 8
  %28 = call i8* @cpu_to_be32(i64 %27)
  %29 = load i8**, i8*** %7, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i32 1
  store i8** %30, i8*** %7, align 8
  store i8* %28, i8** %29, align 8
  %31 = load i8**, i8*** %7, align 8
  %32 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %33 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %32, i32 0, i32 6
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8** @xdr_encode_hyper(i8** %31, i32 %36)
  store i8** %37, i8*** %7, align 8
  %38 = load i8**, i8*** %7, align 8
  %39 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %40 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %39, i32 0, i32 6
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = call i32 @nfs4_lock_length(%struct.TYPE_3__* %41)
  %43 = call i8** @xdr_encode_hyper(i8** %38, i32 %42)
  store i8** %43, i8*** %7, align 8
  %44 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %45 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = call i8* @cpu_to_be32(i64 %46)
  %48 = load i8**, i8*** %7, align 8
  store i8* %47, i8** %48, align 8
  %49 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %50 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %3
  %54 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %55 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %56 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @encode_nfs4_seqid(%struct.xdr_stream* %54, i32 %57)
  %59 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %60 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %61 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %60, i32 0, i32 3
  %62 = call i32 @encode_nfs4_stateid(%struct.xdr_stream* %59, i32* %61)
  %63 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %64 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %65 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @encode_nfs4_seqid(%struct.xdr_stream* %63, i32 %66)
  %68 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %69 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %70 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %69, i32 0, i32 2
  %71 = call i32 @encode_lockowner(%struct.xdr_stream* %68, i32* %70)
  br label %82

72:                                               ; preds = %3
  %73 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %74 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %75 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %74, i32 0, i32 1
  %76 = call i32 @encode_nfs4_stateid(%struct.xdr_stream* %73, i32* %75)
  %77 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %78 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %79 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @encode_nfs4_seqid(%struct.xdr_stream* %77, i32 %80)
  br label %82

82:                                               ; preds = %72, %53
  ret void
}

declare dso_local i32 @encode_op_hdr(%struct.xdr_stream*, i32, i32, %struct.compound_hdr*) #1

declare dso_local i8** @reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i64 @nfs4_lock_type(%struct.TYPE_3__*, i32) #1

declare dso_local i8** @xdr_encode_hyper(i8**, i32) #1

declare dso_local i32 @nfs4_lock_length(%struct.TYPE_3__*) #1

declare dso_local i32 @encode_nfs4_seqid(%struct.xdr_stream*, i32) #1

declare dso_local i32 @encode_nfs4_stateid(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @encode_lockowner(%struct.xdr_stream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
