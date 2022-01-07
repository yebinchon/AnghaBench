; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_hashtables.c_inet_bind_bucket_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_hashtables.c_inet_bind_bucket_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_bind_bucket = type { i32, i16, i32, i32, i64, i64, i32 }
%struct.kmem_cache = type { i32 }
%struct.net = type { i32 }
%struct.inet_bind_hashbucket = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inet_bind_bucket* @inet_bind_bucket_create(%struct.kmem_cache* %0, %struct.net* %1, %struct.inet_bind_hashbucket* %2, i16 zeroext %3, i32 %4) #0 {
  %6 = alloca %struct.kmem_cache*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.inet_bind_hashbucket*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca %struct.inet_bind_bucket*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %6, align 8
  store %struct.net* %1, %struct.net** %7, align 8
  store %struct.inet_bind_hashbucket* %2, %struct.inet_bind_hashbucket** %8, align 8
  store i16 %3, i16* %9, align 2
  store i32 %4, i32* %10, align 4
  %12 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.inet_bind_bucket* @kmem_cache_alloc(%struct.kmem_cache* %12, i32 %13)
  store %struct.inet_bind_bucket* %14, %struct.inet_bind_bucket** %11, align 8
  %15 = load %struct.inet_bind_bucket*, %struct.inet_bind_bucket** %11, align 8
  %16 = icmp ne %struct.inet_bind_bucket* %15, null
  br i1 %16, label %17, label %40

17:                                               ; preds = %5
  %18 = load %struct.inet_bind_bucket*, %struct.inet_bind_bucket** %11, align 8
  %19 = getelementptr inbounds %struct.inet_bind_bucket, %struct.inet_bind_bucket* %18, i32 0, i32 6
  %20 = load %struct.net*, %struct.net** %7, align 8
  %21 = call i32 @write_pnet(i32* %19, %struct.net* %20)
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.inet_bind_bucket*, %struct.inet_bind_bucket** %11, align 8
  %24 = getelementptr inbounds %struct.inet_bind_bucket, %struct.inet_bind_bucket* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i16, i16* %9, align 2
  %26 = load %struct.inet_bind_bucket*, %struct.inet_bind_bucket** %11, align 8
  %27 = getelementptr inbounds %struct.inet_bind_bucket, %struct.inet_bind_bucket* %26, i32 0, i32 1
  store i16 %25, i16* %27, align 4
  %28 = load %struct.inet_bind_bucket*, %struct.inet_bind_bucket** %11, align 8
  %29 = getelementptr inbounds %struct.inet_bind_bucket, %struct.inet_bind_bucket* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = load %struct.inet_bind_bucket*, %struct.inet_bind_bucket** %11, align 8
  %31 = getelementptr inbounds %struct.inet_bind_bucket, %struct.inet_bind_bucket* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.inet_bind_bucket*, %struct.inet_bind_bucket** %11, align 8
  %33 = getelementptr inbounds %struct.inet_bind_bucket, %struct.inet_bind_bucket* %32, i32 0, i32 3
  %34 = call i32 @INIT_HLIST_HEAD(i32* %33)
  %35 = load %struct.inet_bind_bucket*, %struct.inet_bind_bucket** %11, align 8
  %36 = getelementptr inbounds %struct.inet_bind_bucket, %struct.inet_bind_bucket* %35, i32 0, i32 2
  %37 = load %struct.inet_bind_hashbucket*, %struct.inet_bind_hashbucket** %8, align 8
  %38 = getelementptr inbounds %struct.inet_bind_hashbucket, %struct.inet_bind_hashbucket* %37, i32 0, i32 0
  %39 = call i32 @hlist_add_head(i32* %36, i32* %38)
  br label %40

40:                                               ; preds = %17, %5
  %41 = load %struct.inet_bind_bucket*, %struct.inet_bind_bucket** %11, align 8
  ret %struct.inet_bind_bucket* %41
}

declare dso_local %struct.inet_bind_bucket* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

declare dso_local i32 @write_pnet(i32*, %struct.net*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
