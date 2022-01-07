; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_wrap.c_rotate_buf_a_little.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_wrap.c_rotate_buf_a_little.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { i32 }

@LOCAL_BUF_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_buf*, i32)* @rotate_buf_a_little to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rotate_buf_a_little(%struct.xdr_buf* %0, i32 %1) #0 {
  %3 = alloca %struct.xdr_buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xdr_buf* %0, %struct.xdr_buf** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @LOCAL_BUF_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @LOCAL_BUF_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @LOCAL_BUF_LEN, align 4
  %19 = icmp ugt i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @read_bytes_from_xdr_buf(%struct.xdr_buf* %22, i32 0, i8* %13, i32 %23)
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %53, %2
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %4, align 4
  %28 = add i32 %26, %27
  %29 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %30 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %25
  %34 = load i32, i32* @LOCAL_BUF_LEN, align 4
  %35 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %36 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %4, align 4
  %40 = add i32 %38, %39
  %41 = sub i32 %37, %40
  %42 = call i32 @min(i32 %34, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %4, align 4
  %46 = add i32 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @read_bytes_from_xdr_buf(%struct.xdr_buf* %43, i32 %46, i8* %16, i32 %47)
  %49 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @write_bytes_to_xdr_buf(%struct.xdr_buf* %49, i32 %50, i8* %16, i32 %51)
  br label %53

53:                                               ; preds = %33
  %54 = load i32, i32* @LOCAL_BUF_LEN, align 4
  %55 = load i32, i32* %9, align 4
  %56 = add i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %25

57:                                               ; preds = %25
  %58 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %59 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %60 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %4, align 4
  %63 = sub i32 %61, %62
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @write_bytes_to_xdr_buf(%struct.xdr_buf* %58, i32 %63, i8* %13, i32 %64)
  %66 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %66)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @read_bytes_from_xdr_buf(%struct.xdr_buf*, i32, i8*, i32) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @write_bytes_to_xdr_buf(%struct.xdr_buf*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
