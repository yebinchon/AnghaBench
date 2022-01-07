; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_nfsd4_cld_create_v2.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_nfsd4_cld_create_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }
%struct.nfs4_client = type { i32, %struct.TYPE_15__, %struct.TYPE_14__, i32 }
%struct.TYPE_15__ = type { i8*, i8* }
%struct.TYPE_14__ = type { i64, i32* }
%struct.cld_upcall = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.cld_msg_v2 }
%struct.cld_msg_v2 = type { i32, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.nfsd_net = type { %struct.cld_net* }
%struct.cld_net = type { i32, %struct.crypto_shash* }
%struct.xdr_netobj = type { i32*, i64 }

@nfsd_net_id = common dso_local global i32 0, align 4
@desc = common dso_local global %struct.TYPE_19__* null, align 8
@NFSD4_CLIENT_STABLE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@Cld_Create = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"NFSD: Unable to create client record on stable storage: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_client*)* @nfsd4_cld_create_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd4_cld_create_v2(%struct.nfs4_client* %0) #0 {
  %2 = alloca %struct.nfs4_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cld_upcall*, align 8
  %5 = alloca %struct.nfsd_net*, align 8
  %6 = alloca %struct.cld_net*, align 8
  %7 = alloca %struct.cld_msg_v2*, align 8
  %8 = alloca %struct.crypto_shash*, align 8
  %9 = alloca %struct.xdr_netobj, align 8
  %10 = alloca i8*, align 8
  store %struct.nfs4_client* %0, %struct.nfs4_client** %2, align 8
  %11 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %12 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @nfsd_net_id, align 4
  %15 = call %struct.nfsd_net* @net_generic(i32 %13, i32 %14)
  store %struct.nfsd_net* %15, %struct.nfsd_net** %5, align 8
  %16 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %17 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %16, i32 0, i32 0
  %18 = load %struct.cld_net*, %struct.cld_net** %17, align 8
  store %struct.cld_net* %18, %struct.cld_net** %6, align 8
  %19 = load %struct.cld_net*, %struct.cld_net** %6, align 8
  %20 = getelementptr inbounds %struct.cld_net, %struct.cld_net* %19, i32 0, i32 1
  %21 = load %struct.crypto_shash*, %struct.crypto_shash** %20, align 8
  store %struct.crypto_shash* %21, %struct.crypto_shash** %8, align 8
  store i8* null, i8** %10, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** @desc, align 8
  %23 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %24 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_19__* %22, %struct.crypto_shash* %23)
  %25 = load i32, i32* @NFSD4_CLIENT_STABLE, align 4
  %26 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %27 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %26, i32 0, i32 0
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %183

31:                                               ; preds = %1
  %32 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %33 = call %struct.cld_upcall* @alloc_cld_upcall(%struct.nfsd_net* %32)
  store %struct.cld_upcall* %33, %struct.cld_upcall** %4, align 8
  %34 = load %struct.cld_upcall*, %struct.cld_upcall** %4, align 8
  %35 = icmp ne %struct.cld_upcall* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %177

39:                                               ; preds = %31
  %40 = load %struct.cld_upcall*, %struct.cld_upcall** %4, align 8
  %41 = getelementptr inbounds %struct.cld_upcall, %struct.cld_upcall* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  store %struct.cld_msg_v2* %42, %struct.cld_msg_v2** %7, align 8
  %43 = load i32, i32* @Cld_Create, align 4
  %44 = load %struct.cld_msg_v2*, %struct.cld_msg_v2** %7, align 8
  %45 = getelementptr inbounds %struct.cld_msg_v2, %struct.cld_msg_v2* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %47 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.cld_msg_v2*, %struct.cld_msg_v2** %7, align 8
  %51 = getelementptr inbounds %struct.cld_msg_v2, %struct.cld_msg_v2* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  store i64 %49, i64* %54, align 8
  %55 = load %struct.cld_msg_v2*, %struct.cld_msg_v2** %7, align 8
  %56 = getelementptr inbounds %struct.cld_msg_v2, %struct.cld_msg_v2* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %62 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %66 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @memcpy(i32 %60, i32* %64, i64 %68)
  %70 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %71 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %39
  %76 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %77 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %10, align 8
  br label %92

80:                                               ; preds = %39
  %81 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %82 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %88 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %10, align 8
  br label %91

91:                                               ; preds = %86, %80
  br label %92

92:                                               ; preds = %91, %75
  %93 = load i8*, i8** %10, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %151

95:                                               ; preds = %92
  %96 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** @desc, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  store %struct.crypto_shash* %96, %struct.crypto_shash** %98, align 8
  %99 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %100 = call i64 @crypto_shash_digestsize(%struct.crypto_shash* %99)
  %101 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %9, i32 0, i32 1
  store i64 %100, i64* %101, align 8
  %102 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %9, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call i32* @kmalloc(i64 %103, i32 %104)
  %106 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %9, i32 0, i32 0
  store i32* %105, i32** %106, align 8
  %107 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %9, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %95
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %174

113:                                              ; preds = %95
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** @desc, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = call i32 @strlen(i8* %116)
  %118 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %9, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @crypto_shash_digest(%struct.TYPE_19__* %114, i8* %115, i32 %117, i32* %119)
  store i32 %120, i32* %3, align 4
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** @desc, align 8
  %122 = call i32 @shash_desc_zero(%struct.TYPE_19__* %121)
  %123 = load i32, i32* %3, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %113
  %126 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %9, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @kfree(i32* %127)
  br label %174

129:                                              ; preds = %113
  %130 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %9, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.cld_msg_v2*, %struct.cld_msg_v2** %7, align 8
  %133 = getelementptr inbounds %struct.cld_msg_v2, %struct.cld_msg_v2* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  store i64 %131, i64* %136, align 8
  %137 = load %struct.cld_msg_v2*, %struct.cld_msg_v2** %7, align 8
  %138 = getelementptr inbounds %struct.cld_msg_v2, %struct.cld_msg_v2* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %9, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %9, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @memcpy(i32 %142, i32* %144, i64 %146)
  %148 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %9, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @kfree(i32* %149)
  br label %157

151:                                              ; preds = %92
  %152 = load %struct.cld_msg_v2*, %struct.cld_msg_v2** %7, align 8
  %153 = getelementptr inbounds %struct.cld_msg_v2, %struct.cld_msg_v2* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  store i64 0, i64* %156, align 8
  br label %157

157:                                              ; preds = %151, %129
  %158 = load %struct.cld_net*, %struct.cld_net** %6, align 8
  %159 = getelementptr inbounds %struct.cld_net, %struct.cld_net* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.cld_msg_v2*, %struct.cld_msg_v2** %7, align 8
  %162 = call i32 @cld_pipe_upcall(i32 %160, %struct.cld_msg_v2* %161)
  store i32 %162, i32* %3, align 4
  %163 = load i32, i32* %3, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %173, label %165

165:                                              ; preds = %157
  %166 = load %struct.cld_msg_v2*, %struct.cld_msg_v2** %7, align 8
  %167 = getelementptr inbounds %struct.cld_msg_v2, %struct.cld_msg_v2* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %3, align 4
  %169 = load i32, i32* @NFSD4_CLIENT_STABLE, align 4
  %170 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %171 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %170, i32 0, i32 0
  %172 = call i32 @set_bit(i32 %169, i32* %171)
  br label %173

173:                                              ; preds = %165, %157
  br label %174

174:                                              ; preds = %173, %125, %110
  %175 = load %struct.cld_upcall*, %struct.cld_upcall** %4, align 8
  %176 = call i32 @free_cld_upcall(%struct.cld_upcall* %175)
  br label %177

177:                                              ; preds = %174, %36
  %178 = load i32, i32* %3, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i32, i32* %3, align 4
  %182 = call i32 @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %30, %180, %177
  ret void
}

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_19__*, %struct.crypto_shash*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.cld_upcall* @alloc_cld_upcall(%struct.nfsd_net*) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i64 @crypto_shash_digestsize(%struct.crypto_shash*) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @crypto_shash_digest(%struct.TYPE_19__*, i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @shash_desc_zero(%struct.TYPE_19__*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @cld_pipe_upcall(i32, %struct.cld_msg_v2*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @free_cld_upcall(%struct.cld_upcall*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
