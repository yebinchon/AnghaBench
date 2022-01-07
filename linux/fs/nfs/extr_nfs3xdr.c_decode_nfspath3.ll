; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_decode_nfspath3.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_decode_nfspath3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@NFS3_MAXPATHLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"NFS: returned pathname too long: %u\0A\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"NFS: server cheating in pathname result: count %u > recvd %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*)* @decode_nfspath3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_nfspath3(%struct.xdr_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xdr_stream*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %3, align 8
  %7 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %8 = call i32* @xdr_inline_decode(%struct.xdr_stream* %7, i32 4)
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %66

18:                                               ; preds = %1
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @be32_to_cpup(i32* %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %23 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %21, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %18
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @NFS3_MAXPATHLEN, align 8
  %31 = icmp sgt i64 %29, %30
  br label %32

32:                                               ; preds = %28, %18
  %33 = phi i1 [ true, %18 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %55

38:                                               ; preds = %32
  %39 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @xdr_read_pages(%struct.xdr_stream* %39, i64 %40)
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp sgt i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %60

49:                                               ; preds = %38
  %50 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %51 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @xdr_terminate_string(%struct.TYPE_2__* %52, i64 %53)
  store i32 0, i32* %2, align 4
  br label %66

55:                                               ; preds = %37
  %56 = load i64, i64* %5, align 8
  %57 = call i32 (i8*, i64, ...) @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %56)
  %58 = load i32, i32* @ENAMETOOLONG, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %66

60:                                               ; preds = %48
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* %4, align 8
  %63 = call i32 (i8*, i64, ...) @dprintk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %61, i64 %62)
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %60, %55, %49, %15
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @be32_to_cpup(i32*) #1

declare dso_local i64 @xdr_read_pages(%struct.xdr_stream*, i64) #1

declare dso_local i32 @xdr_terminate_string(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @dprintk(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
