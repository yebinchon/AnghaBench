; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_exchange_id.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_exchange_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { %struct.xdr_stream }
%struct.xdr_stream = type { i32 }
%struct.nfsd4_exchange_id = type { i32, i32, i32, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i8* }

@nfserr_resource = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundres*, i32, %struct.nfsd4_exchange_id*)* @nfsd4_encode_exchange_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_encode_exchange_id(%struct.nfsd4_compoundres* %0, i32 %1, %struct.nfsd4_exchange_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsd4_compoundres*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfsd4_exchange_id*, align 8
  %8 = alloca %struct.xdr_stream*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nfsd4_exchange_id* %2, %struct.nfsd4_exchange_id** %7, align 8
  %15 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %16 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %15, i32 0, i32 0
  store %struct.xdr_stream* %16, %struct.xdr_stream** %8, align 8
  store i32 0, i32* %14, align 4
  %17 = call %struct.TYPE_2__* (...) @utsname()
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %12, align 4
  %22 = call %struct.TYPE_2__* (...) @utsname()
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %11, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 @strlen(i8* %25)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %28 = call i32* @xdr_reserve_space(%struct.xdr_stream* %27, i32 20)
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @nfserr_resource, align 4
  store i32 %32, i32* %4, align 4
  br label %143

33:                                               ; preds = %3
  %34 = load i32*, i32** %9, align 8
  %35 = load %struct.nfsd4_exchange_id*, %struct.nfsd4_exchange_id** %7, align 8
  %36 = getelementptr inbounds %struct.nfsd4_exchange_id, %struct.nfsd4_exchange_id* %35, i32 0, i32 5
  %37 = call i32* @xdr_encode_opaque_fixed(i32* %34, i32* %36, i32 8)
  store i32* %37, i32** %9, align 8
  %38 = load %struct.nfsd4_exchange_id*, %struct.nfsd4_exchange_id** %7, align 8
  %39 = getelementptr inbounds %struct.nfsd4_exchange_id, %struct.nfsd4_exchange_id* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @cpu_to_be32(i32 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  %45 = load %struct.nfsd4_exchange_id*, %struct.nfsd4_exchange_id** %7, align 8
  %46 = getelementptr inbounds %struct.nfsd4_exchange_id, %struct.nfsd4_exchange_id* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @cpu_to_be32(i32 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %52 = load %struct.nfsd4_exchange_id*, %struct.nfsd4_exchange_id** %7, align 8
  %53 = getelementptr inbounds %struct.nfsd4_exchange_id, %struct.nfsd4_exchange_id* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @cpu_to_be32(i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  %59 = load %struct.nfsd4_exchange_id*, %struct.nfsd4_exchange_id** %7, align 8
  %60 = getelementptr inbounds %struct.nfsd4_exchange_id, %struct.nfsd4_exchange_id* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %108 [
    i32 128, label %62
    i32 129, label %63
  ]

62:                                               ; preds = %33
  br label %110

63:                                               ; preds = %33
  %64 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %65 = load %struct.nfsd4_exchange_id*, %struct.nfsd4_exchange_id** %7, align 8
  %66 = getelementptr inbounds %struct.nfsd4_exchange_id, %struct.nfsd4_exchange_id* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.nfsd4_exchange_id*, %struct.nfsd4_exchange_id** %7, align 8
  %71 = getelementptr inbounds %struct.nfsd4_exchange_id, %struct.nfsd4_exchange_id* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.nfsd4_exchange_id*, %struct.nfsd4_exchange_id** %7, align 8
  %76 = getelementptr inbounds %struct.nfsd4_exchange_id, %struct.nfsd4_exchange_id* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @nfsd4_encode_bitmap(%struct.xdr_stream* %64, i32 %69, i32 %74, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %63
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %4, align 4
  br label %143

85:                                               ; preds = %63
  %86 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %87 = load %struct.nfsd4_exchange_id*, %struct.nfsd4_exchange_id** %7, align 8
  %88 = getelementptr inbounds %struct.nfsd4_exchange_id, %struct.nfsd4_exchange_id* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.nfsd4_exchange_id*, %struct.nfsd4_exchange_id** %7, align 8
  %93 = getelementptr inbounds %struct.nfsd4_exchange_id, %struct.nfsd4_exchange_id* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.nfsd4_exchange_id*, %struct.nfsd4_exchange_id** %7, align 8
  %98 = getelementptr inbounds %struct.nfsd4_exchange_id, %struct.nfsd4_exchange_id* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @nfsd4_encode_bitmap(%struct.xdr_stream* %86, i32 %91, i32 %96, i32 %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %85
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %4, align 4
  br label %143

107:                                              ; preds = %85
  br label %110

108:                                              ; preds = %33
  %109 = call i32 @WARN_ON_ONCE(i32 1)
  br label %110

110:                                              ; preds = %108, %107, %62
  %111 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @XDR_QUADLEN(i32 %112)
  %114 = mul nsw i32 %113, 4
  %115 = add nsw i32 12, %114
  %116 = add nsw i32 %115, 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @XDR_QUADLEN(i32 %117)
  %119 = mul nsw i32 %118, 4
  %120 = add nsw i32 %116, %119
  %121 = add nsw i32 %120, 4
  %122 = call i32* @xdr_reserve_space(%struct.xdr_stream* %111, i32 %121)
  store i32* %122, i32** %9, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %110
  %126 = load i32, i32* @nfserr_resource, align 4
  store i32 %126, i32* %4, align 4
  br label %143

127:                                              ; preds = %110
  %128 = load i32*, i32** %9, align 8
  %129 = load i32, i32* %14, align 4
  %130 = call i32* @xdr_encode_hyper(i32* %128, i32 %129)
  store i32* %130, i32** %9, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = load i8*, i8** %10, align 8
  %133 = load i32, i32* %12, align 4
  %134 = call i32* @xdr_encode_opaque(i32* %131, i8* %132, i32 %133)
  store i32* %134, i32** %9, align 8
  %135 = load i32*, i32** %9, align 8
  %136 = load i8*, i8** %11, align 8
  %137 = load i32, i32* %13, align 4
  %138 = call i32* @xdr_encode_opaque(i32* %135, i8* %136, i32 %137)
  store i32* %138, i32** %9, align 8
  %139 = call i8* @cpu_to_be32(i32 0)
  %140 = ptrtoint i8* %139 to i32
  %141 = load i32*, i32** %9, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %9, align 8
  store i32 %140, i32* %141, align 4
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %127, %125, %105, %83, %31
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.TYPE_2__* @utsname(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32* @xdr_encode_opaque_fixed(i32*, i32*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @nfsd4_encode_bitmap(%struct.xdr_stream*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i32* @xdr_encode_opaque(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
