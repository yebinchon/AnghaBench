; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_open_downgrade.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_open_downgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_closeres = type { i32, i32 }

@OP_OPEN_DOWNGRADE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfs_closeres*)* @decode_open_downgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_open_downgrade(%struct.xdr_stream* %0, %struct.nfs_closeres* %1) #0 {
  %3 = alloca %struct.xdr_stream*, align 8
  %4 = alloca %struct.nfs_closeres*, align 8
  %5 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %3, align 8
  store %struct.nfs_closeres* %1, %struct.nfs_closeres** %4, align 8
  %6 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %7 = load i32, i32* @OP_OPEN_DOWNGRADE, align 4
  %8 = call i32 @decode_op_hdr(%struct.xdr_stream* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  %12 = icmp ne i32 %9, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.nfs_closeres*, %struct.nfs_closeres** %4, align 8
  %16 = getelementptr inbounds %struct.nfs_closeres, %struct.nfs_closeres* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @nfs_increment_open_seqid(i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %13, %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %24 = load %struct.nfs_closeres*, %struct.nfs_closeres** %4, align 8
  %25 = getelementptr inbounds %struct.nfs_closeres, %struct.nfs_closeres* %24, i32 0, i32 0
  %26 = call i32 @decode_open_stateid(%struct.xdr_stream* %23, i32* %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %22, %19
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @decode_op_hdr(%struct.xdr_stream*, i32) #1

declare dso_local i32 @nfs_increment_open_seqid(i32, i32) #1

declare dso_local i32 @decode_open_stateid(%struct.xdr_stream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
