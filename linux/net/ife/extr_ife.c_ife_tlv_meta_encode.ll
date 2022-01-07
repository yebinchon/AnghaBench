; ModuleID = '/home/carl/AnghaBench/linux/net/ife/extr_ife.c_ife_tlv_meta_encode.c'
source_filename = "/home/carl/AnghaBench/linux/net/ife/extr_ife.c_ife_tlv_meta_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NLA_HDRLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ife_tlv_meta_encode(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @nla_total_size(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = load i32, i32* @NLA_HDRLEN, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8* %21, i8** %11, align 8
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 %22, 16
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @NLA_HDRLEN, align 4
  %26 = add nsw i32 %24, %25
  %27 = or i32 %23, %26
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @htonl(i32 %28)
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @NLA_HDRLEN, align 4
  %34 = sub nsw i32 %32, %33
  %35 = call i32 @memset(i8* %31, i32 0, i32 %34)
  %36 = load i8*, i8** %11, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @memcpy(i8* %36, i8* %37, i32 %38)
  %40 = load i32, i32* %10, align 4
  ret i32 %40
}

declare dso_local i32 @nla_total_size(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
