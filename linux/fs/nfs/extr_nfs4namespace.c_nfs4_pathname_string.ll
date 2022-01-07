; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4namespace.c_nfs4_pathname_string.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4namespace.c_nfs4_pathname_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_pathname = type { i32, %struct.nfs4_string* }
%struct.nfs4_string = type { i32, i32 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.nfs4_pathname*, i8*, i32)* @nfs4_pathname_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nfs4_pathname_string(%struct.nfs4_pathname* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfs4_pathname*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs4_string*, align 8
  store %struct.nfs4_pathname* %0, %struct.nfs4_pathname** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %16, i8** %8, align 8
  store i8 0, i8* %16, align 1
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %7, align 4
  %19 = load %struct.nfs4_pathname*, %struct.nfs4_pathname** %5, align 8
  %20 = getelementptr inbounds %struct.nfs4_pathname, %struct.nfs4_pathname* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %42, %3
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %9, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %22
  %27 = load %struct.nfs4_pathname*, %struct.nfs4_pathname** %5, align 8
  %28 = getelementptr inbounds %struct.nfs4_pathname, %struct.nfs4_pathname* %27, i32 0, i32 1
  %29 = load %struct.nfs4_string*, %struct.nfs4_string** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %29, i64 %31
  store %struct.nfs4_string* %32, %struct.nfs4_string** %10, align 8
  %33 = load %struct.nfs4_string*, %struct.nfs4_string** %10, align 8
  %34 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  br label %62

42:                                               ; preds = %26
  %43 = load %struct.nfs4_string*, %struct.nfs4_string** %10, align 8
  %44 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = sext i32 %45 to i64
  %48 = sub i64 0, %47
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8* %49, i8** %8, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.nfs4_string*, %struct.nfs4_string** %10, align 8
  %52 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nfs4_string*, %struct.nfs4_string** %10, align 8
  %55 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @memcpy(i8* %50, i32 %53, i32 %56)
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 -1
  store i8* %59, i8** %8, align 8
  store i8 47, i8* %59, align 1
  br label %22

60:                                               ; preds = %22
  %61 = load i8*, i8** %8, align 8
  store i8* %61, i8** %4, align 8
  br label %66

62:                                               ; preds = %41
  %63 = load i32, i32* @ENAMETOOLONG, align 4
  %64 = sub nsw i32 0, %63
  %65 = call i8* @ERR_PTR(i32 %64)
  store i8* %65, i8** %4, align 8
  br label %66

66:                                               ; preds = %62, %60
  %67 = load i8*, i8** %4, align 8
  ret i8* %67
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
