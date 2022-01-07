; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_ftp.c_try_epsv_response.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_ftp.c_try_epsv_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_man = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.nf_conntrack_man*, i8, i32*)* @try_epsv_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_epsv_response(i8* %0, i64 %1, %struct.nf_conntrack_man* %2, i8 signext %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nf_conntrack_man*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32*, align 8
  %12 = alloca i8, align 1
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.nf_conntrack_man* %2, %struct.nf_conntrack_man** %9, align 8
  store i8 %3, i8* %10, align 1
  store i32* %4, i32** %11, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ule i64 %13, 3
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %57

16:                                               ; preds = %5
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %12, align 1
  %20 = load i8, i8* %12, align 1
  %21 = call i64 @isdigit(i8 signext %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %16
  %24 = load i8, i8* %12, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp slt i32 %25, 33
  br i1 %26, label %47, label %27

27:                                               ; preds = %23
  %28 = load i8, i8* %12, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp sgt i32 %29, 126
  br i1 %30, label %47, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = load i8, i8* %12, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %31
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* %12, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39, %31, %27, %23, %16
  store i32 0, i32* %6, align 4
  br label %57

48:                                               ; preds = %39
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i8, i8* %12, align 1
  %52 = load %struct.nf_conntrack_man*, %struct.nf_conntrack_man** %9, align 8
  %53 = getelementptr inbounds %struct.nf_conntrack_man, %struct.nf_conntrack_man* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = call i32 @get_port(i8* %49, i32 3, i64 %50, i8 signext %51, i32* %55)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %48, %47, %15
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @get_port(i8*, i32, i64, i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
