; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_openargs = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.compound_hdr = type { i32 }

@OP_OPEN = common dso_local global i32 0, align 4
@decode_open_maxsz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs_openargs*, %struct.compound_hdr*)* @encode_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_open(%struct.xdr_stream* %0, %struct.nfs_openargs* %1, %struct.compound_hdr* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs_openargs*, align 8
  %6 = alloca %struct.compound_hdr*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs_openargs* %1, %struct.nfs_openargs** %5, align 8
  store %struct.compound_hdr* %2, %struct.compound_hdr** %6, align 8
  %7 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %8 = load i32, i32* @OP_OPEN, align 4
  %9 = load i32, i32* @decode_open_maxsz, align 4
  %10 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %11 = call i32 @encode_op_hdr(%struct.xdr_stream* %7, i32 %8, i32 %9, %struct.compound_hdr* %10)
  %12 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %13 = load %struct.nfs_openargs*, %struct.nfs_openargs** %5, align 8
  %14 = call i32 @encode_openhdr(%struct.xdr_stream* %12, %struct.nfs_openargs* %13)
  %15 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %16 = load %struct.nfs_openargs*, %struct.nfs_openargs** %5, align 8
  %17 = call i32 @encode_opentype(%struct.xdr_stream* %15, %struct.nfs_openargs* %16)
  %18 = load %struct.nfs_openargs*, %struct.nfs_openargs** %5, align 8
  %19 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %52 [
    i32 129, label %21
    i32 128, label %27
    i32 132, label %34
    i32 130, label %43
    i32 131, label %46
  ]

21:                                               ; preds = %3
  %22 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %23 = load %struct.nfs_openargs*, %struct.nfs_openargs** %5, align 8
  %24 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @encode_claim_null(%struct.xdr_stream* %22, i32 %25)
  br label %54

27:                                               ; preds = %3
  %28 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %29 = load %struct.nfs_openargs*, %struct.nfs_openargs** %5, align 8
  %30 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @encode_claim_previous(%struct.xdr_stream* %28, i32 %32)
  br label %54

34:                                               ; preds = %3
  %35 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %36 = load %struct.nfs_openargs*, %struct.nfs_openargs** %5, align 8
  %37 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nfs_openargs*, %struct.nfs_openargs** %5, align 8
  %40 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @encode_claim_delegate_cur(%struct.xdr_stream* %35, i32 %38, i32* %41)
  br label %54

43:                                               ; preds = %3
  %44 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %45 = call i32 @encode_claim_fh(%struct.xdr_stream* %44)
  br label %54

46:                                               ; preds = %3
  %47 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %48 = load %struct.nfs_openargs*, %struct.nfs_openargs** %5, align 8
  %49 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @encode_claim_delegate_cur_fh(%struct.xdr_stream* %47, i32* %50)
  br label %54

52:                                               ; preds = %3
  %53 = call i32 (...) @BUG()
  br label %54

54:                                               ; preds = %52, %46, %43, %34, %27, %21
  ret void
}

declare dso_local i32 @encode_op_hdr(%struct.xdr_stream*, i32, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_openhdr(%struct.xdr_stream*, %struct.nfs_openargs*) #1

declare dso_local i32 @encode_opentype(%struct.xdr_stream*, %struct.nfs_openargs*) #1

declare dso_local i32 @encode_claim_null(%struct.xdr_stream*, i32) #1

declare dso_local i32 @encode_claim_previous(%struct.xdr_stream*, i32) #1

declare dso_local i32 @encode_claim_delegate_cur(%struct.xdr_stream*, i32, i32*) #1

declare dso_local i32 @encode_claim_fh(%struct.xdr_stream*) #1

declare dso_local i32 @encode_claim_delegate_cur_fh(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
