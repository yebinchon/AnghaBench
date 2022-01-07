; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_crypto.c_ceph_crypto_key_unarmor.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_crypto.c_ceph_crypto_key_unarmor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_crypto_key = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"crypto_key_unarmor %s\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"crypto_key_unarmor key %p type %d len %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_crypto_key_unarmor(%struct.ceph_crypto_key* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_crypto_key*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.ceph_crypto_key* %0, %struct.ceph_crypto_key** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = mul nsw i32 %13, 3
  %15 = sdiv i32 %14, 4
  store i32 %15, i32* %7, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @GFP_NOFS, align 4
  %20 = call i8* @kmalloc(i32 %18, i32 %19)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %63

26:                                               ; preds = %2
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = call i32 @ceph_unarmor(i8* %27, i8* %28, i8* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @kfree(i8* %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %63

40:                                               ; preds = %26
  %41 = load i8*, i8** %8, align 8
  store i8* %41, i8** %9, align 8
  %42 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %4, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr i8, i8* %43, i64 %45
  %47 = call i32 @ceph_crypto_key_decode(%struct.ceph_crypto_key* %42, i8** %9, i8* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @kfree(i8* %48)
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %3, align 4
  br label %63

54:                                               ; preds = %40
  %55 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %4, align 8
  %56 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %4, align 8
  %57 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %4, align 8
  %60 = getelementptr inbounds %struct.ceph_crypto_key, %struct.ceph_crypto_key* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), %struct.ceph_crypto_key* %55, i32 %58, i32 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %54, %52, %36, %23
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dout(i8*, ...) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @ceph_unarmor(i8*, i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @ceph_crypto_key_decode(%struct.ceph_crypto_key*, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
