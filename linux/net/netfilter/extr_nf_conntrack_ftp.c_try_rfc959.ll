; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_ftp.c_try_rfc959.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_ftp.c_try_rfc959.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_man = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.nf_conntrack_man*, i8, i32*)* @try_rfc959 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_rfc959(i8* %0, i64 %1, %struct.nf_conntrack_man* %2, i8 signext %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nf_conntrack_man*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [6 x i32], align 16
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.nf_conntrack_man* %2, %struct.nf_conntrack_man** %9, align 8
  store i8 %3, i8* %10, align 1
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %17 = load i8, i8* %10, align 1
  %18 = call i32 @try_number(i8* %14, i64 %15, i32* %16, i32 6, i8 signext 44, i8 signext %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %53

22:                                               ; preds = %5
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %24 = load i32, i32* %23, align 16
  %25 = shl i32 %24, 24
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 16
  %29 = or i32 %25, %28
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 2
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %31, 8
  %33 = or i32 %29, %32
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %33, %35
  %37 = call i32 @htonl(i32 %36)
  %38 = load %struct.nf_conntrack_man*, %struct.nf_conntrack_man** %9, align 8
  %39 = getelementptr inbounds %struct.nf_conntrack_man, %struct.nf_conntrack_man* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 4
  %42 = load i32, i32* %41, align 16
  %43 = shl i32 %42, 8
  %44 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 5
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %43, %45
  %47 = call i32 @htons(i32 %46)
  %48 = load %struct.nf_conntrack_man*, %struct.nf_conntrack_man** %9, align 8
  %49 = getelementptr inbounds %struct.nf_conntrack_man, %struct.nf_conntrack_man* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %22, %21
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @try_number(i8*, i64, i32*, i32, i8 signext, i8 signext) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
