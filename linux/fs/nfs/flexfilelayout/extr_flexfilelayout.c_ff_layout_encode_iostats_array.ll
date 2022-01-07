; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_encode_iostats_array.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_encode_iostats_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs4_layoutreturn_args = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nfs4_flexfile_layoutreturn_args = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs4_layoutreturn_args*, %struct.nfs4_flexfile_layoutreturn_args*)* @ff_layout_encode_iostats_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ff_layout_encode_iostats_array(%struct.xdr_stream* %0, %struct.nfs4_layoutreturn_args* %1, %struct.nfs4_flexfile_layoutreturn_args* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs4_layoutreturn_args*, align 8
  %6 = alloca %struct.nfs4_flexfile_layoutreturn_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs4_layoutreturn_args* %1, %struct.nfs4_layoutreturn_args** %5, align 8
  store %struct.nfs4_flexfile_layoutreturn_args* %2, %struct.nfs4_flexfile_layoutreturn_args** %6, align 8
  %9 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %10 = call i32* @xdr_reserve_space(%struct.xdr_stream* %9, i32 4)
  store i32* %10, i32** %7, align 8
  %11 = load %struct.nfs4_flexfile_layoutreturn_args*, %struct.nfs4_flexfile_layoutreturn_args** %6, align 8
  %12 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, %struct.nfs4_flexfile_layoutreturn_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @cpu_to_be32(i32 %13)
  %15 = load i32*, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %35, %3
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.nfs4_flexfile_layoutreturn_args*, %struct.nfs4_flexfile_layoutreturn_args** %6, align 8
  %19 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, %struct.nfs4_flexfile_layoutreturn_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %24 = load %struct.nfs4_layoutreturn_args*, %struct.nfs4_layoutreturn_args** %5, align 8
  %25 = getelementptr inbounds %struct.nfs4_layoutreturn_args, %struct.nfs4_layoutreturn_args* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.nfs4_flexfile_layoutreturn_args*, %struct.nfs4_flexfile_layoutreturn_args** %6, align 8
  %29 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, %struct.nfs4_flexfile_layoutreturn_args* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @ff_layout_encode_ff_iostat(%struct.xdr_stream* %23, i32* %27, i32* %33)
  br label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %16

38:                                               ; preds = %16
  ret void
}

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ff_layout_encode_ff_iostat(%struct.xdr_stream*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
