; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_wrap.c_gss_krb5_add_padding.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_wrap.c_gss_krb5_add_padding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { i64, %struct.kvec*, %struct.kvec*, i64 }
%struct.kvec = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_buf*, i32, i32)* @gss_krb5_add_padding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gss_krb5_add_padding(%struct.xdr_buf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xdr_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.kvec*, align 8
  store %struct.xdr_buf* %0, %struct.xdr_buf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %12 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = sub nsw i64 %13, %15
  %17 = call i32 @gss_krb5_padding(i32 %10, i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %19 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %3
  %23 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %24 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %23, i32 0, i32 2
  %25 = load %struct.kvec*, %struct.kvec** %24, align 8
  %26 = getelementptr inbounds %struct.kvec, %struct.kvec* %25, i64 0
  %27 = getelementptr inbounds %struct.kvec, %struct.kvec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22, %3
  %31 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %32 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %31, i32 0, i32 2
  %33 = load %struct.kvec*, %struct.kvec** %32, align 8
  %34 = getelementptr inbounds %struct.kvec, %struct.kvec* %33, i64 0
  store %struct.kvec* %34, %struct.kvec** %9, align 8
  br label %40

35:                                               ; preds = %22
  %36 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %37 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %36, i32 0, i32 1
  %38 = load %struct.kvec*, %struct.kvec** %37, align 8
  %39 = getelementptr inbounds %struct.kvec, %struct.kvec* %38, i64 0
  store %struct.kvec* %39, %struct.kvec** %9, align 8
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.kvec*, %struct.kvec** %9, align 8
  %42 = getelementptr inbounds %struct.kvec, %struct.kvec* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.kvec*, %struct.kvec** %9, align 8
  %45 = getelementptr inbounds %struct.kvec, %struct.kvec* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %43, i64 %47
  store i8* %48, i8** %8, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.kvec*, %struct.kvec** %9, align 8
  %51 = getelementptr inbounds %struct.kvec, %struct.kvec* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %57 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, %55
  store i64 %59, i64* %57, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @memset(i8* %60, i32 %61, i32 %62)
  ret void
}

declare dso_local i32 @gss_krb5_padding(i32, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
