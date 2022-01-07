; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_nfs4_make_rec_clidname.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_nfs4_make_rec_clidname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }
%struct.xdr_netobj = type { i32*, i32 }

@.str = private unnamed_addr constant [39 x i8] c"NFSD: nfs4_make_rec_clidname for %.*s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@desc = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.xdr_netobj*)* @nfs4_make_rec_clidname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_make_rec_clidname(i8* %0, %struct.xdr_netobj* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.xdr_netobj*, align 8
  %5 = alloca %struct.xdr_netobj, align 8
  %6 = alloca %struct.crypto_shash*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.xdr_netobj* %1, %struct.xdr_netobj** %4, align 8
  %8 = load %struct.xdr_netobj*, %struct.xdr_netobj** %4, align 8
  %9 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.xdr_netobj*, %struct.xdr_netobj** %4, align 8
  %12 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %10, i32* %13)
  %15 = call %struct.crypto_shash* @crypto_alloc_shash(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  store %struct.crypto_shash* %15, %struct.crypto_shash** %6, align 8
  %16 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %17 = call i64 @IS_ERR(%struct.crypto_shash* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %21 = call i32 @PTR_ERR(%struct.crypto_shash* %20)
  store i32 %21, i32* %7, align 4
  br label %70

22:                                               ; preds = %2
  %23 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %24 = call i32 @crypto_shash_digestsize(%struct.crypto_shash* %23)
  %25 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %5, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %5, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32* @kmalloc(i32 %27, i32 %28)
  %30 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %5, i32 0, i32 0
  store i32* %29, i32** %30, align 8
  %31 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %5, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %64

37:                                               ; preds = %22
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @desc, align 8
  %39 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %40 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_5__* %38, %struct.crypto_shash* %39)
  %41 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @desc, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store %struct.crypto_shash* %41, %struct.crypto_shash** %43, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @desc, align 8
  %45 = load %struct.xdr_netobj*, %struct.xdr_netobj** %4, align 8
  %46 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.xdr_netobj*, %struct.xdr_netobj** %4, align 8
  %49 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %5, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @crypto_shash_digest(%struct.TYPE_5__* %44, i32* %47, i32 %50, i32* %52)
  store i32 %53, i32* %7, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @desc, align 8
  %55 = call i32 @shash_desc_zero(%struct.TYPE_5__* %54)
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %37
  br label %64

59:                                               ; preds = %37
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %5, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @md5_to_hex(i8* %60, i32* %62)
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %59, %58, %34
  %65 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %5, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @kfree(i32* %66)
  %68 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %69 = call i32 @crypto_free_shash(%struct.crypto_shash* %68)
  br label %70

70:                                               ; preds = %64, %19
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @dprintk(i8*, i32, i32*) #1

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_digestsize(%struct.crypto_shash*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_5__*, %struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_digest(%struct.TYPE_5__*, i32*, i32, i32*) #1

declare dso_local i32 @shash_desc_zero(%struct.TYPE_5__*) #1

declare dso_local i32 @md5_to_hex(i8*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @crypto_free_shash(%struct.crypto_shash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
