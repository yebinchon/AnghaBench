; ModuleID = '/home/carl/AnghaBench/linux/lib/zlib_inflate/extr_inffast.c_get_unaligned16.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zlib_inflate/extr_inffast.c_get_unaligned16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.uu = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i16*)* @get_unaligned16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @get_unaligned16(i16* %0) #0 {
  %2 = alloca i16*, align 8
  %3 = alloca %union.uu, align 8
  %4 = alloca i8*, align 8
  store i16* %0, i16** %2, align 8
  %5 = load i16*, i16** %2, align 8
  %6 = bitcast i16* %5 to i8*
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = bitcast %union.uu* %3 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 %9, i8* %12, align 1
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = bitcast %union.uu* %3 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 %15, i8* %18, align 1
  %19 = bitcast %union.uu* %3 to i16*
  %20 = load i16, i16* %19, align 8
  ret i16 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
