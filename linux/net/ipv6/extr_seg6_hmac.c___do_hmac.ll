; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_hmac.c___do_hmac.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_hmac.c___do_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seg6_hmac_info = type { i32, i32, i32 }
%struct.seg6_hmac_algo = type { i32, i32 }
%struct.crypto_shash = type { i32 }
%struct.shash_desc = type { %struct.crypto_shash* }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"sr-ipv6: __do_hmac: digest size too big (%d / %d)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"sr-ipv6: crypto_shash_setkey failed: err %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"sr-ipv6: crypto_shash_digest failed: err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seg6_hmac_info*, i8*, i32, i32*, i32)* @__do_hmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__do_hmac(%struct.seg6_hmac_info* %0, i8* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.seg6_hmac_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.seg6_hmac_algo*, align 8
  %13 = alloca %struct.crypto_shash*, align 8
  %14 = alloca %struct.shash_desc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.seg6_hmac_info* %0, %struct.seg6_hmac_info** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.seg6_hmac_info*, %struct.seg6_hmac_info** %7, align 8
  %18 = getelementptr inbounds %struct.seg6_hmac_info, %struct.seg6_hmac_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.seg6_hmac_algo* @__hmac_get_algo(i32 %19)
  store %struct.seg6_hmac_algo* %20, %struct.seg6_hmac_algo** %12, align 8
  %21 = load %struct.seg6_hmac_algo*, %struct.seg6_hmac_algo** %12, align 8
  %22 = icmp ne %struct.seg6_hmac_algo* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %82

26:                                               ; preds = %5
  %27 = load %struct.seg6_hmac_algo*, %struct.seg6_hmac_algo** %12, align 8
  %28 = getelementptr inbounds %struct.seg6_hmac_algo, %struct.seg6_hmac_algo* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8** @this_cpu_ptr(i32 %29)
  %31 = load i8*, i8** %30, align 8
  %32 = bitcast i8* %31 to %struct.crypto_shash*
  store %struct.crypto_shash* %32, %struct.crypto_shash** %13, align 8
  %33 = load %struct.crypto_shash*, %struct.crypto_shash** %13, align 8
  %34 = call i32 @crypto_shash_digestsize(%struct.crypto_shash* %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %26
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %82

44:                                               ; preds = %26
  %45 = load %struct.crypto_shash*, %struct.crypto_shash** %13, align 8
  %46 = load %struct.seg6_hmac_info*, %struct.seg6_hmac_info** %7, align 8
  %47 = getelementptr inbounds %struct.seg6_hmac_info, %struct.seg6_hmac_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.seg6_hmac_info*, %struct.seg6_hmac_info** %7, align 8
  %50 = getelementptr inbounds %struct.seg6_hmac_info, %struct.seg6_hmac_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @crypto_shash_setkey(%struct.crypto_shash* %45, i32 %48, i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load i32, i32* %15, align 4
  %57 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %80

58:                                               ; preds = %44
  %59 = load %struct.seg6_hmac_algo*, %struct.seg6_hmac_algo** %12, align 8
  %60 = getelementptr inbounds %struct.seg6_hmac_algo, %struct.seg6_hmac_algo* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8** @this_cpu_ptr(i32 %61)
  %63 = load i8*, i8** %62, align 8
  %64 = bitcast i8* %63 to %struct.shash_desc*
  store %struct.shash_desc* %64, %struct.shash_desc** %14, align 8
  %65 = load %struct.crypto_shash*, %struct.crypto_shash** %13, align 8
  %66 = load %struct.shash_desc*, %struct.shash_desc** %14, align 8
  %67 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %66, i32 0, i32 0
  store %struct.crypto_shash* %65, %struct.crypto_shash** %67, align 8
  %68 = load %struct.shash_desc*, %struct.shash_desc** %14, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @crypto_shash_digest(%struct.shash_desc* %68, i8* %69, i32 %70, i32* %71)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %58
  %76 = load i32, i32* %15, align 4
  %77 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  br label %80

78:                                               ; preds = %58
  %79 = load i32, i32* %16, align 4
  store i32 %79, i32* %6, align 4
  br label %82

80:                                               ; preds = %75, %55
  %81 = load i32, i32* %15, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %80, %78, %38, %23
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local %struct.seg6_hmac_algo* @__hmac_get_algo(i32) #1

declare dso_local i8** @this_cpu_ptr(i32) #1

declare dso_local i32 @crypto_shash_digestsize(%struct.crypto_shash*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @crypto_shash_setkey(%struct.crypto_shash*, i32, i32) #1

declare dso_local i32 @crypto_shash_digest(%struct.shash_desc*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
