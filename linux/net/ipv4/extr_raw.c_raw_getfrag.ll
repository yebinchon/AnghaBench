; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_raw.c_raw_getfrag.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_raw.c_raw_getfrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.raw_frag_vec = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* @raw_getfrag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_getfrag(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.sk_buff* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.raw_frag_vec*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.sk_buff* %5, %struct.sk_buff** %13, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.raw_frag_vec*
  store %struct.raw_frag_vec* %17, %struct.raw_frag_vec** %14, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.raw_frag_vec*, %struct.raw_frag_vec** %14, align 8
  %20 = getelementptr inbounds %struct.raw_frag_vec, %struct.raw_frag_vec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %80

23:                                               ; preds = %6
  %24 = load %struct.raw_frag_vec*, %struct.raw_frag_vec** %14, align 8
  %25 = getelementptr inbounds %struct.raw_frag_vec, %struct.raw_frag_vec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %26, %27
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @min(i32 %28, i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %23
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.raw_frag_vec*, %struct.raw_frag_vec** %14, align 8
  %39 = getelementptr inbounds %struct.raw_frag_vec, %struct.raw_frag_vec* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @memcpy(i8* %37, i64 %44, i32 %45)
  br label %65

47:                                               ; preds = %23
  %48 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.raw_frag_vec*, %struct.raw_frag_vec** %14, align 8
  %52 = getelementptr inbounds %struct.raw_frag_vec, %struct.raw_frag_vec* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @csum_partial_copy_nocheck(i64 %57, i8* %58, i32 %59, i32 0)
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @csum_block_add(i32 %50, i32 %60, i32 %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %47, %36
  store i32 0, i32* %12, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %9, align 8
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %11, align 4
  %75 = sub nsw i32 %74, %73
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %65
  store i32 0, i32* %7, align 4
  br label %95

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79, %6
  %81 = load %struct.raw_frag_vec*, %struct.raw_frag_vec** %14, align 8
  %82 = getelementptr inbounds %struct.raw_frag_vec, %struct.raw_frag_vec* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sub nsw i32 %84, %83
  store i32 %85, i32* %10, align 4
  %86 = load %struct.raw_frag_vec*, %struct.raw_frag_vec** %14, align 8
  %87 = getelementptr inbounds %struct.raw_frag_vec, %struct.raw_frag_vec* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %94 = call i32 @ip_generic_getfrag(i32 %88, i8* %89, i32 %90, i32 %91, i32 %92, %struct.sk_buff* %93)
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %80, %78
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @csum_block_add(i32, i32, i32) #1

declare dso_local i32 @csum_partial_copy_nocheck(i64, i8*, i32, i32) #1

declare dso_local i32 @ip_generic_getfrag(i32, i8*, i32, i32, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
