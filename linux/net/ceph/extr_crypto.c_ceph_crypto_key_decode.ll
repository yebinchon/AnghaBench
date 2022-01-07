; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_crypto.c_ceph_crypto_key_decode.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_crypto.c_ceph_crypto_key_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_crypto_key = type { i32, i32, i8* }

@bad = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to decode crypto key\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_crypto_key_decode(%struct.ceph_crypto_key* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ceph_crypto_key*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.ceph_crypto_key* %0, %struct.ceph_crypto_key** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8**, i8*** %6, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = load i32, i32* @bad, align 4
  %12 = call i32 @ceph_decode_need(i8** %9, i8* %10, i32 12, i32 %11)
  %13 = load i8**, i8*** %6, align 8
  %14 = call i8* @ceph_decode_16(i8** %13)
  %15 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %5, align 8
  %16 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load i8**, i8*** %6, align 8
  %18 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %5, align 8
  %19 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %18, i32 0, i32 1
  %20 = call i32 @ceph_decode_copy(i8** %17, i32* %19, i32 4)
  %21 = load i8**, i8*** %6, align 8
  %22 = call i8* @ceph_decode_16(i8** %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %5, align 8
  %25 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i8**, i8*** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %5, align 8
  %29 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @bad, align 4
  %32 = call i32 @ceph_decode_need(i8** %26, i8* %27, i32 %30, i32 %31)
  %33 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %5, align 8
  %34 = load i8**, i8*** %6, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @set_secret(%struct.ceph_crypto_key* %33, i8* %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %5, align 8
  %38 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i8**, i8*** %6, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = sext i32 %39 to i64
  %43 = getelementptr i8, i8* %41, i64 %42
  store i8* %43, i8** %40, align 8
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %49

45:                                               ; No predecessors!
  %46 = call i32 @dout(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %3
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local i8* @ceph_decode_16(i8**) #1

declare dso_local i32 @ceph_decode_copy(i8**, i32*, i32) #1

declare dso_local i32 @set_secret(%struct.ceph_crypto_key*, i8*) #1

declare dso_local i32 @dout(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
