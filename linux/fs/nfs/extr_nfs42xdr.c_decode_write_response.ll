; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42xdr.c_decode_write_response.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42xdr.c_decode_write_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs42_write_res = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i8* }

@EIO = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@NFS4_STATEID_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfs42_write_res*)* @decode_write_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_write_response(%struct.xdr_stream* %0, %struct.nfs42_write_res* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs42_write_res*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs42_write_res* %1, %struct.nfs42_write_res** %5, align 8
  %9 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %10 = call i32* @xdr_inline_decode(%struct.xdr_stream* %9, i32 4)
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %73

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  %22 = call i8* @be32_to_cpup(i32* %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EREMOTEIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %73

29:                                               ; preds = %20
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %34 = load %struct.nfs42_write_res*, %struct.nfs42_write_res** %5, align 8
  %35 = getelementptr inbounds %struct.nfs42_write_res, %struct.nfs42_write_res* %34, i32 0, i32 2
  %36 = load i32, i32* @NFS4_STATEID_SIZE, align 4
  %37 = call i32 @decode_opaque_fixed(%struct.xdr_stream* %33, i32* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %73

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %29
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %48 = call i32* @xdr_inline_decode(%struct.xdr_stream* %47, i32 12)
  store i32* %48, i32** %6, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = icmp ne i32* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %73

58:                                               ; preds = %46
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.nfs42_write_res*, %struct.nfs42_write_res** %5, align 8
  %61 = getelementptr inbounds %struct.nfs42_write_res, %struct.nfs42_write_res* %60, i32 0, i32 1
  %62 = call i32* @xdr_decode_hyper(i32* %59, i32* %61)
  store i32* %62, i32** %6, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i8* @be32_to_cpup(i32* %63)
  %65 = load %struct.nfs42_write_res*, %struct.nfs42_write_res** %5, align 8
  %66 = getelementptr inbounds %struct.nfs42_write_res, %struct.nfs42_write_res* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i8* %64, i8** %67, align 8
  %68 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %69 = load %struct.nfs42_write_res*, %struct.nfs42_write_res** %5, align 8
  %70 = getelementptr inbounds %struct.nfs42_write_res, %struct.nfs42_write_res* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @decode_verifier(%struct.xdr_stream* %68, i32* %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %58, %55, %41, %26, %17
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @be32_to_cpup(i32*) #1

declare dso_local i32 @decode_opaque_fixed(%struct.xdr_stream*, i32*, i32) #1

declare dso_local i32* @xdr_decode_hyper(i32*, i32*) #1

declare dso_local i32 @decode_verifier(%struct.xdr_stream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
