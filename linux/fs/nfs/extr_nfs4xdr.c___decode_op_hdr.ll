; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c___decode_op_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c___decode_op_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }

@NFS_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"nfs: Server returned operation %d but we issued a request for %d\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, i32, i32*)* @__decode_op_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__decode_op_hdr(%struct.xdr_stream* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %12 = call i64* @xdr_inline_decode(%struct.xdr_stream* %11, i32 8)
  store i64* %12, i64** %8, align 8
  %13 = load i64*, i64** %8, align 8
  %14 = icmp ne i64* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %61

20:                                               ; preds = %3
  %21 = load i64*, i64** %8, align 8
  %22 = getelementptr inbounds i64, i64* %21, i32 1
  store i64* %22, i64** %8, align 8
  %23 = call i8* @be32_to_cpup(i64* %21)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %54

32:                                               ; preds = %20
  %33 = load i64*, i64** %8, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @NFS_OK, align 4
  %36 = call i64 @cpu_to_be32(i32 %35)
  %37 = icmp ne i64 %34, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %44

42:                                               ; preds = %32
  %43 = load i32*, i32** %7, align 8
  store i32 0, i32* %43, align 4
  store i32 1, i32* %4, align 4
  br label %65

44:                                               ; preds = %41
  %45 = load i64*, i64** %8, align 8
  %46 = call i8* @be32_to_cpup(i64* %45)
  store i8* %46, i8** %10, align 8
  %47 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @trace_nfs4_xdr_status(%struct.xdr_stream* %47, i32 %48, i8* %49)
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @nfs4_stat_to_errno(i8* %51)
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  store i32 1, i32* %4, align 4
  br label %65

54:                                               ; preds = %31
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @dprintk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* @EREMOTEIO, align 4
  %59 = sub nsw i32 0, %58
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  store i32 0, i32* %4, align 4
  br label %65

61:                                               ; preds = %19
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %54, %44, %42
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @be32_to_cpup(i64*) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @trace_nfs4_xdr_status(%struct.xdr_stream*, i32, i8*) #1

declare dso_local i32 @nfs4_stat_to_errno(i8*) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
