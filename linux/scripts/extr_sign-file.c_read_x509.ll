; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_sign-file.c_read_x509.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_sign-file.c_read_x509.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: Read wanted retry\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%s: Short read\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @read_x509 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_x509(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [2 x i8], align 1
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32* @BIO_new_file(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @ERR(i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %17 = call i32 @BIO_read(i32* %15, i8* %16, i32 2)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %40

20:                                               ; preds = %1
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @BIO_should_retry(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* @stderr, align 4
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %28 = call i32 @exit(i32 1) #3
  unreachable

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* @stderr, align 4
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %34)
  %36 = call i32 @exit(i32 1) #3
  unreachable

37:                                               ; preds = %29
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 @ERR(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %37, %1
  %41 = load i32*, i32** %5, align 8
  %42 = call i64 @BIO_reset(i32* %41)
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load i8*, i8** %2, align 8
  %46 = call i32 @ERR(i32 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %47 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 48
  br i1 %50, label %51, label %64

51:                                               ; preds = %40
  %52 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp sge i32 %54, 129
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp sle i32 %59, 132
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32*, i32** %5, align 8
  %63 = call i32* @d2i_X509_bio(i32* %62, i32* null)
  store i32* %63, i32** %4, align 8
  br label %67

64:                                               ; preds = %56, %51, %40
  %65 = load i32*, i32** %5, align 8
  %66 = call i32* @PEM_read_bio_X509(i32* %65, i32* null, i32* null, i32* null)
  store i32* %66, i32** %4, align 8
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @BIO_free(i32* %68)
  %70 = load i32*, i32** %4, align 8
  %71 = icmp ne i32* %70, null
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = load i8*, i8** %2, align 8
  %75 = call i32 @ERR(i32 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  %76 = load i32*, i32** %4, align 8
  ret i32* %76
}

declare dso_local i32* @BIO_new_file(i8*, i8*) #1

declare dso_local i32 @ERR(i32, i8*, i8*) #1

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i64 @BIO_should_retry(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @BIO_reset(i32*) #1

declare dso_local i32* @d2i_X509_bio(i32*, i32*) #1

declare dso_local i32* @PEM_read_bio_X509(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
