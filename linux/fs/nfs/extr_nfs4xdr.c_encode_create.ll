; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.nfs4_create_arg = type { i32, %struct.TYPE_12__*, i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.compound_hdr = type { i32 }

@OP_CREATE = common dso_local global i32 0, align 4
@decode_create_maxsz = common dso_local global i32 0, align 4
@XDRBUF_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs4_create_arg*, %struct.compound_hdr*)* @encode_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_create(%struct.xdr_stream* %0, %struct.nfs4_create_arg* %1, %struct.compound_hdr* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs4_create_arg*, align 8
  %6 = alloca %struct.compound_hdr*, align 8
  %7 = alloca i8**, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs4_create_arg* %1, %struct.nfs4_create_arg** %5, align 8
  store %struct.compound_hdr* %2, %struct.compound_hdr** %6, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = load i32, i32* @OP_CREATE, align 4
  %10 = load i32, i32* @decode_create_maxsz, align 4
  %11 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %12 = call i32 @encode_op_hdr(%struct.xdr_stream* %8, i32 %9, i32 %10, %struct.compound_hdr* %11)
  %13 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %14 = load %struct.nfs4_create_arg*, %struct.nfs4_create_arg** %5, align 8
  %15 = getelementptr inbounds %struct.nfs4_create_arg, %struct.nfs4_create_arg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @encode_uint32(%struct.xdr_stream* %13, i32 %16)
  %18 = load %struct.nfs4_create_arg*, %struct.nfs4_create_arg** %5, align 8
  %19 = getelementptr inbounds %struct.nfs4_create_arg, %struct.nfs4_create_arg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %68 [
    i32 128, label %21
    i32 130, label %50
    i32 129, label %50
  ]

21:                                               ; preds = %3
  %22 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %23 = call i8** @reserve_space(%struct.xdr_stream* %22, i32 4)
  store i8** %23, i8*** %7, align 8
  %24 = load %struct.nfs4_create_arg*, %struct.nfs4_create_arg** %5, align 8
  %25 = getelementptr inbounds %struct.nfs4_create_arg, %struct.nfs4_create_arg* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @cpu_to_be32(i32 %28)
  %30 = load i8**, i8*** %7, align 8
  store i8* %29, i8** %30, align 8
  %31 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %32 = load %struct.nfs4_create_arg*, %struct.nfs4_create_arg** %5, align 8
  %33 = getelementptr inbounds %struct.nfs4_create_arg, %struct.nfs4_create_arg* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nfs4_create_arg*, %struct.nfs4_create_arg** %5, align 8
  %38 = getelementptr inbounds %struct.nfs4_create_arg, %struct.nfs4_create_arg* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @xdr_write_pages(%struct.xdr_stream* %31, i32 %36, i32 0, i32 %41)
  %43 = load i32, i32* @XDRBUF_WRITE, align 4
  %44 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %45 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %43
  store i32 %49, i32* %47, align 4
  br label %69

50:                                               ; preds = %3, %3
  %51 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %52 = call i8** @reserve_space(%struct.xdr_stream* %51, i32 8)
  store i8** %52, i8*** %7, align 8
  %53 = load %struct.nfs4_create_arg*, %struct.nfs4_create_arg** %5, align 8
  %54 = getelementptr inbounds %struct.nfs4_create_arg, %struct.nfs4_create_arg* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @cpu_to_be32(i32 %57)
  %59 = load i8**, i8*** %7, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i32 1
  store i8** %60, i8*** %7, align 8
  store i8* %58, i8** %59, align 8
  %61 = load %struct.nfs4_create_arg*, %struct.nfs4_create_arg** %5, align 8
  %62 = getelementptr inbounds %struct.nfs4_create_arg, %struct.nfs4_create_arg* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i8* @cpu_to_be32(i32 %65)
  %67 = load i8**, i8*** %7, align 8
  store i8* %66, i8** %67, align 8
  br label %69

68:                                               ; preds = %3
  br label %69

69:                                               ; preds = %68, %50, %21
  %70 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %71 = load %struct.nfs4_create_arg*, %struct.nfs4_create_arg** %5, align 8
  %72 = getelementptr inbounds %struct.nfs4_create_arg, %struct.nfs4_create_arg* %71, i32 0, i32 5
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.nfs4_create_arg*, %struct.nfs4_create_arg** %5, align 8
  %77 = getelementptr inbounds %struct.nfs4_create_arg, %struct.nfs4_create_arg* %76, i32 0, i32 5
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @encode_string(%struct.xdr_stream* %70, i32 %75, i32 %80)
  %82 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %83 = load %struct.nfs4_create_arg*, %struct.nfs4_create_arg** %5, align 8
  %84 = getelementptr inbounds %struct.nfs4_create_arg, %struct.nfs4_create_arg* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.nfs4_create_arg*, %struct.nfs4_create_arg** %5, align 8
  %87 = getelementptr inbounds %struct.nfs4_create_arg, %struct.nfs4_create_arg* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.nfs4_create_arg*, %struct.nfs4_create_arg** %5, align 8
  %90 = getelementptr inbounds %struct.nfs4_create_arg, %struct.nfs4_create_arg* %89, i32 0, i32 2
  %91 = load %struct.nfs4_create_arg*, %struct.nfs4_create_arg** %5, align 8
  %92 = getelementptr inbounds %struct.nfs4_create_arg, %struct.nfs4_create_arg* %91, i32 0, i32 1
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = load %struct.nfs4_create_arg*, %struct.nfs4_create_arg** %5, align 8
  %95 = getelementptr inbounds %struct.nfs4_create_arg, %struct.nfs4_create_arg* %94, i32 0, i32 1
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @encode_attrs(%struct.xdr_stream* %82, i32 %85, i32 %88, i32* %90, %struct.TYPE_12__* %93, i32 %98)
  ret void
}

declare dso_local i32 @encode_op_hdr(%struct.xdr_stream*, i32, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_uint32(%struct.xdr_stream*, i32) #1

declare dso_local i8** @reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @xdr_write_pages(%struct.xdr_stream*, i32, i32, i32) #1

declare dso_local i32 @encode_string(%struct.xdr_stream*, i32, i32) #1

declare dso_local i32 @encode_attrs(%struct.xdr_stream*, i32, i32, i32*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
