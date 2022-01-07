; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_secinfo_common.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_secinfo_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs4_secinfo_res = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.nfs4_secinfo4* }
%struct.nfs4_secinfo4 = type { i8* }

@EIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@RPC_AUTH_GSS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfs4_secinfo_res*)* @decode_secinfo_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_secinfo_common(%struct.xdr_stream* %0, %struct.nfs4_secinfo_res* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs4_secinfo_res*, align 8
  %6 = alloca %struct.nfs4_secinfo4*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs4_secinfo_res* %1, %struct.nfs4_secinfo_res** %5, align 8
  %11 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %12 = call i32* @xdr_inline_decode(%struct.xdr_stream* %11, i32 4)
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
  br label %100

22:                                               ; preds = %2
  %23 = load %struct.nfs4_secinfo_res*, %struct.nfs4_secinfo_res** %5, align 8
  %24 = getelementptr inbounds %struct.nfs4_secinfo_res, %struct.nfs4_secinfo_res* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call i8* @be32_to_cpup(i32* %27)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %94, %22
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %97

34:                                               ; preds = %30
  %35 = load %struct.nfs4_secinfo_res*, %struct.nfs4_secinfo_res** %5, align 8
  %36 = getelementptr inbounds %struct.nfs4_secinfo_res, %struct.nfs4_secinfo_res* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.nfs4_secinfo4*, %struct.nfs4_secinfo4** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.nfs4_secinfo4, %struct.nfs4_secinfo4* %39, i64 %41
  store %struct.nfs4_secinfo4* %42, %struct.nfs4_secinfo4** %6, align 8
  %43 = load %struct.nfs4_secinfo4*, %struct.nfs4_secinfo4** %6, align 8
  %44 = getelementptr inbounds %struct.nfs4_secinfo4, %struct.nfs4_secinfo4* %43, i64 1
  %45 = bitcast %struct.nfs4_secinfo4* %44 to i8*
  %46 = load %struct.nfs4_secinfo_res*, %struct.nfs4_secinfo_res** %5, align 8
  %47 = getelementptr inbounds %struct.nfs4_secinfo_res, %struct.nfs4_secinfo_res* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = bitcast %struct.TYPE_2__* %48 to i8*
  %50 = ptrtoint i8* %45 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp sgt i64 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %34
  br label %97

57:                                               ; preds = %34
  %58 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %59 = call i32* @xdr_inline_decode(%struct.xdr_stream* %58, i32 4)
  store i32* %59, i32** %10, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = icmp ne i32* %60, null
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %100

69:                                               ; preds = %57
  %70 = load i32*, i32** %10, align 8
  %71 = call i8* @be32_to_cpup(i32* %70)
  %72 = load %struct.nfs4_secinfo4*, %struct.nfs4_secinfo4** %6, align 8
  %73 = getelementptr inbounds %struct.nfs4_secinfo4, %struct.nfs4_secinfo4* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load %struct.nfs4_secinfo4*, %struct.nfs4_secinfo4** %6, align 8
  %75 = getelementptr inbounds %struct.nfs4_secinfo4, %struct.nfs4_secinfo4* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i8*, i8** @RPC_AUTH_GSS, align 8
  %78 = icmp eq i8* %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %69
  %80 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %81 = load %struct.nfs4_secinfo4*, %struct.nfs4_secinfo4** %6, align 8
  %82 = call i32 @decode_secinfo_gss(%struct.xdr_stream* %80, %struct.nfs4_secinfo4* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %98

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %69
  %88 = load %struct.nfs4_secinfo_res*, %struct.nfs4_secinfo_res** %5, align 8
  %89 = getelementptr inbounds %struct.nfs4_secinfo_res, %struct.nfs4_secinfo_res* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %7, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %30

97:                                               ; preds = %56, %30
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %97, %85
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %66, %19
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @be32_to_cpup(i32*) #1

declare dso_local i32 @decode_secinfo_gss(%struct.xdr_stream*, %struct.nfs4_secinfo4*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
