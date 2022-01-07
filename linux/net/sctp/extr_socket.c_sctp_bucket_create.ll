; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_bucket_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_bucket_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_bind_bucket = type { i16, i32, %struct.net*, i32, i64 }
%struct.sctp_bind_hashbucket = type { i32 }
%struct.net = type { i32 }

@sctp_bucket_cachep = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@bind_bucket = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_bind_bucket* (%struct.sctp_bind_hashbucket*, %struct.net*, i16)* @sctp_bucket_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_bind_bucket* @sctp_bucket_create(%struct.sctp_bind_hashbucket* %0, %struct.net* %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.sctp_bind_hashbucket*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.sctp_bind_bucket*, align 8
  store %struct.sctp_bind_hashbucket* %0, %struct.sctp_bind_hashbucket** %4, align 8
  store %struct.net* %1, %struct.net** %5, align 8
  store i16 %2, i16* %6, align 2
  %8 = load i32, i32* @sctp_bucket_cachep, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.sctp_bind_bucket* @kmem_cache_alloc(i32 %8, i32 %9)
  store %struct.sctp_bind_bucket* %10, %struct.sctp_bind_bucket** %7, align 8
  %11 = load %struct.sctp_bind_bucket*, %struct.sctp_bind_bucket** %7, align 8
  %12 = icmp ne %struct.sctp_bind_bucket* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %3
  %14 = load i32, i32* @bind_bucket, align 4
  %15 = call i32 @SCTP_DBG_OBJCNT_INC(i32 %14)
  %16 = load i16, i16* %6, align 2
  %17 = load %struct.sctp_bind_bucket*, %struct.sctp_bind_bucket** %7, align 8
  %18 = getelementptr inbounds %struct.sctp_bind_bucket, %struct.sctp_bind_bucket* %17, i32 0, i32 0
  store i16 %16, i16* %18, align 8
  %19 = load %struct.sctp_bind_bucket*, %struct.sctp_bind_bucket** %7, align 8
  %20 = getelementptr inbounds %struct.sctp_bind_bucket, %struct.sctp_bind_bucket* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load %struct.sctp_bind_bucket*, %struct.sctp_bind_bucket** %7, align 8
  %22 = getelementptr inbounds %struct.sctp_bind_bucket, %struct.sctp_bind_bucket* %21, i32 0, i32 3
  %23 = call i32 @INIT_HLIST_HEAD(i32* %22)
  %24 = load %struct.net*, %struct.net** %5, align 8
  %25 = load %struct.sctp_bind_bucket*, %struct.sctp_bind_bucket** %7, align 8
  %26 = getelementptr inbounds %struct.sctp_bind_bucket, %struct.sctp_bind_bucket* %25, i32 0, i32 2
  store %struct.net* %24, %struct.net** %26, align 8
  %27 = load %struct.sctp_bind_bucket*, %struct.sctp_bind_bucket** %7, align 8
  %28 = getelementptr inbounds %struct.sctp_bind_bucket, %struct.sctp_bind_bucket* %27, i32 0, i32 1
  %29 = load %struct.sctp_bind_hashbucket*, %struct.sctp_bind_hashbucket** %4, align 8
  %30 = getelementptr inbounds %struct.sctp_bind_hashbucket, %struct.sctp_bind_hashbucket* %29, i32 0, i32 0
  %31 = call i32 @hlist_add_head(i32* %28, i32* %30)
  br label %32

32:                                               ; preds = %13, %3
  %33 = load %struct.sctp_bind_bucket*, %struct.sctp_bind_bucket** %7, align 8
  ret %struct.sctp_bind_bucket* %33
}

declare dso_local %struct.sctp_bind_bucket* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @SCTP_DBG_OBJCNT_INC(i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
