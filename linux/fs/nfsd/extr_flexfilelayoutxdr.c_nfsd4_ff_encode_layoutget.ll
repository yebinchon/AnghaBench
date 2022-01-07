; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_flexfilelayoutxdr.c_nfsd4_ff_encode_layoutget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_flexfilelayoutxdr.c_nfsd4_ff_encode_layoutget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfsd4_layoutget = type { %struct.pnfs_ff_layout* }
%struct.pnfs_ff_layout = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ff_idmap = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@nfserr_toosmall = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd4_ff_encode_layoutget(%struct.xdr_stream* %0, %struct.nfsd4_layoutget* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfsd4_layoutget*, align 8
  %6 = alloca %struct.pnfs_ff_layout*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ff_idmap, align 4
  %13 = alloca %struct.ff_idmap, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfsd4_layoutget* %1, %struct.nfsd4_layoutget** %5, align 8
  %14 = load %struct.nfsd4_layoutget*, %struct.nfsd4_layoutget** %5, align 8
  %15 = getelementptr inbounds %struct.nfsd4_layoutget, %struct.nfsd4_layoutget* %14, i32 0, i32 0
  %16 = load %struct.pnfs_ff_layout*, %struct.pnfs_ff_layout** %15, align 8
  store %struct.pnfs_ff_layout* %16, %struct.pnfs_ff_layout** %6, align 8
  %17 = load %struct.pnfs_ff_layout*, %struct.pnfs_ff_layout** %6, align 8
  %18 = getelementptr inbounds %struct.pnfs_ff_layout, %struct.pnfs_ff_layout* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 4, %20
  store i32 %21, i32* %10, align 4
  %22 = getelementptr inbounds %struct.ff_idmap, %struct.ff_idmap* %12, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pnfs_ff_layout*, %struct.pnfs_ff_layout** %6, align 8
  %25 = getelementptr inbounds %struct.pnfs_ff_layout, %struct.pnfs_ff_layout* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @from_kuid(i32* @init_user_ns, i32 %26)
  %28 = call i8* @sprintf(i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = getelementptr inbounds %struct.ff_idmap, %struct.ff_idmap* %12, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.ff_idmap, %struct.ff_idmap* %13, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pnfs_ff_layout*, %struct.pnfs_ff_layout** %6, align 8
  %34 = getelementptr inbounds %struct.pnfs_ff_layout, %struct.pnfs_ff_layout* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @from_kgid(i32* @init_user_ns, i32 %35)
  %37 = call i8* @sprintf(i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = getelementptr inbounds %struct.ff_idmap, %struct.ff_idmap* %13, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 28, %41
  %43 = add i64 %42, 8
  %44 = getelementptr inbounds %struct.ff_idmap, %struct.ff_idmap* %12, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %43, %46
  %48 = add i64 %47, 8
  %49 = getelementptr inbounds %struct.ff_idmap, %struct.ff_idmap* %13, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %48, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 4, %54
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 20, %56
  store i32 %57, i32* %7, align 4
  %58 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 4, %60
  %62 = trunc i64 %61 to i32
  %63 = call i32* @xdr_reserve_space(%struct.xdr_stream* %58, i32 %62)
  store i32* %63, i32** %11, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %2
  %67 = load i32, i32* @nfserr_toosmall, align 4
  store i32 %67, i32* %3, align 4
  br label %142

68:                                               ; preds = %2
  %69 = load i32, i32* %7, align 4
  %70 = call i8* @cpu_to_be32(i32 %69)
  %71 = ptrtoint i8* %70 to i32
  %72 = load i32*, i32** %11, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %11, align 8
  store i32 %71, i32* %72, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = call i32* @xdr_encode_hyper(i32* %74, i32 0)
  store i32* %75, i32** %11, align 8
  %76 = call i8* @cpu_to_be32(i32 1)
  %77 = ptrtoint i8* %76 to i32
  %78 = load i32*, i32** %11, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %11, align 8
  store i32 %77, i32* %78, align 4
  %80 = call i8* @cpu_to_be32(i32 1)
  %81 = ptrtoint i8* %80 to i32
  %82 = load i32*, i32** %11, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %11, align 8
  store i32 %81, i32* %82, align 4
  %84 = load i32*, i32** %11, align 8
  %85 = load %struct.pnfs_ff_layout*, %struct.pnfs_ff_layout** %6, align 8
  %86 = getelementptr inbounds %struct.pnfs_ff_layout, %struct.pnfs_ff_layout* %85, i32 0, i32 3
  %87 = call i32* @xdr_encode_opaque_fixed(i32* %84, i32* %86, i32 4)
  store i32* %87, i32** %11, align 8
  %88 = call i8* @cpu_to_be32(i32 1)
  %89 = ptrtoint i8* %88 to i32
  %90 = load i32*, i32** %11, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %11, align 8
  store i32 %89, i32* %90, align 4
  %92 = load %struct.pnfs_ff_layout*, %struct.pnfs_ff_layout** %6, align 8
  %93 = getelementptr inbounds %struct.pnfs_ff_layout, %struct.pnfs_ff_layout* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @cpu_to_be32(i32 %95)
  %97 = ptrtoint i8* %96 to i32
  %98 = load i32*, i32** %11, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %11, align 8
  store i32 %97, i32* %98, align 4
  %100 = load i32*, i32** %11, align 8
  %101 = load %struct.pnfs_ff_layout*, %struct.pnfs_ff_layout** %6, align 8
  %102 = getelementptr inbounds %struct.pnfs_ff_layout, %struct.pnfs_ff_layout* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = call i32* @xdr_encode_opaque_fixed(i32* %100, i32* %103, i32 4)
  store i32* %104, i32** %11, align 8
  %105 = call i8* @cpu_to_be32(i32 1)
  %106 = ptrtoint i8* %105 to i32
  %107 = load i32*, i32** %11, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %11, align 8
  store i32 %106, i32* %107, align 4
  %109 = load i32*, i32** %11, align 8
  %110 = load %struct.pnfs_ff_layout*, %struct.pnfs_ff_layout** %6, align 8
  %111 = getelementptr inbounds %struct.pnfs_ff_layout, %struct.pnfs_ff_layout* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.pnfs_ff_layout*, %struct.pnfs_ff_layout** %6, align 8
  %115 = getelementptr inbounds %struct.pnfs_ff_layout, %struct.pnfs_ff_layout* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32* @xdr_encode_opaque(i32* %109, i32 %113, i32 %117)
  store i32* %118, i32** %11, align 8
  %119 = load i32*, i32** %11, align 8
  %120 = getelementptr inbounds %struct.ff_idmap, %struct.ff_idmap* %12, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.ff_idmap, %struct.ff_idmap* %12, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32* @xdr_encode_opaque(i32* %119, i32 %121, i32 %123)
  store i32* %124, i32** %11, align 8
  %125 = load i32*, i32** %11, align 8
  %126 = getelementptr inbounds %struct.ff_idmap, %struct.ff_idmap* %13, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.ff_idmap, %struct.ff_idmap* %13, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32* @xdr_encode_opaque(i32* %125, i32 %127, i32 %129)
  store i32* %130, i32** %11, align 8
  %131 = load %struct.pnfs_ff_layout*, %struct.pnfs_ff_layout** %6, align 8
  %132 = getelementptr inbounds %struct.pnfs_ff_layout, %struct.pnfs_ff_layout* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @cpu_to_be32(i32 %133)
  %135 = ptrtoint i8* %134 to i32
  %136 = load i32*, i32** %11, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %11, align 8
  store i32 %135, i32* %136, align 4
  %138 = call i8* @cpu_to_be32(i32 0)
  %139 = ptrtoint i8* %138 to i32
  %140 = load i32*, i32** %11, align 8
  %141 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %141, i32** %11, align 8
  store i32 %139, i32* %140, align 4
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %68, %66
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i8* @sprintf(i32, i8*, i32) #1

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i32 @from_kgid(i32*, i32) #1

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i32* @xdr_encode_opaque_fixed(i32*, i32*, i32) #1

declare dso_local i32* @xdr_encode_opaque(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
