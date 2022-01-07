; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_create_session.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_create_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { %struct.xdr_stream }
%struct.xdr_stream = type { i32 }
%struct.nfsd4_create_session = type { %struct.TYPE_6__, %struct.TYPE_5__, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@nfserr_resource = common dso_local global i32 0, align 4
@NFS4_MAX_SESSIONID_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundres*, i32, %struct.nfsd4_create_session*)* @nfsd4_encode_create_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_encode_create_session(%struct.nfsd4_compoundres* %0, i32 %1, %struct.nfsd4_create_session* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsd4_compoundres*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfsd4_create_session*, align 8
  %8 = alloca %struct.xdr_stream*, align 8
  %9 = alloca i32*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nfsd4_create_session* %2, %struct.nfsd4_create_session** %7, align 8
  %10 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %11 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %10, i32 0, i32 0
  store %struct.xdr_stream* %11, %struct.xdr_stream** %8, align 8
  %12 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %13 = call i32* @xdr_reserve_space(%struct.xdr_stream* %12, i32 24)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @nfserr_resource, align 4
  store i32 %17, i32* %4, align 4
  br label %202

18:                                               ; preds = %3
  %19 = load i32*, i32** %9, align 8
  %20 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %21 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @NFS4_MAX_SESSIONID_LEN, align 4
  %25 = call i32* @xdr_encode_opaque_fixed(i32* %19, i32 %23, i32 %24)
  store i32* %25, i32** %9, align 8
  %26 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %27 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i8* @cpu_to_be32(i64 %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  %33 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %34 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i8* @cpu_to_be32(i64 %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  %40 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %41 = call i32* @xdr_reserve_space(%struct.xdr_stream* %40, i32 28)
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %18
  %45 = load i32, i32* @nfserr_resource, align 4
  store i32 %45, i32* %4, align 4
  br label %202

46:                                               ; preds = %18
  %47 = call i8* @cpu_to_be32(i64 0)
  %48 = ptrtoint i8* %47 to i32
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  %51 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %52 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = call i8* @cpu_to_be32(i64 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  %59 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %60 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = call i8* @cpu_to_be32(i64 %62)
  %64 = ptrtoint i8* %63 to i32
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  %67 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %68 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = call i8* @cpu_to_be32(i64 %70)
  %72 = ptrtoint i8* %71 to i32
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  %75 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %76 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = call i8* @cpu_to_be32(i64 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  %83 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %84 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = call i8* @cpu_to_be32(i64 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load i32*, i32** %9, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %9, align 8
  store i32 %88, i32* %89, align 4
  %91 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %92 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i8* @cpu_to_be32(i64 %94)
  %96 = ptrtoint i8* %95 to i32
  %97 = load i32*, i32** %9, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  %99 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %100 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %46
  %105 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %106 = call i32* @xdr_reserve_space(%struct.xdr_stream* %105, i32 4)
  store i32* %106, i32** %9, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* @nfserr_resource, align 4
  store i32 %110, i32* %4, align 4
  br label %202

111:                                              ; preds = %104
  %112 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %113 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i8* @cpu_to_be32(i64 %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %9, align 8
  store i32 %117, i32* %118, align 4
  br label %120

120:                                              ; preds = %111, %46
  %121 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %122 = call i32* @xdr_reserve_space(%struct.xdr_stream* %121, i32 28)
  store i32* %122, i32** %9, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* @nfserr_resource, align 4
  store i32 %126, i32* %4, align 4
  br label %202

127:                                              ; preds = %120
  %128 = call i8* @cpu_to_be32(i64 0)
  %129 = ptrtoint i8* %128 to i32
  %130 = load i32*, i32** %9, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %9, align 8
  store i32 %129, i32* %130, align 4
  %132 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %133 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 6
  %135 = load i64, i64* %134, align 8
  %136 = call i8* @cpu_to_be32(i64 %135)
  %137 = ptrtoint i8* %136 to i32
  %138 = load i32*, i32** %9, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %9, align 8
  store i32 %137, i32* %138, align 4
  %140 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %141 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = call i8* @cpu_to_be32(i64 %143)
  %145 = ptrtoint i8* %144 to i32
  %146 = load i32*, i32** %9, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %9, align 8
  store i32 %145, i32* %146, align 4
  %148 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %149 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = call i8* @cpu_to_be32(i64 %151)
  %153 = ptrtoint i8* %152 to i32
  %154 = load i32*, i32** %9, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %9, align 8
  store i32 %153, i32* %154, align 4
  %156 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %157 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = call i8* @cpu_to_be32(i64 %159)
  %161 = ptrtoint i8* %160 to i32
  %162 = load i32*, i32** %9, align 8
  %163 = getelementptr inbounds i32, i32* %162, i32 1
  store i32* %163, i32** %9, align 8
  store i32 %161, i32* %162, align 4
  %164 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %165 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = call i8* @cpu_to_be32(i64 %167)
  %169 = ptrtoint i8* %168 to i32
  %170 = load i32*, i32** %9, align 8
  %171 = getelementptr inbounds i32, i32* %170, i32 1
  store i32* %171, i32** %9, align 8
  store i32 %169, i32* %170, align 4
  %172 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %173 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = call i8* @cpu_to_be32(i64 %175)
  %177 = ptrtoint i8* %176 to i32
  %178 = load i32*, i32** %9, align 8
  %179 = getelementptr inbounds i32, i32* %178, i32 1
  store i32* %179, i32** %9, align 8
  store i32 %177, i32* %178, align 4
  %180 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %181 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %201

185:                                              ; preds = %127
  %186 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %187 = call i32* @xdr_reserve_space(%struct.xdr_stream* %186, i32 4)
  store i32* %187, i32** %9, align 8
  %188 = load i32*, i32** %9, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %192, label %190

190:                                              ; preds = %185
  %191 = load i32, i32* @nfserr_resource, align 4
  store i32 %191, i32* %4, align 4
  br label %202

192:                                              ; preds = %185
  %193 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %194 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = call i8* @cpu_to_be32(i64 %196)
  %198 = ptrtoint i8* %197 to i32
  %199 = load i32*, i32** %9, align 8
  %200 = getelementptr inbounds i32, i32* %199, i32 1
  store i32* %200, i32** %9, align 8
  store i32 %198, i32* %199, align 4
  br label %201

201:                                              ; preds = %192, %127
  store i32 0, i32* %4, align 4
  br label %202

202:                                              ; preds = %201, %190, %125, %109, %44, %16
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32* @xdr_encode_opaque_fixed(i32*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
