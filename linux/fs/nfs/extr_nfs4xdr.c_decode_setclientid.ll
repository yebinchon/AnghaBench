; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_setclientid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_setclientid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs4_setclientid_res = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@OP_SETCLIENTID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"nfs: decode_setclientid: Server returned operation %d\0A\00", align 1
@NFS_OK = common dso_local global i64 0, align 8
@NFS4_VERIFIER_SIZE = common dso_local global i32 0, align 4
@NFSERR_CLID_INUSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfs4_setclientid_res*)* @decode_setclientid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_setclientid(%struct.xdr_stream* %0, %struct.nfs4_setclientid_res* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs4_setclientid_res*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs4_setclientid_res* %1, %struct.nfs4_setclientid_res** %5, align 8
  %10 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %11 = call i32* @xdr_inline_decode(%struct.xdr_stream* %10, i64 8)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %132

21:                                               ; preds = %2
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %6, align 8
  %24 = call i64 @be32_to_cpup(i32* %22)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @OP_SETCLIENTID, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @dprintk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %132

33:                                               ; preds = %21
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @be32_to_cpup(i32* %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @NFS_OK, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %33
  %40 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %41 = load i32, i32* @NFS4_VERIFIER_SIZE, align 4
  %42 = add nsw i32 8, %41
  %43 = sext i32 %42 to i64
  %44 = call i32* @xdr_inline_decode(%struct.xdr_stream* %40, i64 %43)
  store i32* %44, i32** %6, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = icmp ne i32* %45, null
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %132

54:                                               ; preds = %39
  %55 = load i32*, i32** %6, align 8
  %56 = load %struct.nfs4_setclientid_res*, %struct.nfs4_setclientid_res** %5, align 8
  %57 = getelementptr inbounds %struct.nfs4_setclientid_res, %struct.nfs4_setclientid_res* %56, i32 0, i32 1
  %58 = call i32* @xdr_decode_hyper(i32* %55, i32* %57)
  store i32* %58, i32** %6, align 8
  %59 = load %struct.nfs4_setclientid_res*, %struct.nfs4_setclientid_res** %5, align 8
  %60 = getelementptr inbounds %struct.nfs4_setclientid_res, %struct.nfs4_setclientid_res* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* @NFS4_VERIFIER_SIZE, align 4
  %65 = call i32 @memcpy(i32 %62, i32* %63, i32 %64)
  br label %131

66:                                               ; preds = %33
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @NFSERR_CLID_INUSE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %128

70:                                               ; preds = %66
  %71 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %72 = call i32* @xdr_inline_decode(%struct.xdr_stream* %71, i64 4)
  store i32* %72, i32** %6, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = icmp ne i32* %73, null
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %132

82:                                               ; preds = %70
  %83 = load i32*, i32** %6, align 8
  %84 = call i64 @be32_to_cpup(i32* %83)
  store i64 %84, i64* %9, align 8
  %85 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %86 = load i64, i64* %9, align 8
  %87 = call i32* @xdr_inline_decode(%struct.xdr_stream* %85, i64 %86)
  store i32* %87, i32** %6, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = icmp ne i32* %88, null
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %82
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %132

97:                                               ; preds = %82
  %98 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %99 = call i32* @xdr_inline_decode(%struct.xdr_stream* %98, i64 4)
  store i32* %99, i32** %6, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = icmp ne i32* %100, null
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load i32, i32* @EIO, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %132

109:                                              ; preds = %97
  %110 = load i32*, i32** %6, align 8
  %111 = call i64 @be32_to_cpup(i32* %110)
  store i64 %111, i64* %9, align 8
  %112 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %113 = load i64, i64* %9, align 8
  %114 = call i32* @xdr_inline_decode(%struct.xdr_stream* %112, i64 %113)
  store i32* %114, i32** %6, align 8
  %115 = load i32*, i32** %6, align 8
  %116 = icmp ne i32* %115, null
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = call i64 @unlikely(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %109
  %122 = load i32, i32* @EIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %132

124:                                              ; preds = %109
  %125 = load i64, i64* @NFSERR_CLID_INUSE, align 8
  %126 = sub nsw i64 0, %125
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %3, align 4
  br label %132

128:                                              ; preds = %66
  %129 = load i64, i64* %8, align 8
  %130 = call i32 @nfs4_stat_to_errno(i64 %129)
  store i32 %130, i32* %3, align 4
  br label %132

131:                                              ; preds = %54
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %131, %128, %124, %121, %106, %94, %79, %51, %28, %18
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @be32_to_cpup(i32*) #1

declare dso_local i32 @dprintk(i8*, i64) #1

declare dso_local i32* @xdr_decode_hyper(i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @nfs4_stat_to_errno(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
