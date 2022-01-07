; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfscache.c_nfsd_cache_update.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfscache.c_nfsd_cache_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, %struct.TYPE_3__, %struct.svc_cacherep* }
%struct.TYPE_3__ = type { %struct.kvec* }
%struct.kvec = type { i32, i64 }
%struct.svc_cacherep = type { i32, i32, i32, %struct.kvec, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nfsd_net = type { i64, %struct.nfsd_drc_bucket* }
%struct.nfsd_drc_bucket = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"nfsd: RC_REPLSTAT/reply len %d!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@RQ_SECURE = common dso_local global i32 0, align 4
@RC_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd_cache_update(%struct.svc_rqst* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfsd_net*, align 8
  %8 = alloca %struct.svc_cacherep*, align 8
  %9 = alloca %struct.kvec*, align 8
  %10 = alloca %struct.kvec*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.nfsd_drc_bucket*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %16 = call i32 @SVC_NET(%struct.svc_rqst* %15)
  %17 = load i32, i32* @nfsd_net_id, align 4
  %18 = call %struct.nfsd_net* @net_generic(i32 %16, i32 %17)
  store %struct.nfsd_net* %18, %struct.nfsd_net** %7, align 8
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %20 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %19, i32 0, i32 2
  %21 = load %struct.svc_cacherep*, %struct.svc_cacherep** %20, align 8
  store %struct.svc_cacherep* %21, %struct.svc_cacherep** %8, align 8
  %22 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %23 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.kvec*, %struct.kvec** %24, align 8
  %26 = getelementptr inbounds %struct.kvec, %struct.kvec* %25, i64 0
  store %struct.kvec* %26, %struct.kvec** %9, align 8
  store i64 0, i64* %14, align 8
  %27 = load %struct.svc_cacherep*, %struct.svc_cacherep** %8, align 8
  %28 = icmp ne %struct.svc_cacherep* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  br label %145

30:                                               ; preds = %3
  %31 = load %struct.svc_cacherep*, %struct.svc_cacherep** %8, align 8
  %32 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %36 = call i64 @nfsd_cache_hash(i32 %34, %struct.nfsd_net* %35)
  store i64 %36, i64* %11, align 8
  %37 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %38 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %37, i32 0, i32 1
  %39 = load %struct.nfsd_drc_bucket*, %struct.nfsd_drc_bucket** %38, align 8
  %40 = load i64, i64* %11, align 8
  %41 = getelementptr inbounds %struct.nfsd_drc_bucket, %struct.nfsd_drc_bucket* %39, i64 %40
  store %struct.nfsd_drc_bucket* %41, %struct.nfsd_drc_bucket** %12, align 8
  %42 = load %struct.kvec*, %struct.kvec** %9, align 8
  %43 = getelementptr inbounds %struct.kvec, %struct.kvec* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = load i32*, i32** %6, align 8
  %47 = bitcast i32* %46 to i8*
  %48 = load %struct.kvec*, %struct.kvec** %9, align 8
  %49 = getelementptr inbounds %struct.kvec, %struct.kvec* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = ptrtoint i8* %47 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sub nsw i64 %45, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = ashr i32 %57, 2
  store i32 %58, i32* %13, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %30
  %62 = load i32, i32* %13, align 4
  %63 = icmp sgt i32 %62, 64
  br i1 %63, label %64, label %69

64:                                               ; preds = %61, %30
  %65 = load %struct.nfsd_drc_bucket*, %struct.nfsd_drc_bucket** %12, align 8
  %66 = load %struct.svc_cacherep*, %struct.svc_cacherep** %8, align 8
  %67 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %68 = call i32 @nfsd_reply_cache_free(%struct.nfsd_drc_bucket* %65, %struct.svc_cacherep* %66, %struct.nfsd_net* %67)
  br label %145

69:                                               ; preds = %61
  %70 = load i32, i32* %5, align 4
  switch i32 %70, label %118 [
    i32 128, label %71
    i32 129, label %82
    i32 130, label %113
  ]

71:                                               ; preds = %69
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.svc_cacherep*, %struct.svc_cacherep** %8, align 8
  %81 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  br label %118

82:                                               ; preds = %69
  %83 = load %struct.svc_cacherep*, %struct.svc_cacherep** %8, align 8
  %84 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %83, i32 0, i32 3
  store %struct.kvec* %84, %struct.kvec** %10, align 8
  %85 = load i32, i32* %13, align 4
  %86 = shl i32 %85, 2
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %14, align 8
  %88 = load i64, i64* %14, align 8
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call i64 @kmalloc(i64 %88, i32 %89)
  %91 = load %struct.kvec*, %struct.kvec** %10, align 8
  %92 = getelementptr inbounds %struct.kvec, %struct.kvec* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load %struct.kvec*, %struct.kvec** %10, align 8
  %94 = getelementptr inbounds %struct.kvec, %struct.kvec* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %82
  %98 = load %struct.nfsd_drc_bucket*, %struct.nfsd_drc_bucket** %12, align 8
  %99 = load %struct.svc_cacherep*, %struct.svc_cacherep** %8, align 8
  %100 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %101 = call i32 @nfsd_reply_cache_free(%struct.nfsd_drc_bucket* %98, %struct.svc_cacherep* %99, %struct.nfsd_net* %100)
  br label %145

102:                                              ; preds = %82
  %103 = load i64, i64* %14, align 8
  %104 = trunc i64 %103 to i32
  %105 = load %struct.kvec*, %struct.kvec** %10, align 8
  %106 = getelementptr inbounds %struct.kvec, %struct.kvec* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.kvec*, %struct.kvec** %10, align 8
  %108 = getelementptr inbounds %struct.kvec, %struct.kvec* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = load i64, i64* %14, align 8
  %112 = call i32 @memcpy(i64 %109, i32* %110, i64 %111)
  br label %118

113:                                              ; preds = %69
  %114 = load %struct.nfsd_drc_bucket*, %struct.nfsd_drc_bucket** %12, align 8
  %115 = load %struct.svc_cacherep*, %struct.svc_cacherep** %8, align 8
  %116 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %117 = call i32 @nfsd_reply_cache_free(%struct.nfsd_drc_bucket* %114, %struct.svc_cacherep* %115, %struct.nfsd_net* %116)
  br label %145

118:                                              ; preds = %69, %102, %77
  %119 = load %struct.nfsd_drc_bucket*, %struct.nfsd_drc_bucket** %12, align 8
  %120 = getelementptr inbounds %struct.nfsd_drc_bucket, %struct.nfsd_drc_bucket* %119, i32 0, i32 0
  %121 = call i32 @spin_lock(i32* %120)
  %122 = load i64, i64* %14, align 8
  %123 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %124 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add i64 %125, %122
  store i64 %126, i64* %124, align 8
  %127 = load %struct.nfsd_drc_bucket*, %struct.nfsd_drc_bucket** %12, align 8
  %128 = load %struct.svc_cacherep*, %struct.svc_cacherep** %8, align 8
  %129 = call i32 @lru_put_end(%struct.nfsd_drc_bucket* %127, %struct.svc_cacherep* %128)
  %130 = load i32, i32* @RQ_SECURE, align 4
  %131 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %132 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %131, i32 0, i32 0
  %133 = call i32 @test_bit(i32 %130, i32* %132)
  %134 = load %struct.svc_cacherep*, %struct.svc_cacherep** %8, align 8
  %135 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.svc_cacherep*, %struct.svc_cacherep** %8, align 8
  %138 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* @RC_DONE, align 4
  %140 = load %struct.svc_cacherep*, %struct.svc_cacherep** %8, align 8
  %141 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load %struct.nfsd_drc_bucket*, %struct.nfsd_drc_bucket** %12, align 8
  %143 = getelementptr inbounds %struct.nfsd_drc_bucket, %struct.nfsd_drc_bucket* %142, i32 0, i32 0
  %144 = call i32 @spin_unlock(i32* %143)
  br label %145

145:                                              ; preds = %118, %113, %97, %64, %29
  ret void
}

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i64 @nfsd_cache_hash(i32, %struct.nfsd_net*) #1

declare dso_local i32 @nfsd_reply_cache_free(%struct.nfsd_drc_bucket*, %struct.svc_cacherep*, %struct.nfsd_net*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i64 @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @lru_put_end(%struct.nfsd_drc_bucket*, %struct.svc_cacherep*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
