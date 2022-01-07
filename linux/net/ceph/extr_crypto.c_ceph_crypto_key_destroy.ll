; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_crypto.c_ceph_crypto_key_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_crypto.c_ceph_crypto_key_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_crypto_key = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_crypto_key_destroy(%struct.ceph_crypto_key* %0) #0 {
  %2 = alloca %struct.ceph_crypto_key*, align 8
  store %struct.ceph_crypto_key* %0, %struct.ceph_crypto_key** %2, align 8
  %3 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %2, align 8
  %4 = icmp ne %struct.ceph_crypto_key* %3, null
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %2, align 8
  %7 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @kfree(i32* %8)
  %10 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %2, align 8
  %11 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %10, i32 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %2, align 8
  %13 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %5
  %17 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %2, align 8
  %18 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @crypto_free_sync_skcipher(i32* %19)
  %21 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %2, align 8
  %22 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %16, %5
  br label %24

24:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @crypto_free_sync_skcipher(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
