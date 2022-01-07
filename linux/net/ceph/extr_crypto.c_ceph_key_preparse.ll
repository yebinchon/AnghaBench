; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_crypto.c_ceph_key_preparse.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_crypto.c_ceph_key_preparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_preparsed_payload = type { i64, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.ceph_crypto_key** }
%struct.ceph_crypto_key = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key_preparsed_payload*)* @ceph_key_preparse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_key_preparse(%struct.key_preparsed_payload* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.key_preparsed_payload*, align 8
  %4 = alloca %struct.ceph_crypto_key*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.key_preparsed_payload* %0, %struct.key_preparsed_payload** %3, align 8
  %8 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %9 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = load i64, i64* %5, align 8
  %14 = icmp ule i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  %17 = icmp ugt i64 %16, 32767
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %20 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %15, %1
  br label %61

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.ceph_crypto_key* @kmalloc(i32 4, i32 %27)
  store %struct.ceph_crypto_key* %28, %struct.ceph_crypto_key** %4, align 8
  %29 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %4, align 8
  %30 = icmp ne %struct.ceph_crypto_key* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %61

32:                                               ; preds = %24
  %33 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %34 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %7, align 8
  %37 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %4, align 8
  %38 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %39 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = call i32 @ceph_crypto_key_decode(%struct.ceph_crypto_key* %37, i8** %7, i8* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  br label %58

48:                                               ; preds = %32
  %49 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %4, align 8
  %50 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %51 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.ceph_crypto_key**, %struct.ceph_crypto_key*** %52, align 8
  %54 = getelementptr inbounds %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %53, i64 0
  store %struct.ceph_crypto_key* %49, %struct.ceph_crypto_key** %54, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %57 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  store i32 0, i32* %2, align 4
  br label %63

58:                                               ; preds = %47
  %59 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %4, align 8
  %60 = call i32 @kfree(%struct.ceph_crypto_key* %59)
  br label %61

61:                                               ; preds = %58, %31, %23
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %48
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.ceph_crypto_key* @kmalloc(i32, i32) #1

declare dso_local i32 @ceph_crypto_key_decode(%struct.ceph_crypto_key*, i8**, i8*) #1

declare dso_local i32 @kfree(%struct.ceph_crypto_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
