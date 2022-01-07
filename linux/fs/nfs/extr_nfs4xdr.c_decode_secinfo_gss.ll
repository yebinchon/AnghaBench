; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_secinfo_gss.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_secinfo_gss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs4_secinfo4 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@GSS_OID_MAX_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfs4_secinfo4*)* @decode_secinfo_gss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_secinfo_gss(%struct.xdr_stream* %0, %struct.nfs4_secinfo4* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs4_secinfo4*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs4_secinfo4* %1, %struct.nfs4_secinfo4** %5, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = call i32* @xdr_inline_decode(%struct.xdr_stream* %8, i32 4)
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp ne i32* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %79

19:                                               ; preds = %2
  %20 = load i32*, i32** %7, align 8
  %21 = call i8* @be32_to_cpup(i32* %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @GSS_OID_MAX_LEN, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %79

29:                                               ; preds = %19
  %30 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32* @xdr_inline_decode(%struct.xdr_stream* %30, i32 %31)
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = icmp ne i32* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %79

42:                                               ; preds = %29
  %43 = load %struct.nfs4_secinfo4*, %struct.nfs4_secinfo4** %5, align 8
  %44 = getelementptr inbounds %struct.nfs4_secinfo4, %struct.nfs4_secinfo4* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @memcpy(i32 %47, i32* %48, i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.nfs4_secinfo4*, %struct.nfs4_secinfo4** %5, align 8
  %53 = getelementptr inbounds %struct.nfs4_secinfo4, %struct.nfs4_secinfo4* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 8
  %56 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %57 = call i32* @xdr_inline_decode(%struct.xdr_stream* %56, i32 8)
  store i32* %57, i32** %7, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = icmp ne i32* %58, null
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %42
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %79

67:                                               ; preds = %42
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %7, align 8
  %70 = call i8* @be32_to_cpup(i32* %68)
  %71 = load %struct.nfs4_secinfo4*, %struct.nfs4_secinfo4** %5, align 8
  %72 = getelementptr inbounds %struct.nfs4_secinfo4, %struct.nfs4_secinfo4* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i8* %70, i8** %73, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i8* @be32_to_cpup(i32* %74)
  %76 = load %struct.nfs4_secinfo4*, %struct.nfs4_secinfo4** %5, align 8
  %77 = getelementptr inbounds %struct.nfs4_secinfo4, %struct.nfs4_secinfo4* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i8* %75, i8** %78, align 8
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %67, %64, %39, %26, %16
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @be32_to_cpup(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
