; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_attr_filehandle.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_attr_filehandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_fh = type { i32, i32 }

@FATTR4_WORD0_FILEHANDLE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NFS4_FHSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, i32*, %struct.nfs_fh*)* @decode_attr_filehandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_attr_filehandle(%struct.xdr_stream* %0, i32* %1, %struct.nfs_fh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfs_fh*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfs_fh* %2, %struct.nfs_fh** %7, align 8
  %10 = load %struct.nfs_fh*, %struct.nfs_fh** %7, align 8
  %11 = icmp ne %struct.nfs_fh* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.nfs_fh*, %struct.nfs_fh** %7, align 8
  %14 = call i32 @memset(%struct.nfs_fh* %13, i32 0, i32 8)
  br label %15

15:                                               ; preds = %12, %3
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @FATTR4_WORD0_FILEHANDLE, align 4
  %20 = sub i32 %19, 1
  %21 = and i32 %18, %20
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %90

27:                                               ; preds = %15
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FATTR4_WORD0_FILEHANDLE, align 4
  %32 = and i32 %30, %31
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %89

35:                                               ; preds = %27
  %36 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %37 = call i32* @xdr_inline_decode(%struct.xdr_stream* %36, i32 4)
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = icmp ne i32* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %90

47:                                               ; preds = %35
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @be32_to_cpup(i32* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @NFS4_FHSIZE, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %90

56:                                               ; preds = %47
  %57 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32* @xdr_inline_decode(%struct.xdr_stream* %57, i32 %58)
  store i32* %59, i32** %8, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = icmp ne i32* %60, null
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %90

69:                                               ; preds = %56
  %70 = load %struct.nfs_fh*, %struct.nfs_fh** %7, align 8
  %71 = icmp ne %struct.nfs_fh* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load %struct.nfs_fh*, %struct.nfs_fh** %7, align 8
  %74 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @memcpy(i32 %75, i32* %76, i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.nfs_fh*, %struct.nfs_fh** %7, align 8
  %81 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %72, %69
  %83 = load i32, i32* @FATTR4_WORD0_FILEHANDLE, align 4
  %84 = xor i32 %83, -1
  %85 = load i32*, i32** %6, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %82, %27
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %66, %53, %44, %24
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @memset(%struct.nfs_fh*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
