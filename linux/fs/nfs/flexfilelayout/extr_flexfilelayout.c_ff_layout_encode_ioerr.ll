; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_encode_ioerr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_encode_ioerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs4_layoutreturn_args = type { i32 }
%struct.nfs4_flexfile_layoutreturn_args = type { i32, i32 }

@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfs4_layoutreturn_args*, %struct.nfs4_flexfile_layoutreturn_args*)* @ff_layout_encode_ioerr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff_layout_encode_ioerr(%struct.xdr_stream* %0, %struct.nfs4_layoutreturn_args* %1, %struct.nfs4_flexfile_layoutreturn_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca %struct.nfs4_layoutreturn_args*, align 8
  %7 = alloca %struct.nfs4_flexfile_layoutreturn_args*, align 8
  %8 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %5, align 8
  store %struct.nfs4_layoutreturn_args* %1, %struct.nfs4_layoutreturn_args** %6, align 8
  store %struct.nfs4_flexfile_layoutreturn_args* %2, %struct.nfs4_flexfile_layoutreturn_args** %7, align 8
  %9 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %10 = call i32* @xdr_reserve_space(%struct.xdr_stream* %9, i32 4)
  store i32* %10, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = icmp ne i32* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @E2BIG, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %30

20:                                               ; preds = %3
  %21 = load %struct.nfs4_flexfile_layoutreturn_args*, %struct.nfs4_flexfile_layoutreturn_args** %7, align 8
  %22 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, %struct.nfs4_flexfile_layoutreturn_args* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cpu_to_be32(i32 %23)
  %25 = load i32*, i32** %8, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %27 = load %struct.nfs4_flexfile_layoutreturn_args*, %struct.nfs4_flexfile_layoutreturn_args** %7, align 8
  %28 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, %struct.nfs4_flexfile_layoutreturn_args* %27, i32 0, i32 0
  %29 = call i32 @ff_layout_encode_ds_ioerr(%struct.xdr_stream* %26, i32* %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ff_layout_encode_ds_ioerr(%struct.xdr_stream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
