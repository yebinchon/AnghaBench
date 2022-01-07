; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_decode_read3resok.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_decode_read3resok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_pgio_res = type { i64, i64 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"NFS: READ count doesn't match length of opaque: count %u != ocount %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"NFS: server cheating in read result: count %u > recvd %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfs_pgio_res*)* @decode_read3resok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_read3resok(%struct.xdr_stream* %0, %struct.nfs_pgio_res* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs_pgio_res*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs_pgio_res* %1, %struct.nfs_pgio_res** %5, align 8
  %11 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %12 = call i32* @xdr_inline_decode(%struct.xdr_stream* %11, i32 12)
  store i32* %12, i32** %10, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = icmp ne i32* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %74

22:                                               ; preds = %2
  %23 = load i32*, i32** %10, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %10, align 8
  %25 = ptrtoint i32* %23 to i32
  %26 = call i64 @be32_to_cpup(i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %10, align 8
  %29 = ptrtoint i32* %27 to i32
  %30 = call i64 @be32_to_cpup(i32 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %10, align 8
  %33 = ptrtoint i32* %31 to i32
  %34 = call i64 @be32_to_cpup(i32 %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %22
  br label %63

42:                                               ; preds = %22
  %43 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @xdr_read_pages(%struct.xdr_stream* %43, i64 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp sgt i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %69

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %69, %53
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %5, align 8
  %57 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %5, align 8
  %60 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* %7, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %74

63:                                               ; preds = %41
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @dprintk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i64 %64, i64 %65)
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %74

69:                                               ; preds = %52
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @dprintk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %70, i64 %71)
  %73 = load i64, i64* %9, align 8
  store i64 %73, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %54

74:                                               ; preds = %63, %54, %19
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @be32_to_cpup(i32) #1

declare dso_local i64 @xdr_read_pages(%struct.xdr_stream*, i64) #1

declare dso_local i32 @dprintk(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
