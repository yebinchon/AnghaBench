; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_crypto.c_ceph_crypto_key_encode.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_crypto.c_ceph_crypto_key_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_crypto_key = type { i32, i32, i32*, i32 }

@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_crypto_key_encode(%struct.ceph_crypto_key* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ceph_crypto_key*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store %struct.ceph_crypto_key* %0, %struct.ceph_crypto_key** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8**, i8*** %6, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr i8, i8* %9, i64 4
  %11 = getelementptr i8, i8* %10, i64 4
  %12 = getelementptr i8, i8* %11, i64 4
  %13 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %5, align 8
  %14 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr i8, i8* %12, i64 %16
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ugt i8* %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @ERANGE, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %46

23:                                               ; preds = %3
  %24 = load i8**, i8*** %6, align 8
  %25 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %5, align 8
  %26 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ceph_encode_16(i8** %24, i32 %27)
  %29 = load i8**, i8*** %6, align 8
  %30 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %5, align 8
  %31 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %30, i32 0, i32 3
  %32 = call i32 @ceph_encode_copy(i8** %29, i32* %31, i32 4)
  %33 = load i8**, i8*** %6, align 8
  %34 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %5, align 8
  %35 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ceph_encode_16(i8** %33, i32 %36)
  %38 = load i8**, i8*** %6, align 8
  %39 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %5, align 8
  %40 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %5, align 8
  %43 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ceph_encode_copy(i8** %38, i32* %41, i32 %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %23, %20
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @ceph_encode_16(i8**, i32) #1

declare dso_local i32 @ceph_encode_copy(i8**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
