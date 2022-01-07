; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_crypto.c_set_secret.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_crypto.c_set_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_crypto_key = type { i32, i32, i32*, i32* }

@ENOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"cbc(aes)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_crypto_key*, i8*)* @set_secret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_secret(%struct.ceph_crypto_key* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_crypto_key*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ceph_crypto_key* %0, %struct.ceph_crypto_key** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %4, align 8
  %9 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %8, i32 0, i32 2
  store i32* null, i32** %9, align 8
  %10 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %4, align 8
  %11 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %10, i32 0, i32 3
  store i32* null, i32** %11, align 8
  %12 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %4, align 8
  %13 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %17 [
    i32 128, label %15
    i32 129, label %16
  ]

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %82

16:                                               ; preds = %2
  br label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %82

20:                                               ; preds = %16
  %21 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %4, align 8
  %22 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %82

28:                                               ; preds = %20
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %4, align 8
  %31 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @GFP_NOIO, align 4
  %34 = call i32* @kmemdup(i8* %29, i32 %32, i32 %33)
  %35 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %4, align 8
  %36 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %4, align 8
  %38 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %28
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %78

44:                                               ; preds = %28
  %45 = call i32 (...) @memalloc_noio_save()
  store i32 %45, i32* %6, align 4
  %46 = call i32* @crypto_alloc_sync_skcipher(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %47 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %4, align 8
  %48 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %47, i32 0, i32 3
  store i32* %46, i32** %48, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @memalloc_noio_restore(i32 %49)
  %51 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %4, align 8
  %52 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = call i64 @IS_ERR(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %44
  %57 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %4, align 8
  %58 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @PTR_ERR(i32* %59)
  store i32 %60, i32* %7, align 4
  %61 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %4, align 8
  %62 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %61, i32 0, i32 3
  store i32* null, i32** %62, align 8
  br label %78

63:                                               ; preds = %44
  %64 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %4, align 8
  %65 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %4, align 8
  %68 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %4, align 8
  %71 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @crypto_sync_skcipher_setkey(i32* %66, i32* %69, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  br label %78

77:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %82

78:                                               ; preds = %76, %56, %41
  %79 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %4, align 8
  %80 = call i32 @ceph_crypto_key_destroy(%struct.ceph_crypto_key* %79)
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %77, %25, %17, %15
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32* @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @memalloc_noio_save(...) #1

declare dso_local i32* @crypto_alloc_sync_skcipher(i8*, i32, i32) #1

declare dso_local i32 @memalloc_noio_restore(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @crypto_sync_skcipher_setkey(i32*, i32*, i32) #1

declare dso_local i32 @ceph_crypto_key_destroy(%struct.ceph_crypto_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
