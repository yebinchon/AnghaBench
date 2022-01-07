; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { %struct.xdr_stream }
%struct.xdr_stream = type { i32 }
%struct.nfsd4_open = type { i32, i32, i32, i32, i32, i32*, i32, i32 }

@nfserr_resource = common dso_local global i32 0, align 4
@NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE = common dso_local global i32 0, align 4
@NFS4_LIMIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundres*, i32, %struct.nfsd4_open*)* @nfsd4_encode_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_encode_open(%struct.nfsd4_compoundres* %0, i32 %1, %struct.nfsd4_open* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsd4_compoundres*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfsd4_open*, align 8
  %8 = alloca %struct.xdr_stream*, align 8
  %9 = alloca i32*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nfsd4_open* %2, %struct.nfsd4_open** %7, align 8
  %10 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %11 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %10, i32 0, i32 0
  store %struct.xdr_stream* %11, %struct.xdr_stream** %8, align 8
  %12 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %13 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %14 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %13, i32 0, i32 7
  %15 = call i32 @nfsd4_encode_stateid(%struct.xdr_stream* %12, i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %4, align 4
  br label %213

20:                                               ; preds = %3
  %21 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %22 = call i32* @xdr_reserve_space(%struct.xdr_stream* %21, i32 24)
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @nfserr_resource, align 4
  store i32 %26, i32* %4, align 4
  br label %213

27:                                               ; preds = %20
  %28 = load i32*, i32** %9, align 8
  %29 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %30 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %29, i32 0, i32 6
  %31 = call i32* @encode_cinfo(i32* %28, i32* %30)
  store i32* %31, i32** %9, align 8
  %32 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %33 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @cpu_to_be32(i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  %39 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %40 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %41 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %46 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %51 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %50, i32 0, i32 5
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @nfsd4_encode_bitmap(%struct.xdr_stream* %39, i32 %44, i32 %49, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %27
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %4, align 4
  br label %213

60:                                               ; preds = %27
  %61 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %62 = call i32* @xdr_reserve_space(%struct.xdr_stream* %61, i32 4)
  store i32* %62, i32** %9, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @nfserr_resource, align 4
  store i32 %66, i32* %4, align 4
  br label %213

67:                                               ; preds = %60
  %68 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %69 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @cpu_to_be32(i32 %70)
  %72 = ptrtoint i8* %71 to i32
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  %75 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %76 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %210 [
    i32 133, label %78
    i32 131, label %79
    i32 130, label %120
    i32 132, label %171
  ]

78:                                               ; preds = %67
  br label %212

79:                                               ; preds = %67
  %80 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %81 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %82 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %81, i32 0, i32 4
  %83 = call i32 @nfsd4_encode_stateid(%struct.xdr_stream* %80, i32* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %4, align 4
  br label %213

88:                                               ; preds = %79
  %89 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %90 = call i32* @xdr_reserve_space(%struct.xdr_stream* %89, i32 20)
  store i32* %90, i32** %9, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* @nfserr_resource, align 4
  store i32 %94, i32* %4, align 4
  br label %213

95:                                               ; preds = %88
  %96 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %97 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @cpu_to_be32(i32 %98)
  %100 = ptrtoint i8* %99 to i32
  %101 = load i32*, i32** %9, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %9, align 8
  store i32 %100, i32* %101, align 4
  %103 = load i32, i32* @NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE, align 4
  %104 = call i8* @cpu_to_be32(i32 %103)
  %105 = ptrtoint i8* %104 to i32
  %106 = load i32*, i32** %9, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %9, align 8
  store i32 %105, i32* %106, align 4
  %108 = call i8* @cpu_to_be32(i32 0)
  %109 = ptrtoint i8* %108 to i32
  %110 = load i32*, i32** %9, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %9, align 8
  store i32 %109, i32* %110, align 4
  %112 = call i8* @cpu_to_be32(i32 0)
  %113 = ptrtoint i8* %112 to i32
  %114 = load i32*, i32** %9, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %9, align 8
  store i32 %113, i32* %114, align 4
  %116 = call i8* @cpu_to_be32(i32 0)
  %117 = ptrtoint i8* %116 to i32
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %9, align 8
  store i32 %117, i32* %118, align 4
  br label %212

120:                                              ; preds = %67
  %121 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %122 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %123 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %122, i32 0, i32 4
  %124 = call i32 @nfsd4_encode_stateid(%struct.xdr_stream* %121, i32* %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %4, align 4
  br label %213

129:                                              ; preds = %120
  %130 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %131 = call i32* @xdr_reserve_space(%struct.xdr_stream* %130, i32 32)
  store i32* %131, i32** %9, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %129
  %135 = load i32, i32* @nfserr_resource, align 4
  store i32 %135, i32* %4, align 4
  br label %213

136:                                              ; preds = %129
  %137 = call i8* @cpu_to_be32(i32 0)
  %138 = ptrtoint i8* %137 to i32
  %139 = load i32*, i32** %9, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %9, align 8
  store i32 %138, i32* %139, align 4
  %141 = load i32, i32* @NFS4_LIMIT_SIZE, align 4
  %142 = call i8* @cpu_to_be32(i32 %141)
  %143 = ptrtoint i8* %142 to i32
  %144 = load i32*, i32** %9, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %9, align 8
  store i32 %143, i32* %144, align 4
  %146 = call i8* @cpu_to_be32(i32 -1)
  %147 = ptrtoint i8* %146 to i32
  %148 = load i32*, i32** %9, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %9, align 8
  store i32 %147, i32* %148, align 4
  %150 = call i8* @cpu_to_be32(i32 -1)
  %151 = ptrtoint i8* %150 to i32
  %152 = load i32*, i32** %9, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %153, i32** %9, align 8
  store i32 %151, i32* %152, align 4
  %154 = load i32, i32* @NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE, align 4
  %155 = call i8* @cpu_to_be32(i32 %154)
  %156 = ptrtoint i8* %155 to i32
  %157 = load i32*, i32** %9, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %158, i32** %9, align 8
  store i32 %156, i32* %157, align 4
  %159 = call i8* @cpu_to_be32(i32 0)
  %160 = ptrtoint i8* %159 to i32
  %161 = load i32*, i32** %9, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %9, align 8
  store i32 %160, i32* %161, align 4
  %163 = call i8* @cpu_to_be32(i32 0)
  %164 = ptrtoint i8* %163 to i32
  %165 = load i32*, i32** %9, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %166, i32** %9, align 8
  store i32 %164, i32* %165, align 4
  %167 = call i8* @cpu_to_be32(i32 0)
  %168 = ptrtoint i8* %167 to i32
  %169 = load i32*, i32** %9, align 8
  %170 = getelementptr inbounds i32, i32* %169, i32 1
  store i32* %170, i32** %9, align 8
  store i32 %168, i32* %169, align 4
  br label %212

171:                                              ; preds = %67
  %172 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %173 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  switch i32 %174, label %194 [
    i32 129, label %175
    i32 128, label %175
  ]

175:                                              ; preds = %171, %171
  %176 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %177 = call i32* @xdr_reserve_space(%struct.xdr_stream* %176, i32 8)
  store i32* %177, i32** %9, align 8
  %178 = load i32*, i32** %9, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %175
  %181 = load i32, i32* @nfserr_resource, align 4
  store i32 %181, i32* %4, align 4
  br label %213

182:                                              ; preds = %175
  %183 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %184 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = call i8* @cpu_to_be32(i32 %185)
  %187 = ptrtoint i8* %186 to i32
  %188 = load i32*, i32** %9, align 8
  %189 = getelementptr inbounds i32, i32* %188, i32 1
  store i32* %189, i32** %9, align 8
  store i32 %187, i32* %188, align 4
  %190 = call i8* @cpu_to_be32(i32 0)
  %191 = ptrtoint i8* %190 to i32
  %192 = load i32*, i32** %9, align 8
  %193 = getelementptr inbounds i32, i32* %192, i32 1
  store i32* %193, i32** %9, align 8
  store i32 %191, i32* %192, align 4
  br label %209

194:                                              ; preds = %171
  %195 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %196 = call i32* @xdr_reserve_space(%struct.xdr_stream* %195, i32 4)
  store i32* %196, i32** %9, align 8
  %197 = load i32*, i32** %9, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %201, label %199

199:                                              ; preds = %194
  %200 = load i32, i32* @nfserr_resource, align 4
  store i32 %200, i32* %4, align 4
  br label %213

201:                                              ; preds = %194
  %202 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %203 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = call i8* @cpu_to_be32(i32 %204)
  %206 = ptrtoint i8* %205 to i32
  %207 = load i32*, i32** %9, align 8
  %208 = getelementptr inbounds i32, i32* %207, i32 1
  store i32* %208, i32** %9, align 8
  store i32 %206, i32* %207, align 4
  br label %209

209:                                              ; preds = %201, %182
  br label %212

210:                                              ; preds = %67
  %211 = call i32 (...) @BUG()
  br label %212

212:                                              ; preds = %210, %209, %136, %95, %78
  store i32 0, i32* %4, align 4
  br label %213

213:                                              ; preds = %212, %199, %180, %134, %127, %93, %86, %65, %58, %25, %18
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local i32 @nfsd4_encode_stateid(%struct.xdr_stream*, i32*) #1

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32* @encode_cinfo(i32*, i32*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @nfsd4_encode_bitmap(%struct.xdr_stream*, i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
