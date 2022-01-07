; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42xdr.c_nfs4_xdr_dec_layoutstats.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42xdr.c_nfs4_xdr_dec_layoutstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs42_layoutstat_res = type { i32, i32, i32 }
%struct.compound_hdr = type { i32 }

@PNFS_LAYOUTSTATS_MAXDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs4_xdr_dec_layoutstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_xdr_dec_layoutstats(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nfs42_layoutstat_res*, align 8
  %8 = alloca %struct.compound_hdr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.nfs42_layoutstat_res*
  store %struct.nfs42_layoutstat_res* %12, %struct.nfs42_layoutstat_res** %7, align 8
  %13 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %14 = call i32 @decode_compound_hdr(%struct.xdr_stream* %13, %struct.compound_hdr* %8)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %58

18:                                               ; preds = %3
  %19 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %20 = load %struct.nfs42_layoutstat_res*, %struct.nfs42_layoutstat_res** %7, align 8
  %21 = getelementptr inbounds %struct.nfs42_layoutstat_res, %struct.nfs42_layoutstat_res* %20, i32 0, i32 2
  %22 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %23 = call i32 @decode_sequence(%struct.xdr_stream* %19, i32* %21, %struct.rpc_rqst* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %58

27:                                               ; preds = %18
  %28 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %29 = call i32 @decode_putfh(%struct.xdr_stream* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %58

33:                                               ; preds = %27
  %34 = load %struct.nfs42_layoutstat_res*, %struct.nfs42_layoutstat_res** %7, align 8
  %35 = getelementptr inbounds %struct.nfs42_layoutstat_res, %struct.nfs42_layoutstat_res* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PNFS_LAYOUTSTATS_MAXDEV, align 4
  %38 = icmp sgt i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON(i32 %39)
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %54, %33
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.nfs42_layoutstat_res*, %struct.nfs42_layoutstat_res** %7, align 8
  %44 = getelementptr inbounds %struct.nfs42_layoutstat_res, %struct.nfs42_layoutstat_res* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %49 = call i32 @decode_layoutstats(%struct.xdr_stream* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %58

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %41

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57, %52, %32, %26, %17
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.nfs42_layoutstat_res*, %struct.nfs42_layoutstat_res** %7, align 8
  %61 = getelementptr inbounds %struct.nfs42_layoutstat_res, %struct.nfs42_layoutstat_res* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local i32 @decode_compound_hdr(%struct.xdr_stream*, %struct.compound_hdr*) #1

declare dso_local i32 @decode_sequence(%struct.xdr_stream*, i32*, %struct.rpc_rqst*) #1

declare dso_local i32 @decode_putfh(%struct.xdr_stream*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @decode_layoutstats(%struct.xdr_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
