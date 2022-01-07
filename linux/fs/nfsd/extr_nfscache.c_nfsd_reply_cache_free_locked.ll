; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfscache.c_nfsd_reply_cache_free_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfscache.c_nfsd_reply_cache_free_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd_drc_bucket = type { i32 }
%struct.svc_cacherep = type { i64, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.nfsd_net = type { i32, i32, i32 }

@RC_REPLBUFF = common dso_local global i64 0, align 8
@RC_UNUSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsd_drc_bucket*, %struct.svc_cacherep*, %struct.nfsd_net*)* @nfsd_reply_cache_free_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd_reply_cache_free_locked(%struct.nfsd_drc_bucket* %0, %struct.svc_cacherep* %1, %struct.nfsd_net* %2) #0 {
  %4 = alloca %struct.nfsd_drc_bucket*, align 8
  %5 = alloca %struct.svc_cacherep*, align 8
  %6 = alloca %struct.nfsd_net*, align 8
  store %struct.nfsd_drc_bucket* %0, %struct.nfsd_drc_bucket** %4, align 8
  store %struct.svc_cacherep* %1, %struct.svc_cacherep** %5, align 8
  store %struct.nfsd_net* %2, %struct.nfsd_net** %6, align 8
  %7 = load %struct.svc_cacherep*, %struct.svc_cacherep** %5, align 8
  %8 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RC_REPLBUFF, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %3
  %13 = load %struct.svc_cacherep*, %struct.svc_cacherep** %5, align 8
  %14 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = load %struct.svc_cacherep*, %struct.svc_cacherep** %5, align 8
  %20 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.nfsd_net*, %struct.nfsd_net** %6, align 8
  %24 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 %26, %22
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 4
  %29 = load %struct.svc_cacherep*, %struct.svc_cacherep** %5, align 8
  %30 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @kfree(i64 %32)
  br label %34

34:                                               ; preds = %18, %12, %3
  %35 = load %struct.svc_cacherep*, %struct.svc_cacherep** %5, align 8
  %36 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RC_UNUSED, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %34
  %41 = load %struct.svc_cacherep*, %struct.svc_cacherep** %5, align 8
  %42 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %41, i32 0, i32 3
  %43 = load %struct.nfsd_drc_bucket*, %struct.nfsd_drc_bucket** %4, align 8
  %44 = getelementptr inbounds %struct.nfsd_drc_bucket, %struct.nfsd_drc_bucket* %43, i32 0, i32 0
  %45 = call i32 @rb_erase(i32* %42, i32* %44)
  %46 = load %struct.svc_cacherep*, %struct.svc_cacherep** %5, align 8
  %47 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %46, i32 0, i32 2
  %48 = call i32 @list_del(i32* %47)
  %49 = load %struct.nfsd_net*, %struct.nfsd_net** %6, align 8
  %50 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %49, i32 0, i32 2
  %51 = call i32 @atomic_dec(i32* %50)
  %52 = load %struct.nfsd_net*, %struct.nfsd_net** %6, align 8
  %53 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = sub i64 %55, 40
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  br label %58

58:                                               ; preds = %40, %34
  %59 = load %struct.nfsd_net*, %struct.nfsd_net** %6, align 8
  %60 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.svc_cacherep*, %struct.svc_cacherep** %5, align 8
  %63 = call i32 @kmem_cache_free(i32 %61, %struct.svc_cacherep* %62)
  ret void
}

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.svc_cacherep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
