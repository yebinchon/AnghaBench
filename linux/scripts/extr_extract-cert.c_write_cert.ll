; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_extract-cert.c_write_cert.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_extract-cert.c_write_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wb = common dso_local global i64 0, align 8
@cert_dst = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@kbuild_verbose = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Extracted cert: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @write_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_cert(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [200 x i8], align 16
  store i32* %0, i32** %2, align 8
  %4 = load i64, i64* @wb, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @cert_dst, align 4
  %8 = call i64 @BIO_new_file(i32 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %8, i64* @wb, align 8
  %9 = load i64, i64* @wb, align 8
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* @cert_dst, align 4
  %14 = call i32 @ERR(i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %6, %1
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @X509_get_subject_name(i32* %16)
  %18 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %19 = call i32 @X509_NAME_oneline(i32 %17, i8* %18, i32 200)
  %20 = load i64, i64* @wb, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @i2d_X509_bio(i64 %20, i32* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* @cert_dst, align 4
  %27 = call i32 @ERR(i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i64, i64* @kbuild_verbose, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %15
  %31 = load i32, i32* @stderr, align 4
  %32 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %33 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %30, %15
  ret void
}

declare dso_local i64 @BIO_new_file(i32, i8*) #1

declare dso_local i32 @ERR(i32, i8*, i32) #1

declare dso_local i32 @X509_NAME_oneline(i32, i8*, i32) #1

declare dso_local i32 @X509_get_subject_name(i32*) #1

declare dso_local i32 @i2d_X509_bio(i64, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
