; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_pgio_res = type { %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i32, i8* }

@OP_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfs_pgio_res*)* @decode_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_write(%struct.xdr_stream* %0, %struct.nfs_pgio_res* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs_pgio_res*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs_pgio_res* %1, %struct.nfs_pgio_res** %5, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = load i32, i32* @OP_WRITE, align 4
  %10 = call i32 @decode_op_hdr(%struct.xdr_stream* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %48

15:                                               ; preds = %2
  %16 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %17 = call i32* @xdr_inline_decode(%struct.xdr_stream* %16, i32 8)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %48

27:                                               ; preds = %15
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %6, align 8
  %30 = ptrtoint i32* %28 to i32
  %31 = call i8* @be32_to_cpup(i32 %30)
  %32 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %5, align 8
  %33 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %6, align 8
  %36 = ptrtoint i32* %34 to i32
  %37 = call i8* @be32_to_cpup(i32 %36)
  %38 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %5, align 8
  %39 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i8* %37, i8** %41, align 8
  %42 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %43 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %5, align 8
  %44 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @decode_write_verifier(%struct.xdr_stream* %42, i32* %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %27, %24, %13
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @decode_op_hdr(%struct.xdr_stream*, i32) #1

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @be32_to_cpup(i32) #1

declare dso_local i32 @decode_write_verifier(%struct.xdr_stream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
