; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_mkname.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_mkname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i64, i64* }

@EINVAL = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_un*, i32, i32*)* @unix_mkname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unix_mkname(%struct.sockaddr_un* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_un*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.sockaddr_un* %0, %struct.sockaddr_un** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ule i64 %10, 2
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ugt i64 %14, 16
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %60

19:                                               ; preds = %12
  %20 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %21 = icmp ne %struct.sockaddr_un* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %24 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AF_UNIX, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %19
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %60

31:                                               ; preds = %22
  %32 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %33 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %40 = bitcast %struct.sockaddr_un* %39 to i8*
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 0, i8* %43, align 1
  %44 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %45 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = call i32 @strlen(i64* %46)
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = add i64 %49, 2
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %4, align 4
  br label %60

53:                                               ; preds = %31
  %54 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @csum_partial(%struct.sockaddr_un* %54, i32 %55, i32 0)
  %57 = call i32 @unix_hash_fold(i32 %56)
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %53, %38, %28, %16
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @strlen(i64*) #1

declare dso_local i32 @unix_hash_fold(i32) #1

declare dso_local i32 @csum_partial(%struct.sockaddr_un*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
