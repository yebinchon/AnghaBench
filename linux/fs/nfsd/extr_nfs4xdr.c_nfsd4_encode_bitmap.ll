; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }

@nfserr_resource = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, i32, i32, i32)* @nfsd4_encode_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_encode_bitmap(%struct.xdr_stream* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xdr_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %4
  %14 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %15 = call i32* @xdr_reserve_space(%struct.xdr_stream* %14, i32 16)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %81

19:                                               ; preds = %13
  %20 = call i8* @cpu_to_be32(i32 3)
  %21 = ptrtoint i8* %20 to i32
  %22 = load i32*, i32** %10, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %10, align 8
  store i32 %21, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i8* @cpu_to_be32(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %10, align 8
  store i32 %26, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i8* @cpu_to_be32(i32 %29)
  %31 = ptrtoint i8* %30 to i32
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %10, align 8
  store i32 %31, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i8* @cpu_to_be32(i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load i32*, i32** %10, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %10, align 8
  store i32 %36, i32* %37, align 4
  br label %80

39:                                               ; preds = %4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %39
  %43 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %44 = call i32* @xdr_reserve_space(%struct.xdr_stream* %43, i32 12)
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %81

48:                                               ; preds = %42
  %49 = call i8* @cpu_to_be32(i32 2)
  %50 = ptrtoint i8* %49 to i32
  %51 = load i32*, i32** %10, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %10, align 8
  store i32 %50, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i8* @cpu_to_be32(i32 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load i32*, i32** %10, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %10, align 8
  store i32 %55, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i8* @cpu_to_be32(i32 %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %10, align 8
  store i32 %60, i32* %61, align 4
  br label %79

63:                                               ; preds = %39
  %64 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %65 = call i32* @xdr_reserve_space(%struct.xdr_stream* %64, i32 8)
  store i32* %65, i32** %10, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  br label %81

69:                                               ; preds = %63
  %70 = call i8* @cpu_to_be32(i32 1)
  %71 = ptrtoint i8* %70 to i32
  %72 = load i32*, i32** %10, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %10, align 8
  store i32 %71, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i8* @cpu_to_be32(i32 %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = load i32*, i32** %10, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %10, align 8
  store i32 %76, i32* %77, align 4
  br label %79

79:                                               ; preds = %69, %48
  br label %80

80:                                               ; preds = %79, %19
  store i32 0, i32* %5, align 4
  br label %83

81:                                               ; preds = %68, %47, %18
  %82 = load i32, i32* @nfserr_resource, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %80
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
