; ModuleID = '/home/carl/AnghaBench/linux/net/ife/extr_ife.c___ife_tlv_meta_valid.c'
source_filename = "/home/carl/AnghaBench/linux/net/ife/extr_ife.c___ife_tlv_meta_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meta_tlvhdr = type { i32 }

@NLA_HDRLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @__ife_tlv_meta_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ife_tlv_meta_valid(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.meta_tlvhdr*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 4
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ugt i8* %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.meta_tlvhdr*
  store %struct.meta_tlvhdr* %18, %struct.meta_tlvhdr** %6, align 8
  %19 = load %struct.meta_tlvhdr*, %struct.meta_tlvhdr** %6, align 8
  %20 = getelementptr inbounds %struct.meta_tlvhdr, %struct.meta_tlvhdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ntohs(i32 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @NLA_HDRLEN, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %47

27:                                               ; preds = %16
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @NLA_ALIGN(i64 %28)
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %7, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %47

34:                                               ; preds = %27
  %35 = load i8*, i8** %4, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @NLA_ALIGN(i64 %36)
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8*, i8** %5, align 8
  %41 = icmp ugt i8* %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %47

46:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %45, %33, %26, %15
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @NLA_ALIGN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
