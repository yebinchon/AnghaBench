; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_filenametr_hash.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_filenametr_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashtab = type { i32 }
%struct.filename_trans = type { i64, i64, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hashtab*, i8*)* @filenametr_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @filenametr_hash(%struct.hashtab* %0, i8* %1) #0 {
  %3 = alloca %struct.hashtab*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.filename_trans*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.hashtab* %0, %struct.hashtab** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.filename_trans*
  store %struct.filename_trans* %10, %struct.filename_trans** %5, align 8
  %11 = load %struct.filename_trans*, %struct.filename_trans** %5, align 8
  %12 = getelementptr inbounds %struct.filename_trans, %struct.filename_trans* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.filename_trans*, %struct.filename_trans** %5, align 8
  %15 = getelementptr inbounds %struct.filename_trans, %struct.filename_trans* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = xor i64 %13, %16
  %18 = load %struct.filename_trans*, %struct.filename_trans** %5, align 8
  %19 = getelementptr inbounds %struct.filename_trans, %struct.filename_trans* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = xor i64 %17, %20
  store i64 %21, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %32, %2
  %23 = load %struct.filename_trans*, %struct.filename_trans** %5, align 8
  %24 = getelementptr inbounds %struct.filename_trans, %struct.filename_trans* %23, i32 0, i32 3
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %7, align 4
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %8, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i8, i8* %8, align 1
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @partial_name_hash(i8 zeroext %33, i64 %34)
  store i64 %35, i64* %6, align 8
  br label %22

36:                                               ; preds = %22
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.hashtab*, %struct.hashtab** %3, align 8
  %39 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = and i64 %37, %42
  ret i64 %43
}

declare dso_local i64 @partial_name_hash(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
